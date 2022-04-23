package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class C0260m {
    /* renamed from: a */
    static RemoteInput m13584a(C0260m mVar) {
        RemoteInput.Builder addExtras = new RemoteInput.Builder(mVar.m13576i()).setLabel(mVar.m13577h()).setChoices(mVar.m13580e()).setAllowFreeFormInput(mVar.m13582c()).addExtras(mVar.m13578g());
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(mVar.m13579f());
        }
        return addExtras.build();
    }

    /* renamed from: b */
    static RemoteInput[] m13583b(C0260m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            remoteInputArr[i] = m13584a(mVarArr[i]);
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
