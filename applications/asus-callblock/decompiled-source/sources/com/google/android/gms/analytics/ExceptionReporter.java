package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.internal.zzae;
import java.lang.Thread;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/ExceptionReporter.class */
public class ExceptionReporter implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    final Thread.UncaughtExceptionHandler f3778a;

    /* renamed from: b  reason: collision with root package name */
    private final Tracker f3779b;
    private final Context c;
    private ExceptionParser d;
    private GoogleAnalytics e;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (context == null) {
            throw new NullPointerException("context cannot be null");
        } else {
            this.f3778a = uncaughtExceptionHandler;
            this.f3779b = tracker;
            this.d = new StandardExceptionParser(context, new ArrayList());
            this.c = context.getApplicationContext();
            String valueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
            zzae.v(valueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(valueOf) : new String("ExceptionReporter created, original handler is "));
        }
    }

    public ExceptionParser getExceptionParser() {
        return this.d;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.d = exceptionParser;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String str = "UncaughtException";
        if (this.d != null) {
            str = this.d.getDescription(thread != null ? thread.getName() : null, th);
        }
        String valueOf = String.valueOf(str);
        zzae.v(valueOf.length() != 0 ? "Reporting uncaught exception: ".concat(valueOf) : new String("Reporting uncaught exception: "));
        this.f3779b.send(new HitBuilders.ExceptionBuilder().setDescription(str).setFatal(true).build());
        if (this.e == null) {
            this.e = GoogleAnalytics.getInstance(this.c);
        }
        GoogleAnalytics googleAnalytics = this.e;
        googleAnalytics.dispatchLocalHits();
        ((zza) googleAnalytics).f3889b.zzkw().zzlK();
        if (this.f3778a != null) {
            zzae.v("Passing exception to the original handler");
            this.f3778a.uncaughtException(thread, th);
        }
    }
}
