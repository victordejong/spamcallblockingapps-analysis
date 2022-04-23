package com.google.android.play.core.review;

import android.os.RemoteException;
import com.google.android.play.core.common.b;
import com.google.android.play.core.internal.c;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.i;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/g.class */
final class g extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p f31414a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f31415b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(j jVar, p pVar, p pVar2) {
        super(pVar);
        this.f31415b = jVar;
        this.f31414a = pVar2;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        h hVar;
        String str;
        String str2;
        try {
            c cVar = this.f31415b.f31420b.e;
            str2 = this.f31415b.f31421c;
            cVar.a(str2, b.a("review"), new i(this.f31415b, this.f31414a));
        } catch (RemoteException e) {
            hVar = j.f31419a;
            str = this.f31415b.f31421c;
            hVar.a(e, "error requesting in-app review for %s", str);
            this.f31414a.b(new RuntimeException(e));
        }
    }
}
