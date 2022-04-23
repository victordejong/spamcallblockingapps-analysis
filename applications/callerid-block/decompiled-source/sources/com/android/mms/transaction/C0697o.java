package com.android.mms.transaction;

import android.os.Bundle;
/* renamed from: com.android.mms.transaction.o */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/o.class */
public class C0697o {

    /* renamed from: a */
    private final Bundle f3355a;

    private C0697o(int i) {
        Bundle bundle = new Bundle();
        this.f3355a = bundle;
        bundle.putInt("type", i);
    }

    public C0697o(int i, String str) {
        this(i);
        this.f3355a.putString("uri", str);
    }

    public C0697o(Bundle bundle) {
        this.f3355a = bundle;
    }

    /* renamed from: a */
    public String m11382a() {
        return this.f3355a.getString("mmsc-url");
    }

    /* renamed from: b */
    public String m11381b() {
        return this.f3355a.getString("proxy-address");
    }

    /* renamed from: c */
    public int m11380c() {
        return this.f3355a.getInt("proxy-port");
    }

    /* renamed from: d */
    public byte[] m11379d() {
        return this.f3355a.getByteArray("mms-push-data");
    }

    /* renamed from: e */
    public int m11378e() {
        return this.f3355a.getInt("type");
    }

    /* renamed from: f */
    public String m11377f() {
        return this.f3355a.getString("uri");
    }

    public String toString() {
        return "transactionType: " + m11378e() + " uri: " + m11377f() + " mmscUrl: " + m11382a() + " proxyAddress: " + m11381b() + " proxyPort: " + m11380c();
    }
}
