package com.allinone.callerid.p136b.p138b0;

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
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.C3718c0;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.b0.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/b.class */
public class C2163b extends BaseAdapter {

    /* renamed from: d */
    private Activity f7503d;

    /* renamed from: e */
    private List<EZSearchResult> f7504e = new ArrayList();

    /* renamed from: f */
    private C2165b f7505f;

    /* renamed from: com.allinone.callerid.b.b0.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/b$a.class */
    class View$OnClickListenerC2164a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7506d;

        View$OnClickListenerC2164a(CallLogBean callLogBean) {
            C2163b.this = r4;
            this.f7506d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", this.f7506d);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("favtest", "getSubtype_pdt:" + this.f7506d.m24946H());
            }
            intent.putExtras(bundle);
            if (this.f7506d.m24918Y()) {
                intent.setClass(C2163b.this.f7503d, ContactActivity.class);
            } else {
                intent.setClass(C2163b.this.f7503d, UnknownContactActivity.class);
            }
            intent.addFlags(268435456);
            C2163b.this.f7503d.startActivity(intent);
            C2163b.this.f7503d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.b.b0.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/b$b.class */
    public static class C2165b {

        /* renamed from: a */
        TextView f7508a;

        /* renamed from: b */
        TextView f7509b;

        /* renamed from: c */
        TextView f7510c;

        /* renamed from: d */
        TextView f7511d;

        /* renamed from: e */
        TextView f7512e;

        /* renamed from: f */
        TextView f7513f;

        /* renamed from: g */
        ImageView f7514g;

        /* renamed from: h */
        FrameLayout f7515h;
    }

    public C2163b(Activity activity, List<EZSearchResult> list) {
        this.f7503d = activity;
    }

    /* renamed from: b */
    public void m27892b(List<EZSearchResult> list) {
        if (list != null) {
            this.f7504e.clear();
            this.f7504e.addAll(list);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7504e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7504e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0167, code lost:
        if (r0.equals("") != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x043d  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 1268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p136b.p138b0.C2163b.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
