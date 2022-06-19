package com.amazonaws.logging;

import android.util.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/AndroidLog.class */
public class AndroidLog implements Log {

    /* renamed from: a */
    String f12105a;

    /* renamed from: b */
    LogFactory.Level f12106b;

    public /* synthetic */ AndroidLog() {
    }

    public AndroidLog(String str) {
        this.f12106b = null;
        this.f12105a = str;
    }

    /* renamed from: e */
    private LogFactory.Level m38602e() {
        LogFactory.Level level = this.f12106b;
        return level != null ? level : LogFactory.m38585a();
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final void mo38596a(Object obj) {
        if (m38602e() != null) {
            m38602e().getValue();
            LogFactory.Level.TRACE.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final void mo38595a(Object obj, Throwable th) {
        if (m38602e() != null) {
            m38602e().getValue();
            LogFactory.Level.DEBUG.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: a */
    public final boolean mo38597a() {
        if (Log.isLoggable(this.f12105a, 3)) {
            return m38602e() == null || m38602e().getValue() <= LogFactory.Level.DEBUG.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final void mo38593b(Object obj) {
        if (m38602e() != null) {
            m38602e().getValue();
            LogFactory.Level.DEBUG.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final void mo38592b(Object obj, Throwable th) {
        if (m38602e() == null || m38602e().getValue() <= LogFactory.Level.WARN.getValue()) {
            Log.w(this.f12105a, obj.toString(), th);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: b */
    public final boolean mo38594b() {
        if (Log.isLoggable(this.f12105a, 6)) {
            return m38602e() == null || m38602e().getValue() <= LogFactory.Level.ERROR.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final void mo38590c(Object obj) {
        if (m38602e() != null) {
            m38602e().getValue();
            LogFactory.Level.INFO.getValue();
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final void mo38589c(Object obj, Throwable th) {
        if (m38602e() == null || m38602e().getValue() <= LogFactory.Level.ERROR.getValue()) {
            Log.e(this.f12105a, obj.toString(), th);
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: c */
    public final boolean mo38591c() {
        if (Log.isLoggable(this.f12105a, 4)) {
            return m38602e() == null || m38602e().getValue() <= LogFactory.Level.INFO.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: d */
    public final void mo38587d(Object obj) {
        if (m38602e() == null || m38602e().getValue() <= LogFactory.Level.WARN.getValue()) {
            Log.w(this.f12105a, obj.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: d */
    public final boolean mo38588d() {
        if (Log.isLoggable(this.f12105a, 2)) {
            return m38602e() == null || m38602e().getValue() <= LogFactory.Level.TRACE.getValue();
        }
        return false;
    }

    @Override // com.amazonaws.logging.Log
    /* renamed from: e */
    public final void mo38586e(Object obj) {
        if (m38602e() == null || m38602e().getValue() <= LogFactory.Level.ERROR.getValue()) {
            Log.e(this.f12105a, obj.toString());
        }
    }
}
