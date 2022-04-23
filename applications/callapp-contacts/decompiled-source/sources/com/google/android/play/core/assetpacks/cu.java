package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cu.class */
final class cu extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f31263a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31264b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31265c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cu(p pVar, p pVar2, List list, p pVar3) {
        super(pVar2);
        this.f31265c = pVar;
        this.f31263a = list;
        this.f31264b = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle e;
        ArrayList a2 = p.a((Collection) this.f31263a);
        try {
            bx bxVar = (bx) this.f31265c.e.e;
            str = this.f31265c.f31298c;
            e = p.e();
            bxVar.a(str, a2, e, new k(this.f31265c, this.f31264b, (byte[]) null));
        } catch (RemoteException e2) {
            p.f31296a.a(e2, "cancelDownloads(%s)", this.f31263a);
        }
    }
}
