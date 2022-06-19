package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
/* renamed from: com.google.firebase.iid.ac */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ac.class */
public final class RunnableC4942ac implements Runnable {

    /* renamed from: a */
    private final long f21075a;

    /* renamed from: b */
    private final PowerManager.WakeLock f21076b = ((PowerManager) m1972a().getSystemService("power")).newWakeLock(1, "fiid-sync");

    /* renamed from: c */
    private final FirebaseInstanceId f21077c;

    public RunnableC4942ac(FirebaseInstanceId firebaseInstanceId, long j) {
        this.f21077c = firebaseInstanceId;
        this.f21075a = j;
        this.f21076b.setReferenceCounted(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
        if (r0.equals(r0.f21194a) == false) goto L21;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m1970c() {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.RunnableC4942ac.m1970c():boolean");
    }

    /* renamed from: a */
    public final Context m1972a() {
        return this.f21077c.m1994b().m2160a();
    }

    /* renamed from: b */
    public final boolean m1971b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m1972a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public final void run() {
        if (C4996w.m1899a().m1898a(m1972a())) {
            this.f21076b.acquire();
        }
        try {
            try {
                this.f21077c.m1995a(true);
                if (!this.f21077c.m1985h()) {
                    this.f21077c.m1995a(false);
                    if (!C4996w.m1899a().m1898a(m1972a())) {
                        return;
                    }
                    this.f21076b.release();
                } else if (C4996w.m1899a().m1896b(m1972a()) && !m1971b()) {
                    new C4941ab(this).m1973a();
                    if (!C4996w.m1899a().m1898a(m1972a())) {
                        return;
                    }
                    this.f21076b.release();
                } else {
                    if (m1970c()) {
                        this.f21077c.m1995a(false);
                    } else {
                        this.f21077c.m2007a(this.f21075a);
                    }
                    if (!C4996w.m1899a().m1898a(m1972a())) {
                        return;
                    }
                    this.f21076b.release();
                }
            } catch (IOException e) {
                String message = e.getMessage();
                Log.e("FirebaseInstanceId", new StringBuilder(String.valueOf(message).length() + 93).append("Topic sync or token retrieval failed on hard failure exceptions: ").append(message).append(". Won't retry the operation.").toString());
                this.f21077c.m1995a(false);
                if (!C4996w.m1899a().m1898a(m1972a())) {
                    return;
                }
                this.f21076b.release();
            }
        } catch (Throwable th) {
            if (C4996w.m1899a().m1898a(m1972a())) {
                this.f21076b.release();
            }
            throw th;
        }
    }
}
