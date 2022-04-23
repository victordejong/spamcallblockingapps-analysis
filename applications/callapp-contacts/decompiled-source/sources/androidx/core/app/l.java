package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    final String f1773a;

    /* renamed from: b  reason: collision with root package name */
    final CharSequence f1774b;

    /* renamed from: c  reason: collision with root package name */
    final CharSequence[] f1775c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f1776d;
    final Bundle e;
    final Set<String> f;
    private final int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.f1773a = str;
        this.f1774b = charSequence;
        this.f1775c = charSequenceArr;
        this.f1776d = z;
        this.g = i;
        this.e = bundle;
        this.f = set;
        if (i == 2 && !z) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteInput[] a(l[] lVarArr) {
        if (lVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[lVarArr.length];
        for (int i = 0; i < lVarArr.length; i++) {
            l lVar = lVarArr[i];
            RemoteInput.Builder addExtras = new RemoteInput.Builder(lVar.f1773a).setLabel(lVar.f1774b).setChoices(lVar.f1775c).setAllowFreeFormInput(lVar.f1776d).addExtras(lVar.e);
            if (Build.VERSION.SDK_INT >= 29) {
                addExtras.setEditChoicesBeforeSending(lVar.g);
            }
            remoteInputArr[i] = addExtras.build();
        }
        return remoteInputArr;
    }
}
