package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.content.ContentUris;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.recorder.CustomRecord;
import com.allinone.callerid.mvc.controller.recorder.CustomActivity;
import com.allinone.callerid.p157f.p159k.C2643a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.z.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d.class */
public class C2263d extends AbstractC2259b<CustomRecord> {

    /* renamed from: f */
    private Activity f7952f;

    /* renamed from: g */
    private CustomActivity f7953g;

    /* renamed from: h */
    private ArrayList<CustomRecord> f7954h = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.b.z.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d$a.class */
    public class View$OnClickListenerC2264a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CustomRecord f7955d;

        /* renamed from: e */
        final /* synthetic */ C2268c f7956e;

        /* renamed from: com.allinone.callerid.b.z.d$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d$a$a.class */
        class DialogInterface$OnClickListenerC2265a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC2265a() {
                View$OnClickListenerC2264a.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.allinone.callerid.b.z.d$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d$a$b.class */
        class DialogInterface$OnClickListenerC2266b implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC2266b() {
                View$OnClickListenerC2264a.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC2264a view$OnClickListenerC2264a = View$OnClickListenerC2264a.this;
                C2263d.this.f7933d.remove(view$OnClickListenerC2264a.f7955d);
                C2643a.m26973c().m26974b(View$OnClickListenerC2264a.this.f7955d.getPhone());
                C2263d.this.m31967i();
                Toast.makeText(C2263d.this.f7952f, C2263d.this.f7952f.getString(R$string.delete_success), 0).show();
                dialogInterface.dismiss();
            }
        }

        View$OnClickListenerC2264a(CustomRecord customRecord, C2268c c2268c) {
            C2263d.this = r4;
            this.f7955d = customRecord;
            this.f7956e = c2268c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!C2263d.this.f7953g.f11126K) {
                new DialogInterfaceC0146a.C0147a(C2263d.this.f7952f).m35559p(R$string.block_delete).m35568g(R$string.Are_you_sure_you_want_to_delete).m35562m(R$string.block_delete, new DialogInterface$OnClickListenerC2266b()).m35566i(R$string.cancel_dialog, new DialogInterface$OnClickListenerC2265a()).m35556s();
                return;
            }
            if (this.f7955d.isSelect()) {
                this.f7955d.setSelect(false);
                this.f7956e.f7965w.setVisibility(0);
                this.f7956e.f7966x.setVisibility(8);
                this.f7956e.f7963u.setBackgroundResource(R$color.white);
                C2263d.this.f7954h.remove(this.f7955d);
            } else {
                this.f7955d.setSelect(true);
                this.f7956e.f7965w.setVisibility(8);
                this.f7956e.f7966x.setVisibility(0);
                this.f7956e.f7963u.setBackgroundResource(R$color.colorselect);
                C2263d.this.f7954h.add(this.f7955d);
            }
            C2263d.this.f7953g.m25203h0();
        }
    }

    /* renamed from: com.allinone.callerid.b.z.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d$b.class */
    class View$OnLongClickListenerC2267b implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ CustomRecord f7960d;

        /* renamed from: e */
        final /* synthetic */ C2268c f7961e;

        View$OnLongClickListenerC2267b(CustomRecord customRecord, C2268c c2268c) {
            C2263d.this = r4;
            this.f7960d = customRecord;
            this.f7961e = c2268c;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!C2263d.this.f7953g.f11126K) {
                this.f7960d.setSelect(true);
                this.f7961e.f7965w.setImageResource(R$drawable.select);
                this.f7961e.f7963u.setBackgroundResource(R$color.colorselect);
                C2263d.this.f7953g.f11126K = true;
                C2263d.this.f7954h.add(this.f7960d);
                C2263d.this.f7953g.m25203h0();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "改为选中状态");
                }
                C2263d.this.f7953g.m25200k0();
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.b.z.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/d$c.class */
    public static class C2268c extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        private FrameLayout f7963u;

        /* renamed from: v */
        private LinearLayout f7964v;

        /* renamed from: w */
        private ImageView f7965w;

        /* renamed from: x */
        private ImageView f7966x;

        /* renamed from: y */
        private TextView f7967y;

        /* renamed from: z */
        private TextView f7968z;

        C2268c(View view) {
            super(view);
            Typeface m24359b = C3739f1.m24359b();
            this.f7963u = (FrameLayout) view.findViewById(R$id.custon_item_fl);
            this.f7964v = (LinearLayout) view.findViewById(R$id.custon_item_ll);
            this.f7965w = (ImageView) view.findViewById(R$id.custon_item_icon);
            this.f7966x = (ImageView) view.findViewById(R$id.custon_item_icon_select);
            this.f7967y = (TextView) view.findViewById(R$id.custon_item_name);
            this.f7968z = (TextView) view.findViewById(R$id.custon_item_time);
            this.f7967y.setTypeface(m24359b);
            this.f7968z.setTypeface(m24359b);
        }
    }

    public C2263d(Activity activity, ArrayList<CustomRecord> arrayList) {
        super(activity, arrayList);
        this.f7952f = activity;
        this.f7953g = (CustomActivity) activity;
    }

    /* renamed from: G */
    public ArrayList<CustomRecord> m27767G() {
        return this.f7954h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2268c c2268c = (C2268c) abstractC0905b0;
        if (c2268c != null) {
            CustomRecord customRecord = (CustomRecord) this.f7933d.get(i);
            String name = customRecord.getName();
            if (name == null || name.equals("")) {
                c2268c.f7967y.setVisibility(8);
            } else {
                c2268c.f7967y.setText(name);
                c2268c.f7967y.setVisibility(0);
            }
            c2268c.f7968z.setText(customRecord.getPhone());
            c2268c.f7963u.setOnClickListener(new View$OnClickListenerC2264a(customRecord, c2268c));
            c2268c.f7963u.setOnLongClickListener(new View$OnLongClickListenerC2267b(customRecord, c2268c));
            if (customRecord.isSelect()) {
                customRecord.setSelect(true);
                c2268c.f7965w.setVisibility(8);
                c2268c.f7966x.setVisibility(0);
                c2268c.f7963u.setBackgroundResource(R$color.colorselect);
                return;
            }
            customRecord.setSelect(false);
            c2268c.f7965w.setVisibility(0);
            c2268c.f7966x.setVisibility(8);
            c2268c.f7965w.setImageResource(R$drawable.ic_photo_normal);
            if (customRecord.getContactId() != null && !"".equals(customRecord.getContactId())) {
                C3852t.m23960c(this.f7952f, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(customRecord.getContactId())), "", R$drawable.ic_photo_normal, c2268c.f7965w);
            }
            c2268c.f7963u.setBackgroundResource(R$color.white);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2268c(LayoutInflater.from(this.f7953g).inflate(R$layout.item_custon, viewGroup, false));
    }
}
