package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.content.ContentUris;
import android.graphics.Typeface;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.recorder.CustomRecord;
import com.allinone.callerid.mvc.controller.recorder.CustomAddActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.z.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/a.class */
public class C2256a extends AbstractC2259b<CustomRecord> {

    /* renamed from: f */
    private Activity f7921f;

    /* renamed from: g */
    private CustomAddActivity f7922g;

    /* renamed from: h */
    private ArrayList<CustomRecord> f7923h = new ArrayList<>();

    /* renamed from: com.allinone.callerid.b.z.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/a$a.class */
    class View$OnClickListenerC2257a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CustomRecord f7924d;

        /* renamed from: e */
        final /* synthetic */ C2258b f7925e;

        View$OnClickListenerC2257a(CustomRecord customRecord, C2258b c2258b) {
            C2256a.this = r4;
            this.f7924d = customRecord;
            this.f7925e = c2258b;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f7924d.isSelect()) {
                this.f7924d.setSelect(false);
                this.f7925e.f7929w.setVisibility(0);
                this.f7925e.f7930x.setVisibility(8);
                this.f7925e.f7927u.setBackgroundResource(R$color.white);
                C2256a.this.f7923h.remove(this.f7924d);
            } else {
                this.f7924d.setSelect(true);
                this.f7925e.f7929w.setVisibility(8);
                this.f7925e.f7930x.setVisibility(0);
                this.f7925e.f7927u.setBackgroundResource(R$color.colorselect);
                C2256a.this.f7923h.add(this.f7924d);
            }
            C2256a.this.f7922g.m25185f0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.b.z.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/a$b.class */
    public static class C2258b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f7927u;

        /* renamed from: v */
        private LinearLayout f7928v;

        /* renamed from: w */
        private ImageView f7929w;

        /* renamed from: x */
        private ImageView f7930x;

        /* renamed from: y */
        private TextView f7931y;

        /* renamed from: z */
        private TextView f7932z;

        C2258b(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f7927u = (FrameLayout) view.findViewById(R$id.custon_item_fl);
            this.f7928v = (LinearLayout) view.findViewById(R$id.custon_item_ll);
            this.f7929w = (ImageView) view.findViewById(R$id.custon_item_icon);
            this.f7930x = (ImageView) view.findViewById(R$id.custon_item_icon_select);
            this.f7931y = (TextView) view.findViewById(R$id.custon_item_name);
            this.f7932z = (TextView) view.findViewById(R$id.custon_item_time);
            this.f7931y.setTypeface(m24359b);
            this.f7932z.setTypeface(m24359b);
        }
    }

    public C2256a(Activity activity, ArrayList<CustomRecord> arrayList) {
        super(activity, arrayList);
        this.f7921f = activity;
        this.f7922g = (CustomAddActivity) activity;
    }

    /* renamed from: F */
    public ArrayList<CustomRecord> m27787F() {
        return this.f7923h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2258b c2258b = (C2258b) abstractC0905b0;
        if (c2258b != null) {
            CustomRecord customRecord = (CustomRecord) this.f7933d.get(i);
            String name = customRecord.getName();
            if (name == null || name.equals("")) {
                c2258b.f7931y.setVisibility(8);
            } else {
                c2258b.f7931y.setText(name);
                c2258b.f7931y.setVisibility(0);
            }
            c2258b.f7932z.setText(customRecord.getPhone());
            c2258b.f7929w.setImageResource(R$drawable.ic_photo_normal);
            c2258b.f7927u.setOnClickListener(new View$OnClickListenerC2257a(customRecord, c2258b));
            if (customRecord.isSelect()) {
                customRecord.setSelect(true);
                c2258b.f7929w.setVisibility(8);
                c2258b.f7930x.setVisibility(0);
                c2258b.f7927u.setBackgroundResource(R$color.colorselect);
                return;
            }
            customRecord.setSelect(false);
            c2258b.f7929w.setVisibility(0);
            c2258b.f7930x.setVisibility(8);
            c2258b.f7929w.setImageResource(R$drawable.ic_photo_normal);
            if (customRecord.getContactId() != null && !"".equals(customRecord.getContactId())) {
                C3852t.m23960c(this.f7921f, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(customRecord.getContactId())), "", R$drawable.ic_photo_normal, c2258b.f7929w);
            }
            c2258b.f7927u.setBackgroundResource(R$color.white);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2258b(LayoutInflater.from(this.f7922g).inflate(R$layout.item_custon, viewGroup, false));
    }
}
