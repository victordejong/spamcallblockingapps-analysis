package com.amazonaws.logging;

import android.util.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/AndroidLog.class */
public class AndroidLog implements Log {

    /* renamed from: a  reason: collision with root package name */
    String f6651a;

    /* renamed from: b  reason: collision with root package name */
    LogFactory.Level f6652b;

    public /* synthetic */ AndroidLog() {
    }

    public AndroidLog(String str) {
        this.f6652b = null;
        this.f6651a = str;
    }

    private LogFactory.Level e() {
        LogFactory.Level level = this.f6652b;
        return level != null ? level : LogFactory.a();
    }

    @Override // com.amazonaws.logging.Log
    public final void a(Object obj) {
        if (e() != null) {
            e().getValue();
            LogFactory.Level.TRACE.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void a(Object obj, Throwable th) {
        if (e() != null) {
            e().getValue();
            LogFactory.Level.DEBUG.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean a() {
        if (Log.isLoggable(this.f6651a, 3)) {
            return e() == null || e().getValue() <= LogFactory.Level.DEBUG.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public final void b(Object obj) {
        if (e() != null) {
            e().getValue();
            LogFactory.Level.DEBUG.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void b(Object obj, Throwable th) {
        if (e() == null || e().getValue() <= LogFactory.Level.WARN.getValue()) {
            Log.w(this.f6651a, obj.toString(), th);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean b() {
        if (Log.isLoggable(this.f6651a, 6)) {
            return e() == null || e().getValue() <= LogFactory.Level.ERROR.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public final void c(Object obj) {
        if (e() != null) {
            e().getValue();
            LogFactory.Level.INFO.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    public final void c(Object obj, Throwable th) {
        if (e() == null || e().getValue() <= LogFactory.Level.ERROR.getValue()) {
            Log.e(this.f6651a, obj.toString(), th);
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean c() {
        if (Log.isLoggable(this.f6651a, 4)) {
            return e() == null || e().getValue() <= LogFactory.Level.INFO.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public final void d(Object obj) {
        if (e() == null || e().getValue() <= LogFactory.Level.WARN.getValue()) {
            Log.w(this.f6651a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public final boolean d() {
        if (Log.isLoggable(this.f6651a, 2)) {
            return e() == null || e().getValue() <= LogFactory.Level.TRACE.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    public final void e(Object obj) {
        if (e() == null || e().getValue() <= LogFactory.Level.ERROR.getValue()) {
            Log.e(this.f6651a, obj.toString());
        }
    }
}
