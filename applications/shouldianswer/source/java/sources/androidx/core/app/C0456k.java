package androidx.core.app;

import android.app.RemoteInput;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class C0456k {

    /* renamed from: a */
    private final String f1700a;

    /* renamed from: b */
    private final CharSequence f1701b;

    /* renamed from: c */
    private final CharSequence[] f1702c;

    /* renamed from: d */
    private final boolean f1703d;

    /* renamed from: e */
    private final Bundle f1704e;

    /* renamed from: f */
    private final Set<String> f1705f;

    /* renamed from: a */
    static RemoteInput m6571a(C0456k c0456k) {
        return new RemoteInput.Builder(c0456k.m6572a()).setLabel(c0456k.m6569b()).setChoices(c0456k.m6568c()).setAllowFreeFormInput(c0456k.m6565f()).addExtras(c0456k.m6564g()).build();
    }

    /* renamed from: a */
    public static RemoteInput[] m6570a(C0456k[] c0456kArr) {
        if (c0456kArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[c0456kArr.length];
        for (int i = 0; i < c0456kArr.length; i++) {
            remoteInputArr[i] = m6571a(c0456kArr[i]);
        }
        return remoteInputArr;
    }

    /* renamed from: a */
    public String m6572a() {
        return this.f1700a;
    }

    /* renamed from: b */
    public CharSequence m6569b() {
        return this.f1701b;
    }

    /* renamed from: c */
    public CharSequence[] m6568c() {
        return this.f1702c;
    }

    /* renamed from: d */
    public Set<String> m6567d() {
        return this.f1705f;
    }

    /* renamed from: e */
    public boolean m6566e() {
        return !m6565f() && (m6568c() == null || m6568c().length == 0) && m6567d() != null && !m6567d().isEmpty();
    }

    /* renamed from: f */
    public boolean m6565f() {
        return this.f1703d;
    }

    /* renamed from: g */
    public Bundle m6564g() {
        return this.f1704e;
    }
}
