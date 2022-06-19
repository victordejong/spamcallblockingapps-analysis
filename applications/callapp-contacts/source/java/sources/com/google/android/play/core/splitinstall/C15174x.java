package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.splitinstall.p378a.C15124a;
import com.google.android.play.core.tasks.AbstractC15180d;
import java.io.File;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.x */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/x.class */
public final class C15174x implements AbstractC15123a {

    /* renamed from: a */
    private final AbstractC15037ba<C15145ak> f54998a;

    /* renamed from: b */
    private final AbstractC15037ba<C15124a> f54999b;

    /* renamed from: c */
    private final AbstractC15037ba<File> f55000c;

    public C15174x(AbstractC15037ba<C15145ak> abstractC15037ba, AbstractC15037ba<C15124a> abstractC15037ba2, AbstractC15037ba<File> abstractC15037ba3) {
        this.f54998a = abstractC15037ba;
        this.f54999b = abstractC15037ba2;
        this.f55000c = abstractC15037ba3;
    }

    /* renamed from: b */
    private final AbstractC15123a m9336b() {
        return (AbstractC15123a) (this.f55000c.mo9335a() == null ? this.f54998a : this.f54999b).mo9335a();
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final AbstractC15180d<AbstractC15152c> mo9339a(int i) {
        return m9336b().mo9339a(i);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final AbstractC15180d<Integer> mo9338a(C15150b c15150b) {
        return m9336b().mo9338a(c15150b);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final Set<String> mo9340a() {
        return m9336b().mo9340a();
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final boolean mo9337a(AbstractC15152c abstractC15152c, Activity activity, int i) throws IntentSender.SendIntentException {
        return m9336b().mo9337a(abstractC15152c, activity, i);
    }
}
