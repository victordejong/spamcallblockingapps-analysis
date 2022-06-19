package androidx.core.app;

import android.app.RemoteInput;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class C0479k {

    /* renamed from: a */
    private final String f1851a;

    /* renamed from: b */
    private final CharSequence f1852b;

    /* renamed from: c */
    private final CharSequence[] f1853c;

    /* renamed from: d */
    private final boolean f1854d;

    /* renamed from: e */
    private final Bundle f1855e;

    /* renamed from: f */
    private final Set<String> f1856f;

    /* renamed from: a */
    static RemoteInput m20748a(C0479k c0479k) {
        return new RemoteInput.Builder(c0479k.m20749a()).setLabel(c0479k.m20746b()).setChoices(c0479k.m20745c()).setAllowFreeFormInput(c0479k.m20743e()).addExtras(c0479k.m20742f()).build();
    }

    /* renamed from: a */
    public static RemoteInput[] m20747a(C0479k[] c0479kArr) {
        RemoteInput[] remoteInputArr;
        if (c0479kArr == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[c0479kArr.length];
            for (int i = 0; i < c0479kArr.length; i++) {
                remoteInputArr2[i] = m20748a(c0479kArr[i]);
            }
            remoteInputArr = remoteInputArr2;
        }
        return remoteInputArr;
    }

    /* renamed from: a */
    public String m20749a() {
        return this.f1851a;
    }

    /* renamed from: b */
    public CharSequence m20746b() {
        return this.f1852b;
    }

    /* renamed from: c */
    public CharSequence[] m20745c() {
        return this.f1853c;
    }

    /* renamed from: d */
    public Set<String> m20744d() {
        return this.f1856f;
    }

    /* renamed from: e */
    public boolean m20743e() {
        return this.f1854d;
    }

    /* renamed from: f */
    public Bundle m20742f() {
        return this.f1855e;
    }
}
