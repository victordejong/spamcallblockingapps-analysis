package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p045a.C1316d;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import java.util.Set;
/* renamed from: com.freshchat.consumer.sdk.a.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/p.class */
public class View$OnClickListenerC1346p implements View.OnClickListener {

    /* renamed from: os */
    public final /* synthetic */ Message f3640os;

    /* renamed from: ot */
    public final /* synthetic */ C1316d f3641ot;

    /* renamed from: pW */
    public final /* synthetic */ View f3642pW;

    /* renamed from: pX */
    public final /* synthetic */ C1316d.C1321e f3643pX;

    /* renamed from: qA */
    public final /* synthetic */ boolean f3644qA;

    public View$OnClickListenerC1346p(C1316d c1316d, C1316d.C1321e c1321e, Message message, boolean z, View view) {
        this.f3641ot = c1316d;
        this.f3643pX = c1321e;
        this.f3640os = message;
        this.f3644qA = z;
        this.f3642pW = view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        Set set;
        C1316d.AbstractC1323g abstractC1323g;
        Context context2;
        Set set2;
        View m41473ir = this.f3643pX.m41473ir();
        boolean z = m41473ir.getVisibility() == 0;
        if (z) {
            context2 = this.f3641ot.context;
            C1649bg.m40075f(context2, false);
            set2 = this.f3641ot.f3583pU;
            set2.remove(Long.valueOf(this.f3640os.getId()));
            C1471i.m40840c(m41473ir);
        } else {
            context = this.f3641ot.context;
            C1649bg.m40075f(context, true);
            set = this.f3641ot.f3583pU;
            set.add(Long.valueOf(this.f3640os.getId()));
            this.f3641ot.m41499b(this.f3643pX, this.f3640os, this.f3644qA);
            LinearLayout m41475ip = this.f3643pX.m41475ip();
            C1316d c1316d = this.f3641ot;
            Message message = this.f3640os;
            abstractC1323g = c1316d.f3581oq;
            m41475ip.setOnLongClickListener(new C1316d.View$OnLongClickListenerC1324h(message, abstractC1323g, false));
        }
        this.f3641ot.m41514a(this.f3642pW, !z);
    }
}
