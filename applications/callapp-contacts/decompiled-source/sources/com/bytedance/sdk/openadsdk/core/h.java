package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.view.View;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.mopub.common.AdType;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8959a;

    /* renamed from: b  reason: collision with root package name */
    private final i f8960b;

    /* renamed from: c  reason: collision with root package name */
    private c f8961c;

    /* renamed from: d  reason: collision with root package name */
    private e f8962d;
    private d e;
    private View f;
    private String g;

    public h(Context context, i iVar, View view) {
        this.g = AdType.REWARDED_VIDEO;
        this.f8960b = iVar;
        this.f8959a = context;
        this.f = view;
        this.g = af.b(af.c(iVar.S()));
        if (iVar.D() == 4) {
            this.f8961c = com.a.a.a.a.a.d.a(context, iVar, this.g);
        }
        String str = this.g;
        e eVar = new e(context, iVar, str, af.a(str));
        this.f8962d = eVar;
        eVar.a(this.f);
        this.f8962d.a(this.f8961c);
        String str2 = this.g;
        d dVar = new d(context, iVar, str2, af.a(str2));
        this.e = dVar;
        dVar.a(this.f);
        this.e.a(this.f8961c);
    }

    public void a(int i, g gVar) {
        d dVar;
        if (i != -1 && gVar != null) {
            int i2 = gVar.f8886a;
            int i3 = gVar.f8887b;
            int i4 = gVar.f8888c;
            int i5 = gVar.f8889d;
            if (i == 1) {
                e eVar = this.f8962d;
                if (eVar != null) {
                    eVar.a(gVar);
                    this.f8962d.a(this.f, i2, i3, i4, i5);
                }
            } else if (i == 2 && (dVar = this.e) != null) {
                dVar.a(gVar);
                this.e.a(this.f, i2, i3, i4, i5);
            }
        }
    }
}
