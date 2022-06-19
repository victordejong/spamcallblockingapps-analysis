package p000;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* renamed from: d8 */
/* loaded from: classes-dex2jar.jar:d8.class */
public final class C1281d8 {
    /* renamed from: a */
    public static RemoteInput m2785a(C1281d8 c1281d8) {
        RemoteInput.Builder addExtras = new RemoteInput.Builder(c1281d8.m2777i()).setLabel(c1281d8.m2778h()).setChoices(c1281d8.m2781e()).setAllowFreeFormInput(c1281d8.m2783c()).addExtras(c1281d8.m2779g());
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(c1281d8.m2780f());
        }
        return addExtras.build();
    }

    /* renamed from: b */
    public static RemoteInput[] m2784b(C1281d8[] c1281d8Arr) {
        if (c1281d8Arr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[c1281d8Arr.length];
        for (int i = 0; i < c1281d8Arr.length; i++) {
            remoteInputArr[i] = m2785a(c1281d8Arr[i]);
        }
        return remoteInputArr;
    }

    /* renamed from: c */
    public boolean m2783c() {
        throw null;
    }

    /* renamed from: d */
    public Set<String> m2782d() {
        throw null;
    }

    /* renamed from: e */
    public CharSequence[] m2781e() {
        throw null;
    }

    /* renamed from: f */
    public int m2780f() {
        throw null;
    }

    /* renamed from: g */
    public Bundle m2779g() {
        throw null;
    }

    /* renamed from: h */
    public CharSequence m2778h() {
        throw null;
    }

    /* renamed from: i */
    public String m2777i() {
        throw null;
    }
}
