package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.wearable.internal.af */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/af.class */
public final class BinderC14237af extends AbstractBinderC14265bg {

    /* renamed from: a */
    private final Object f52220a = new Object();

    /* renamed from: b */
    private AbstractC14238ag f52221b;

    /* renamed from: c */
    private C14340m f52222c;

    @Override // com.google.android.gms.wearable.internal.AbstractC14264bf
    /* renamed from: a */
    public final void mo11435a(int i, int i2) {
        AbstractC14238ag abstractC14238ag;
        C14340m c14340m;
        synchronized (this.f52220a) {
            abstractC14238ag = this.f52221b;
            c14340m = new C14340m(i, i2);
            this.f52222c = c14340m;
        }
        if (abstractC14238ag != null) {
            abstractC14238ag.mo11439a(c14340m);
        }
    }

    /* renamed from: a */
    public final void m11440a(AbstractC14238ag abstractC14238ag) {
        C14340m c14340m;
        synchronized (this.f52220a) {
            this.f52221b = (AbstractC14238ag) C12045o.m19162a(abstractC14238ag);
            c14340m = this.f52222c;
        }
        if (c14340m != null) {
            abstractC14238ag.mo11439a(c14340m);
        }
    }
}
