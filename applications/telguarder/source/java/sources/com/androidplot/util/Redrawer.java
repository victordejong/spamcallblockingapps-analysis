package com.androidplot.util;

import android.util.Log;
import com.androidplot.Plot;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/Redrawer.class */
public class Redrawer implements Runnable {
    private static final int ONE_SECOND_MS = 1000;
    private static final String TAG = "com.androidplot.util.Redrawer";
    private boolean keepAlive;
    private boolean keepRunning;
    private List<WeakReference<Plot>> plots;
    private long sleepTime;
    private Thread thread;

    public Redrawer(Plot plot, float f, boolean z) {
        this(Collections.singletonList(plot), f, z);
    }

    public Redrawer(List<Plot> list, float f, boolean z) {
        this.plots = new ArrayList(list.size());
        for (Plot plot : list) {
            this.plots.add(new WeakReference<>(plot));
        }
        setMaxRefreshRate(f);
        Thread thread = new Thread(this, "Androidplot Redrawer");
        this.thread = thread;
        thread.start();
        if (z) {
            start();
        }
    }

    public void finish() {
        synchronized (this) {
            this.keepRunning = false;
            this.keepAlive = false;
            notify();
        }
    }

    public void pause() {
        synchronized (this) {
            this.keepRunning = false;
            notify();
            Log.d(TAG, "Redrawer paused.");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.keepAlive = true;
        while (this.keepAlive) {
            try {
                if (this.keepRunning) {
                    for (WeakReference<Plot> weakReference : this.plots) {
                        weakReference.get().redraw();
                    }
                    synchronized (this) {
                        wait(this.sleepTime);
                    }
                } else {
                    synchronized (this) {
                        wait();
                    }
                }
            } catch (InterruptedException e) {
            } catch (Throwable th) {
                Log.d(TAG, "Redrawer thread exited.");
                throw th;
            }
        }
        Log.d(TAG, "Redrawer thread exited.");
    }

    public void setMaxRefreshRate(float f) {
        this.sleepTime = 1000.0f / f;
        String str = TAG;
        Log.d(str, "Set Redrawer refresh rate to " + f + "( " + this.sleepTime + " ms)");
    }

    public void start() {
        synchronized (this) {
            this.keepRunning = true;
            notify();
            Log.d(TAG, "Redrawer started.");
        }
    }
}
