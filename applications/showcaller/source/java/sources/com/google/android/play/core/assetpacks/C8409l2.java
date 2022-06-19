package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8480d0;
import com.google.android.play.core.internal.C8513r0;
/* renamed from: com.google.android.play.core.assetpacks.l2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/l2.class */
public final class C8409l2 implements AbstractC8515s0<?> {

    /* renamed from: a */
    private final AbstractC8515s0 f37842a;

    /* renamed from: b */
    private final AbstractC8515s0 f37843b;

    /* renamed from: c */
    private final /* synthetic */ int f37844c = 0;

    public C8409l2(AbstractC8515s0<C8385f2> abstractC8515s0, AbstractC8515s0<Context> abstractC8515s02) {
        this.f37842a = abstractC8515s0;
        this.f37843b = abstractC8515s02;
    }

    public C8409l2(AbstractC8515s0<Context> abstractC8515s0, AbstractC8515s0<C8446v> abstractC8515s02, byte[] bArr) {
        this.f37843b = abstractC8515s0;
        this.f37842a = abstractC8515s02;
    }

    public C8409l2(AbstractC8515s0<Context> abstractC8515s0, AbstractC8515s0<C8415n0> abstractC8515s02, char[] cArr) {
        this.f37842a = abstractC8515s0;
        this.f37843b = abstractC8515s02;
    }

    public C8409l2(AbstractC8515s0<C8446v> abstractC8515s0, AbstractC8515s0<AbstractC8433r2> abstractC8515s02, int[] iArr) {
        this.f37843b = abstractC8515s0;
        this.f37842a = abstractC8515s02;
    }

    public C8409l2(AbstractC8515s0<Context> abstractC8515s0, AbstractC8515s0<C8436s1> abstractC8515s02, short[] sArr) {
        this.f37842a = abstractC8515s0;
        this.f37843b = abstractC8515s02;
    }

    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo3471a() {
        int i = this.f37844c;
        if (i == 0) {
            Object mo3471a = this.f37842a.mo3471a();
            Context mo3471a2 = ((C8417n2) this.f37843b).mo3471a();
            C8385f2 c8385f2 = (C8385f2) mo3471a;
            C8480d0.m3544h(mo3471a2.getPackageManager(), new ComponentName(mo3471a2.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
            C8480d0.m3544h(mo3471a2.getPackageManager(), new ComponentName(mo3471a2.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
            PlayCoreDialogWrapperActivity.m3580a(mo3471a2);
            C8480d0.m3541k(c8385f2);
            return c8385f2;
        } else if (i == 1) {
            return new BinderC8362a0(((C8417n2) this.f37843b).mo3471a(), (C8446v) this.f37842a.mo3471a());
        } else {
            if (i == 2) {
                return new C8418o(((C8417n2) this.f37842a).mo3471a(), (C8415n0) this.f37843b.mo3471a());
            }
            if (i == 3) {
                return new C8446v(((C8417n2) this.f37842a).mo3471a(), (C8436s1) this.f37843b.mo3471a());
            }
            return new C8444u1((C8446v) this.f37843b.mo3471a(), C8513r0.m3472c(this.f37842a));
        }
    }
}
