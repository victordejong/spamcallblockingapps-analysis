package com.freshchat.consumer.sdk.p045a;

import android.view.View;
import com.freshchat.consumer.sdk.p045a.C1332i;
import com.freshchat.consumer.sdk.p061k.C1755q;
/* renamed from: com.freshchat.consumer.sdk.a.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/k.class */
public class View$OnClickListenerC1336k implements View.OnClickListener {

    /* renamed from: oA */
    public final /* synthetic */ C1755q f3625oA;

    /* renamed from: oB */
    public final /* synthetic */ C1332i.C1334b f3626oB;

    public View$OnClickListenerC1336k(C1332i.C1334b c1334b, C1755q c1755q) {
        this.f3626oB = c1334b;
        this.f3625oA = c1755q;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1332i.AbstractC1333a abstractC1333a;
        C1332i.AbstractC1333a abstractC1333a2;
        abstractC1333a = C1332i.this.f3622ox;
        if (abstractC1333a == null || this.f3625oA.m39686il() == null) {
            return;
        }
        abstractC1333a2 = C1332i.this.f3622ox;
        abstractC1333a2.mo39586a(this.f3625oA.m39686il());
    }
}
