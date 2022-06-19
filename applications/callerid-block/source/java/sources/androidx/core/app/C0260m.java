package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0260m {
    /* renamed from: a */
    static RemoteInput m13584a(C0260m c0260m) {
        RemoteInput.Builder addExtras = new RemoteInput.Builder(c0260m.m13576i()).setLabel(c0260m.m13577h()).setChoices(c0260m.m13580e()).setAllowFreeFormInput(c0260m.m13582c()).addExtras(c0260m.m13578g());
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(c0260m.m13579f());
        }
        return addExtras.build();
    }

    /* renamed from: b */
    static RemoteInput[] m13583b(C0260m[] c0260mArr) {
        if (c0260mArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[c0260mArr.length];
        for (int i = 0; i < c0260mArr.length; i++) {
            remoteInputArr[i] = m13584a(c0260mArr[i]);
        }
        return remoteInputArr;
    }

    /* renamed from: c */
    public boolean m13582c() {
        throw null;
    }

    /* renamed from: d */
    public Set<String> m13581d() {
        throw null;
    }

    /* renamed from: e */
    public CharSequence[] m13580e() {
        throw null;
    }

    /* renamed from: f */
    public int m13579f() {
        throw null;
    }

    /* renamed from: g */
    public Bundle m13578g() {
        throw null;
    }

    /* renamed from: h */
    public CharSequence m13577h() {
        throw null;
    }

    /* renamed from: i */
    public String m13576i() {
        throw null;
    }
}
