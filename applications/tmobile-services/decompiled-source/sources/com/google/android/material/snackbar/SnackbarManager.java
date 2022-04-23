package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarManager.class */
class SnackbarManager {

    /* renamed from: e */
    private static SnackbarManager f11304e;
    @NonNull

    /* renamed from: a */
    private final Object f11305a = new Object();
    @NonNull

    /* renamed from: b */
    private final Handler f11306b = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            SnackbarManager.this.m9012d((SnackbarRecord) message.obj);
            return true;
        }
    });
    @Nullable

    /* renamed from: c */
    private SnackbarRecord f11307c;
    @Nullable

    /* renamed from: d */
    private SnackbarRecord f11308d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarManager$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo9002a(int i);

        /* renamed from: b */
        void mo9001b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarManager$SnackbarRecord.class */
    public static class SnackbarRecord {
        @NonNull

        /* renamed from: a */
        final WeakReference<Callback> f11310a;

        /* renamed from: b */
        int f11311b;

        /* renamed from: c */
        boolean f11312c;

        /* renamed from: a */
        boolean m9000a(@Nullable Callback callback) {
            return callback != null && this.f11310a.get() == callback;
        }
    }

    private SnackbarManager() {
    }

    /* renamed from: a */
    private boolean m9015a(@NonNull SnackbarRecord snackbarRecord, int i) {
        Callback callback = snackbarRecord.f11310a.get();
        if (callback == null) {
            return false;
        }
        this.f11306b.removeCallbacksAndMessages(snackbarRecord);
        callback.mo9002a(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static SnackbarManager m9013c() {
        if (f11304e == null) {
            f11304e = new SnackbarManager();
        }
        return f11304e;
    }

    /* renamed from: f */
    private boolean m9010f(Callback callback) {
        SnackbarRecord snackbarRecord = this.f11307c;
        return snackbarRecord != null && snackbarRecord.m9000a(callback);
    }

    /* renamed from: g */
    private boolean m9009g(Callback callback) {
        SnackbarRecord snackbarRecord = this.f11308d;
        return snackbarRecord != null && snackbarRecord.m9000a(callback);
    }

    /* renamed from: l */
    private void m9004l(@NonNull SnackbarRecord snackbarRecord) {
        int i = snackbarRecord.f11311b;
        if (i != -2) {
            if (i <= 0) {
                i = i == -1 ? 1500 : 2750;
            }
            this.f11306b.removeCallbacksAndMessages(snackbarRecord);
            Handler handler = this.f11306b;
            handler.sendMessageDelayed(Message.obtain(handler, 0, snackbarRecord), i);
        }
    }

    /* renamed from: m */
    private void m9003m() {
        SnackbarRecord snackbarRecord = this.f11308d;
        if (snackbarRecord != null) {
            this.f11307c = snackbarRecord;
            this.f11308d = null;
            Callback callback = snackbarRecord.f11310a.get();
            if (callback != null) {
                callback.mo9001b();
            } else {
                this.f11307c = null;
            }
        }
    }

    /* renamed from: b */
    public void m9014b(Callback callback, int i) {
        synchronized (this.f11305a) {
            if (m9010f(callback)) {
                m9015a(this.f11307c, i);
            } else if (m9009g(callback)) {
                m9015a(this.f11308d, i);
            }
        }
    }

    /* renamed from: d */
    void m9012d(@NonNull SnackbarRecord snackbarRecord) {
        synchronized (this.f11305a) {
            if (this.f11307c == snackbarRecord || this.f11308d == snackbarRecord) {
                m9015a(snackbarRecord, 2);
            }
        }
    }

    /* renamed from: e */
    public boolean m9011e(Callback callback) {
        boolean z;
        synchronized (this.f11305a) {
            if (!m9010f(callback) && !m9009g(callback)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public void m9008h(Callback callback) {
        synchronized (this.f11305a) {
            if (m9010f(callback)) {
                this.f11307c = null;
                if (this.f11308d != null) {
                    m9003m();
                }
            }
        }
    }

    /* renamed from: i */
    public void m9007i(Callback callback) {
        synchronized (this.f11305a) {
            if (m9010f(callback)) {
                m9004l(this.f11307c);
            }
        }
    }

    /* renamed from: j */
    public void m9006j(Callback callback) {
        synchronized (this.f11305a) {
            if (m9010f(callback) && !this.f11307c.f11312c) {
                this.f11307c.f11312c = true;
                this.f11306b.removeCallbacksAndMessages(this.f11307c);
            }
        }
    }

    /* renamed from: k */
    public void m9005k(Callback callback) {
        synchronized (this.f11305a) {
            if (m9010f(callback) && this.f11307c.f11312c) {
                this.f11307c.f11312c = false;
                m9004l(this.f11307c);
            }
        }
    }
}
