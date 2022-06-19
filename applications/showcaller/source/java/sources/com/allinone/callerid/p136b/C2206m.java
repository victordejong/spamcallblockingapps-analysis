package com.allinone.callerid.p136b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.mvc.controller.contactpdt.ContactActivity;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3809p0;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.m */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/m.class */
public class C2206m extends BaseAdapter {

    /* renamed from: d */
    private Activity f7726d;

    /* renamed from: e */
    private ArrayList<CallLogBean> f7727e;

    /* renamed from: com.allinone.callerid.b.m$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/m$a.class */
    class View$OnClickListenerC2207a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7728d;

        View$OnClickListenerC2207a(CallLogBean callLogBean) {
            C2206m.this = r4;
            this.f7728d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3809p0.m24078a(C2206m.this.f7726d, this.f7728d.m24880o());
        }
    }

    /* renamed from: com.allinone.callerid.b.m$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/m$b.class */
    class View$OnClickListenerC2208b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7730d;

        View$OnClickListenerC2208b(CallLogBean callLogBean) {
            C2206m.this = r4;
            this.f7730d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f7730d.m24918Y()) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", this.f7730d);
                intent.putExtras(bundle);
                intent.setClass(C2206m.this.f7726d, ContactActivity.class);
                C2206m.this.f7726d.startActivity(intent);
                C2206m.this.f7726d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            }
            Intent intent2 = new Intent();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("contact_tony", this.f7730d);
            intent2.putExtras(bundle2);
            intent2.setClass(C2206m.this.f7726d, UnknownContactActivity.class);
            C2206m.this.f7726d.startActivity(intent2);
            C2206m.this.f7726d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.b.m$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/m$c.class */
    public static class C2209c {

        /* renamed from: a */
        TextView f7732a;

        /* renamed from: b */
        ImageView f7733b;

        /* renamed from: c */
        TextView f7734c;

        /* renamed from: d */
        FrameLayout f7735d;

        /* renamed from: e */
        ImageView f7736e;
    }

    public C2206m(Activity activity, ArrayList<CallLogBean> arrayList) {
        this.f7726d = activity;
        this.f7727e = arrayList;
    }

    /* renamed from: b */
    public void m27855b(ArrayList<CallLogBean> arrayList) {
        if (arrayList == null) {
            this.f7727e = new ArrayList<>();
        } else {
            this.f7727e = arrayList;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7727e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7727e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0192  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.C2206m.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
