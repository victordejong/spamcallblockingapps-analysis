package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.ak;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.tasks.p;
import java.util.ArrayList;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/i.class */
public final class i extends com.google.android.play.core.internal.i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Collection f31526a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Collection f31527b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31528c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ n f31529d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(n nVar, p pVar, Collection collection, Collection collection2, p pVar2) {
        super(pVar);
        this.f31529d = nVar;
        this.f31526a = collection;
        this.f31527b = collection2;
        this.f31528c = pVar2;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        h hVar;
        String str;
        ArrayList a2 = n.a(this.f31526a);
        a2.addAll(n.b(this.f31527b));
        try {
            ak akVar = this.f31529d.f31539a.e;
            str = this.f31529d.f31540d;
            akVar.a(str, a2, n.a(), new l(this.f31529d, this.f31528c));
        } catch (RemoteException e) {
            hVar = n.f31537b;
            hVar.a(e, "startInstall(%s,%s)", this.f31526a, this.f31527b);
            this.f31528c.b(new RuntimeException(e));
        }
    }
}
