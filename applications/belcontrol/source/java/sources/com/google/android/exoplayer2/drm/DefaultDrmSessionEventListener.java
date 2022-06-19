package com.google.android.exoplayer2.drm;

import android.os.Handler;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionEventListener.class */
public interface DefaultDrmSessionEventListener {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher.class */
    public static final class EventDispatcher {
        private final CopyOnWriteArrayList<HandlerAndListener> listeners = new CopyOnWriteArrayList<>();

        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener.class */
        public static final class HandlerAndListener {
            public final Handler handler;
            public final DefaultDrmSessionEventListener listener;

            public HandlerAndListener(Handler handler, DefaultDrmSessionEventListener defaultDrmSessionEventListener) {
                this.handler = handler;
                this.listener = defaultDrmSessionEventListener;
            }
        }

        public void addListener(Handler handler, DefaultDrmSessionEventListener defaultDrmSessionEventListener) {
            Assertions.checkArgument((handler == null || defaultDrmSessionEventListener == null) ? false : true);
            this.listeners.add(new HandlerAndListener(handler, defaultDrmSessionEventListener));
        }

        public void drmKeysLoaded() {
            Iterator<HandlerAndListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                HandlerAndListener next = it.next();
                final DefaultDrmSessionEventListener defaultDrmSessionEventListener = next.listener;
                next.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener.EventDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        defaultDrmSessionEventListener.onDrmKeysLoaded();
                    }
                });
            }
        }

        public void drmKeysRemoved() {
            Iterator<HandlerAndListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                HandlerAndListener next = it.next();
                final DefaultDrmSessionEventListener defaultDrmSessionEventListener = next.listener;
                next.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener.EventDispatcher.4
                    @Override // java.lang.Runnable
                    public void run() {
                        defaultDrmSessionEventListener.onDrmKeysRemoved();
                    }
                });
            }
        }

        public void drmKeysRestored() {
            Iterator<HandlerAndListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                HandlerAndListener next = it.next();
                final DefaultDrmSessionEventListener defaultDrmSessionEventListener = next.listener;
                next.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener.EventDispatcher.3
                    @Override // java.lang.Runnable
                    public void run() {
                        defaultDrmSessionEventListener.onDrmKeysRestored();
                    }
                });
            }
        }

        public void drmSessionManagerError(final Exception exc) {
            Iterator<HandlerAndListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                HandlerAndListener next = it.next();
                final DefaultDrmSessionEventListener defaultDrmSessionEventListener = next.listener;
                next.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.drm.DefaultDrmSessionEventListener.EventDispatcher.2
                    @Override // java.lang.Runnable
                    public void run() {
                        defaultDrmSessionEventListener.onDrmSessionManagerError(exc);
                    }
                });
            }
        }

        public void removeListener(DefaultDrmSessionEventListener defaultDrmSessionEventListener) {
            Iterator<HandlerAndListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                HandlerAndListener next = it.next();
                if (next.listener == defaultDrmSessionEventListener) {
                    this.listeners.remove(next);
                }
            }
        }
    }

    void onDrmKeysLoaded();

    void onDrmKeysRemoved();

    void onDrmKeysRestored();

    void onDrmSessionManagerError(Exception exc);
}
