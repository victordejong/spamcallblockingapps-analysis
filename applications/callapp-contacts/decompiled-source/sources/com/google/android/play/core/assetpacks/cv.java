package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cv.class */
final class cv extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Map f31266a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31267b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ p f31268c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cv(p pVar, p pVar2, Map map, p pVar3) {
        super(pVar2);
        this.f31268c = pVar;
        this.f31266a = map;
        this.f31267b = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        try {
            bx bxVar = (bx) this.f31268c.e.e;
            str = this.f31268c.f31298c;
            bxVar.a(str, p.b(this.f31266a), new m(this.f31268c, this.f31267b));
        } catch (RemoteException e) {
            p.f31296a.a(e, "syncPacks", new Object[0]);
            this.f31267b.b(new RuntimeException(e));
        }
    }
}
