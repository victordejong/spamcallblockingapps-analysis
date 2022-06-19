package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.internal.C15039bc;
/* renamed from: com.google.android.play.core.assetpacks.cm */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cm.class */
public final class C14966cm implements AbstractC15041be<Object> {

    /* renamed from: a */
    private final AbstractC15041be f54635a;

    /* renamed from: b */
    private final AbstractC15041be f54636b;

    /* renamed from: c */
    private final /* synthetic */ int f54637c = 0;

    public C14966cm(AbstractC15041be<C14961ch> abstractC15041be, AbstractC15041be<Context> abstractC15041be2) {
        this.f54635a = abstractC15041be;
        this.f54636b = abstractC15041be2;
    }

    public C14966cm(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<C14996w> abstractC15041be2, byte[] bArr) {
        this.f54636b = abstractC15041be;
        this.f54635a = abstractC15041be2;
    }

    public C14966cm(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<C14915ap> abstractC15041be2, char[] cArr) {
        this.f54635a = abstractC15041be;
        this.f54636b = abstractC15041be2;
    }

    public C14966cm(AbstractC15041be<C14996w> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, int[] iArr) {
        this.f54636b = abstractC15041be;
        this.f54635a = abstractC15041be2;
    }

    public C14966cm(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<C14947bu> abstractC15041be2, short[] sArr) {
        this.f54635a = abstractC15041be;
        this.f54636b = abstractC15041be2;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ Object mo9335a() {
        int i = this.f54637c;
        if (i == 0) {
            Object mo9335a = this.f54635a.mo9335a();
            Context m9701a = C14968co.m9701a(((C14968co) this.f54636b).f54641a);
            C14961ch c14961ch = (C14961ch) mo9335a;
            C15017ah.m9606a(m9701a.getPackageManager(), new ComponentName(m9701a.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
            C15017ah.m9606a(m9701a.getPackageManager(), new ComponentName(m9701a.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
            PlayCoreDialogWrapperActivity.m9635a(m9701a);
            C15017ah.m9600a(c14961ch);
            return c14961ch;
        } else if (i == 1) {
            return new BinderC14901ab(C14968co.m9701a(((C14968co) this.f54636b).f54641a), (C14996w) this.f54635a.mo9335a());
        } else {
            if (i == 2) {
                return new C14989p(C14968co.m9701a(((C14968co) this.f54635a).f54641a), (C14915ap) this.f54636b.mo9335a());
            }
            if (i == 3) {
                return new C14996w(C14968co.m9701a(((C14968co) this.f54635a).f54641a), (C14947bu) this.f54636b.mo9335a());
            }
            return new C14949bw((C14996w) this.f54636b.mo9335a(), C15039bc.m9573b(this.f54635a));
        }
    }
}
