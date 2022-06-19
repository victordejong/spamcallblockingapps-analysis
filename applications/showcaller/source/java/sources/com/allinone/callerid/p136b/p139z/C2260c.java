package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.mvc.controller.recorder.RecordListActivity;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.recorder.C3826f;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.z.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/c.class */
public class C2260c extends AbstractC2259b<RecordCall> {

    /* renamed from: f */
    private Typeface f7935f = C3739f1.m24359b();

    /* renamed from: g */
    private Context f7936g;

    /* renamed from: h */
    private Activity f7937h;

    /* renamed from: i */
    private int f7938i;

    /* renamed from: j */
    private int f7939j;

    /* renamed from: k */
    private int f7940k;

    /* renamed from: l */
    private int f7941l;

    /* renamed from: m */
    private int f7942m;

    /* renamed from: com.allinone.callerid.b.z.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/c$a.class */
    class View$OnClickListenerC2261a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f7943d;

        View$OnClickListenerC2261a(RecordCall recordCall) {
            C2260c.this = r4;
            this.f7943d = recordCall;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(C2260c.this.f7936g, RecordListActivity.class);
            intent.putExtra("recordnumber", this.f7943d.getNumber());
            intent.putExtra("recordname", this.f7943d.getName());
            intent.addFlags(268435456);
            C2260c.this.f7936g.startActivity(intent);
            C2260c.this.f7937h.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.b.z.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/c$b.class */
    private class C2262b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private LinearLayout f7946u;

        /* renamed from: v */
        private RelativeLayout f7947v;

        /* renamed from: w */
        private TextView f7948w;

        /* renamed from: x */
        private FrameLayout f7949x;

        /* renamed from: y */
        private TextView f7950y;

        /* renamed from: z */
        private TextView f7951z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2262b(View view) {
            super(view);
            C2260c.this = r5;
            this.f7946u = (LinearLayout) view.findViewById(R$id.contact_item_click);
            this.f7947v = (RelativeLayout) view.findViewById(R$id.contact_date_top);
            this.f7948w = (TextView) view.findViewById(R$id.contact_tv_date);
            this.f7949x = (FrameLayout) view.findViewById(R$id.contact_item_content_click);
            this.f7950y = (TextView) view.findViewById(R$id.contact_item_name);
            this.f7951z = (TextView) view.findViewById(R$id.strang_item_count);
            this.f7948w.setTypeface(r5.f7935f);
            this.f7950y.setTypeface(r5.f7935f);
            this.f7951z.setTypeface(r5.f7935f);
        }
    }

    public C2260c(Context context, ArrayList<RecordCall> arrayList) {
        super(context, arrayList);
        this.f7936g = context;
        this.f7938i = C3774j.m24169a(this.f7936g, 8.0f);
        this.f7937h = (Activity) context;
        this.f7939j = C3719c1.m24431b(this.f7936g, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f7940k = C3719c1.m24431b(this.f7936g, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f7941l = C3719c1.m24431b(this.f7936g, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f7942m = C3719c1.m24431b(this.f7936g, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2262b c2262b = (C2262b) abstractC0905b0;
        if (c2262b != null) {
            RecordCall recordCall = (RecordCall) this.f7933d.get(i);
            if (this.f7933d.size() == 1) {
                LinearLayout linearLayout = c2262b.f7946u;
                int i2 = this.f7938i;
                C3826f.m23969z(linearLayout, i2, i2, i2, i2);
                c2262b.f7946u.setBackgroundResource(this.f7940k);
            } else if (i == 0) {
                LinearLayout linearLayout2 = c2262b.f7946u;
                int i3 = this.f7938i;
                C3826f.m23969z(linearLayout2, i3, i3, i3, 0);
                c2262b.f7946u.setBackgroundResource(this.f7942m);
            } else if (i == this.f7933d.size() - 1) {
                LinearLayout linearLayout3 = c2262b.f7946u;
                int i4 = this.f7938i;
                C3826f.m23969z(linearLayout3, i4, 0, i4, i4);
                c2262b.f7946u.setBackgroundResource(this.f7939j);
            } else {
                LinearLayout linearLayout4 = c2262b.f7946u;
                int i5 = this.f7938i;
                C3826f.m23969z(linearLayout4, i5, 0, i5, 0);
                c2262b.f7946u.setBackgroundResource(this.f7941l);
            }
            if (i == 0) {
                c2262b.f7947v.setVisibility(0);
            } else {
                c2262b.f7947v.setVisibility(8);
            }
            c2262b.f7950y.setText(recordCall.getShowName());
            TextView textView = c2262b.f7951z;
            textView.setText("(" + recordCall.getRecordcount() + ")");
            c2262b.f7949x.setOnClickListener(new View$OnClickListenerC2261a(recordCall));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2262b(this.f7934e.inflate(R$layout.contact_recorder_item, viewGroup, false));
    }
}
