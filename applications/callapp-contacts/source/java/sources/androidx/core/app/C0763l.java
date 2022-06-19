package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* renamed from: androidx.core.app.l */
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public final class C0763l {

    /* renamed from: a */
    final String f3414a;

    /* renamed from: b */
    final CharSequence f3415b;

    /* renamed from: c */
    final CharSequence[] f3416c;

    /* renamed from: d */
    final boolean f3417d;

    /* renamed from: e */
    final Bundle f3418e;

    /* renamed from: f */
    final Set<String> f3419f;

    /* renamed from: g */
    private final int f3420g;

    public C0763l(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.f3414a = str;
        this.f3415b = charSequence;
        this.f3416c = charSequenceArr;
        this.f3417d = z;
        this.f3420g = i;
        this.f3418e = bundle;
        this.f3419f = set;
        if (i != 2 || z) {
            return;
        }
        throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
    }

    /* renamed from: a */
    public static RemoteInput[] m44534a(C0763l[] c0763lArr) {
        if (c0763lArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[c0763lArr.length];
        for (int i = 0; i < c0763lArr.length; i++) {
            C0763l c0763l = c0763lArr[i];
            RemoteInput.Builder addExtras = new RemoteInput.Builder(c0763l.f3414a).setLabel(c0763l.f3415b).setChoices(c0763l.f3416c).setAllowFreeFormInput(c0763l.f3417d).addExtras(c0763l.f3418e);
            if (Build.VERSION.SDK_INT >= 29) {
                addExtras.setEditChoicesBeforeSending(c0763l.f3420g);
            }
            remoteInputArr[i] = addExtras.build();
        }
        return remoteInputArr;
    }
}
