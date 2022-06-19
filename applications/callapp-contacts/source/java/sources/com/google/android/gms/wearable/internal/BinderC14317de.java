package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.AbstractC14355k;
import java.util.List;
/* renamed from: com.google.android.gms.wearable.internal.de */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/de.class */
public final class BinderC14317de<T> extends AbstractBinderC14269bk {

    /* renamed from: a */
    final IntentFilter[] f52271a;

    /* renamed from: b */
    final String f52272b;

    /* renamed from: c */
    private C11899i<Object> f52273c;

    /* renamed from: d */
    private C11899i<Object> f52274d;

    /* renamed from: e */
    private C11899i<Object> f52275e;

    /* renamed from: f */
    private C11899i<AbstractC14355k.AbstractC14356a> f52276f;

    /* renamed from: g */
    private C11899i<Object> f52277g;

    /* renamed from: h */
    private C11899i<Object> f52278h;

    /* renamed from: i */
    private C11899i<AbstractC14226f.AbstractC14227a> f52279i;

    /* renamed from: j */
    private C11899i<AbstractC14209a.AbstractC14210a> f52280j;

    private BinderC14317de(IntentFilter[] intentFilterArr, String str) {
        this.f52271a = (IntentFilter[]) C12045o.m19162a(intentFilterArr);
        this.f52272b = str;
    }

    /* renamed from: a */
    public static BinderC14317de<AbstractC14226f.AbstractC14227a> m11386a(C11899i<AbstractC14226f.AbstractC14227a> c11899i, String str, IntentFilter[] intentFilterArr) {
        BinderC14317de<AbstractC14226f.AbstractC14227a> binderC14317de = new BinderC14317de<>(intentFilterArr, (String) C12045o.m19162a(str));
        ((BinderC14317de) binderC14317de).f52279i = (C11899i) C12045o.m19162a(c11899i);
        return binderC14317de;
    }

    /* renamed from: a */
    public static BinderC14317de<AbstractC14355k.AbstractC14356a> m11385a(C11899i<AbstractC14355k.AbstractC14356a> c11899i, IntentFilter[] intentFilterArr) {
        BinderC14317de<AbstractC14355k.AbstractC14356a> binderC14317de = new BinderC14317de<>(intentFilterArr, null);
        ((BinderC14317de) binderC14317de).f52276f = (C11899i) C12045o.m19162a(c11899i);
        return binderC14317de;
    }

    /* renamed from: a */
    private static void m11387a(C11899i<?> c11899i) {
        if (c11899i != null) {
            c11899i.m19324a();
        }
    }

    /* renamed from: b */
    public static BinderC14317de<AbstractC14226f.AbstractC14227a> m11376b(C11899i<AbstractC14226f.AbstractC14227a> c11899i, IntentFilter[] intentFilterArr) {
        BinderC14317de<AbstractC14226f.AbstractC14227a> binderC14317de = new BinderC14317de<>(intentFilterArr, null);
        ((BinderC14317de) binderC14317de).f52279i = (C11899i) C12045o.m19162a(c11899i);
        return binderC14317de;
    }

    /* renamed from: c */
    public static BinderC14317de<AbstractC14209a.AbstractC14210a> m11374c(C11899i<AbstractC14209a.AbstractC14210a> c11899i, IntentFilter[] intentFilterArr) {
        BinderC14317de<AbstractC14209a.AbstractC14210a> binderC14317de = new BinderC14317de<>(intentFilterArr, null);
        ((BinderC14317de) binderC14317de).f52280j = (C11899i) C12045o.m19162a(c11899i);
        return binderC14317de;
    }

    /* renamed from: a */
    public final void m11388a() {
        this.f52273c = null;
        this.f52274d = null;
        m11387a(this.f52275e);
        this.f52275e = null;
        m11387a(this.f52276f);
        this.f52276f = null;
        this.f52277g = null;
        this.f52278h = null;
        m11387a(this.f52279i);
        this.f52279i = null;
        m11387a(this.f52280j);
        this.f52280j = null;
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11384a(DataHolder dataHolder) {
        C11899i<Object> c11899i = this.f52275e;
        if (c11899i != null) {
            c11899i.m19323a(new C14318df(dataHolder));
        } else {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11383a(zzah zzahVar) {
        C11899i<AbstractC14209a.AbstractC14210a> c11899i = this.f52280j;
        if (c11899i != null) {
            c11899i.m19323a(new C14321di(zzahVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11382a(zzaw zzawVar) {
        C11899i<AbstractC14226f.AbstractC14227a> c11899i = this.f52279i;
        if (c11899i != null) {
            c11899i.m19323a(new C14320dh(zzawVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11381a(zzfe zzfeVar) {
        C11899i<AbstractC14355k.AbstractC14356a> c11899i = this.f52276f;
        if (c11899i != null) {
            c11899i.m19323a(new C14319dg(zzfeVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11380a(zzfo zzfoVar) {
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11379a(zzi zziVar) {
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11378a(zzl zzlVar) {
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: a */
    public final void mo11377a(List<zzfo> list) {
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
    /* renamed from: b */
    public final void mo11375b(zzfo zzfoVar) {
    }
}
