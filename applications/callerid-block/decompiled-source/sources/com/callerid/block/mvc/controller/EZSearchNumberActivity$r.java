package com.callerid.block.mvc.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.callerid.block.R$anim;
import com.callerid.block.R$attr;
import com.callerid.block.R$drawable;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
import com.rey.material.widget.Button;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$r.class */
public class EZSearchNumberActivity$r extends BaseAdapter {

    /* renamed from: b */
    private final int f4662b;

    /* renamed from: c */
    private final int f4663c;

    /* renamed from: d */
    Context f4664d;

    /* renamed from: e */
    List f4665e;

    /* renamed from: f */
    boolean f4666f;

    /* renamed from: g */
    C1106b f4667g;

    /* renamed from: h */
    final /* synthetic */ EZSearchNumberActivity f4668h;

    /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$r$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$r$a.class */
    class View$OnClickListenerC1105a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ CallLogBean f4669b;

        View$OnClickListenerC1105a(CallLogBean callLogBean) {
            this.f4669b = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", this.f4669b);
            intent.putExtras(bundle);
            intent.setClass(EZSearchNumberActivity$r.this.f4664d, UnknownContactActivity.class);
            EZSearchNumberActivity$r.this.f4668h.startActivity(intent);
            EZSearchNumberActivity$r.this.f4668h.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$r$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$r$b.class */
    public class C1106b {

        /* renamed from: a */
        TextView f4671a;

        /* renamed from: b */
        TextView f4672b;

        /* renamed from: c */
        TextView f4673c;

        /* renamed from: d */
        TextView f4674d;

        /* renamed from: e */
        ImageView f4675e;

        /* renamed from: f */
        Button f4676f;

        public C1106b(EZSearchNumberActivity$r eZSearchNumberActivity$r) {
        }
    }

    EZSearchNumberActivity$r(EZSearchNumberActivity eZSearchNumberActivity, Context context, List list) {
        this.f4668h = eZSearchNumberActivity;
        this.f4664d = context;
        this.f4665e = list;
        this.f4662b = C1205p0.m9635b(context, R$attr.touxiang_gray, R$drawable.touxiang_gray);
        this.f4663c = C1205p0.m9635b(context, R$attr.touxiang_red, R$drawable.touxiang_red);
    }

    /* renamed from: a */
    public void m10148a(boolean z) {
        this.f4666f = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4665e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4665e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0130, code lost:
        if (r0.equals("") != false) goto L_0x0133;
     */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 1078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.mvc.controller.EZSearchNumberActivity$r.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
