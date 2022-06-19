package com.callerid.block.p034b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callerid.block.R$anim;
import com.callerid.block.R$attr;
import com.callerid.block.R$drawable;
import com.callerid.block.mvc.controller.ContactActivity;
import com.callerid.block.mvc.controller.UnknownContactActivity;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1205p0;
import java.util.ArrayList;
/* renamed from: com.callerid.block.b.h */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/h.class */
public class C0901h extends BaseAdapter {

    /* renamed from: b */
    private final int f4018b;

    /* renamed from: c */
    private Activity f4019c;

    /* renamed from: d */
    private ArrayList<CallLogBean> f4020d;

    /* renamed from: com.callerid.block.b.h$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/h$a.class */
    class View$OnClickListenerC0902a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ CallLogBean f4021b;

        View$OnClickListenerC0902a(CallLogBean callLogBean) {
            C0901h.this = r4;
            this.f4021b = callLogBean;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v5 */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activity;
            Intent intent;
            ?? r5;
            if (this.f4021b.m10084N()) {
                intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_tony", this.f4021b);
                intent.putExtras(bundle);
                activity = C0901h.this.f4019c;
                r5 = ContactActivity.class;
            } else {
                intent = new Intent();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("contact_tony", this.f4021b);
                intent.putExtras(bundle2);
                activity = C0901h.this.f4019c;
                r5 = UnknownContactActivity.class;
            }
            intent.setClass(activity, r5 == true ? 1 : 0);
            C0901h.this.f4019c.startActivity(intent);
            C0901h.this.f4019c.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.callerid.block.b.h$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/h$b.class */
    public static class C0903b {

        /* renamed from: a */
        TextView f4023a;

        /* renamed from: b */
        ImageView f4024b;

        /* renamed from: c */
        ImageView f4025c;

        /* renamed from: d */
        TextView f4026d;

        /* renamed from: e */
        FrameLayout f4027e;
    }

    public C0901h(Activity activity, ArrayList<CallLogBean> arrayList) {
        this.f4019c = activity;
        this.f4020d = arrayList;
        this.f4018b = C1205p0.m9635b(activity, R$attr.touxiang_gray, R$drawable.touxiang_gray);
    }

    /* renamed from: b */
    public void m10597b(ArrayList<CallLogBean> arrayList) {
        ArrayList<CallLogBean> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        this.f4020d = arrayList2;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4020d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4020d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0140  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p034b.C0901h.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }
}
