package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.dialog.DialogC2616n;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.recorder.C3826f;
import java.io.File;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.b.z.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g.class */
public class C2282g extends AbstractC2259b<RecordCall> {

    /* renamed from: g */
    private Activity f8016g;

    /* renamed from: h */
    private int f8017h;

    /* renamed from: j */
    private AlertDialog f8019j;

    /* renamed from: k */
    private int f8020k;

    /* renamed from: l */
    private int f8021l;

    /* renamed from: m */
    private int f8022m;

    /* renamed from: n */
    private int f8023n;

    /* renamed from: o */
    private AbstractC2290g f8024o;

    /* renamed from: f */
    private Typeface f8015f = C3739f1.m24359b();

    /* renamed from: i */
    private C2282g f8018i = this;

    /* renamed from: com.allinone.callerid.b.z.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$a.class */
    class View$OnClickListenerC2283a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f8025d;

        View$OnClickListenerC2283a(RecordCall recordCall) {
            C2282g.this = r4;
            this.f8025d = recordCall;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3826f.m23974u(C2282g.this.f8016g, this.f8025d.getFilename(), this.f8025d.getFilepath());
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$b.class */
    class View$OnLongClickListenerC2284b implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f8027d;

        /* renamed from: e */
        final /* synthetic */ int f8028e;

        View$OnLongClickListenerC2284b(RecordCall recordCall, int i) {
            C2282g.this = r4;
            this.f8027d = recordCall;
            this.f8028e = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C2282g.this.m27724M(this.f8027d, this.f8028e);
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$c.class */
    class View$OnClickListenerC2285c implements View.OnClickListener {
        View$OnClickListenerC2285c() {
            C2282g.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2282g.this.f8024o != null) {
                C2282g.this.f8024o.mo25115a(view);
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$d.class */
    public class View$OnClickListenerC2286d implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f8031d;

        /* renamed from: e */
        final /* synthetic */ int f8032e;

        View$OnClickListenerC2286d(RecordCall recordCall, int i) {
            C2282g.this = r4;
            this.f8031d = recordCall;
            this.f8032e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297416) {
                C2282g c2282g = C2282g.this;
                c2282g.m27726K(c2282g.f8016g, this.f8031d, this.f8032e);
            } else if (id == 2131297418) {
                C3826f.m23970y(C2282g.this.f8016g, this.f8031d, C2282g.this.f8018i);
            } else if (id == 2131297420) {
                try {
                    DialogC2616n dialogC2616n = new DialogC2616n(C2282g.this.f8016g, R$style.CustomDialog4, C2282g.this.f8016g.getResources().getString(R$string.share_title_recorder), "", "", 2, this.f8031d.getFilepath());
                    dialogC2616n.setCanceledOnTouchOutside(false);
                    dialogC2616n.show();
                    Window window = dialogC2616n.getWindow();
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    window.setGravity(80);
                    WindowManager windowManager = (WindowManager) C2282g.this.f8016g.getApplicationContext().getSystemService("window");
                    int width = windowManager.getDefaultDisplay().getWidth();
                    int height = windowManager.getDefaultDisplay().getHeight();
                    attributes.width = width;
                    attributes.height = height / 2;
                    window.setAttributes(attributes);
                    C3810q.m24071b().m24070c("recorder_share_count");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (C2282g.this.f8019j != null) {
                C2282g.this.f8019j.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$e.class */
    public class DialogInterface$OnClickListenerC2287e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2287e() {
            C2282g.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$f.class */
    public class DialogInterface$OnClickListenerC2288f implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f8035d;

        /* renamed from: e */
        final /* synthetic */ RecordCall f8036e;

        /* renamed from: f */
        final /* synthetic */ Context f8037f;

        /* renamed from: com.allinone.callerid.b.z.g$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$f$a.class */
        class RunnableC2289a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f8039d;

            RunnableC2289a(String str) {
                DialogInterface$OnClickListenerC2288f.this = r4;
                this.f8039d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C2645b.m26967d().m26968c(this.f8039d);
                    new File(this.f8039d).delete();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        DialogInterface$OnClickListenerC2288f(int i, RecordCall recordCall, Context context) {
            C2282g.this = r4;
            this.f8035d = i;
            this.f8036e = recordCall;
            this.f8037f = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f8035d < C2282g.this.f7933d.size()) {
                String filepath = this.f8036e.getFilepath();
                C2282g.this.f7933d.remove(this.f8035d);
                C2282g.this.m31967i();
                C3772i0.m24190a().f12015b.execute(new RunnableC2289a(filepath));
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.UPDATEVIEW");
                C1764a.m28939b(this.f8037f).m28937d(intent);
                C3810q.m24071b().m24070c("recorder_delete_click");
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.z.g$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$g.class */
    public interface AbstractC2290g {
        /* renamed from: a */
        void mo25115a(View view);
    }

    /* renamed from: com.allinone.callerid.b.z.g$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/g$h.class */
    private class C2291h extends RecyclerView.AbstractC0905b0 {

        /* renamed from: A */
        private LinearLayout f8041A;

        /* renamed from: B */
        private FrameLayout f8042B;

        /* renamed from: C */
        private TextView f8043C;

        /* renamed from: D */
        private ImageView f8044D;

        /* renamed from: E */
        private FrameLayout f8045E;

        /* renamed from: F */
        private RelativeLayout f8046F;

        /* renamed from: G */
        private TextView f8047G;

        /* renamed from: H */
        private ImageView f8048H;

        /* renamed from: I */
        private LinearLayout f8049I;

        /* renamed from: u */
        private TextView f8051u;

        /* renamed from: v */
        private ImageView f8052v;

        /* renamed from: w */
        private TextView f8053w;

        /* renamed from: x */
        private TextView f8054x;

        /* renamed from: y */
        private TextView f8055y;

        /* renamed from: z */
        private TextView f8056z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2291h(View view) {
            super(view);
            C2282g.this = r5;
            this.f8051u = (TextView) view.findViewById(R$id.strang_item_number);
            this.f8049I = (LinearLayout) view.findViewById(R$id.ll_strang_title);
            this.f8052v = (ImageView) view.findViewById(R$id.strang_item_logo);
            this.f8053w = (TextView) view.findViewById(R$id.strang_item_calltime);
            this.f8054x = (TextView) view.findViewById(R$id.strang_item_filetime);
            this.f8055y = (TextView) view.findViewById(R$id.strang_item_filesize);
            this.f8056z = (TextView) view.findViewById(R$id.strang_item_remark);
            this.f8041A = (LinearLayout) view.findViewById(R$id.strang_item_click);
            this.f8042B = (FrameLayout) view.findViewById(R$id.strang_date_top);
            this.f8043C = (TextView) view.findViewById(R$id.strang_tv_date);
            this.f8044D = (ImageView) view.findViewById(R$id.strang_ib_filter);
            this.f8045E = (FrameLayout) view.findViewById(R$id.strang_item_content_click);
            this.f8046F = (RelativeLayout) view.findViewById(R$id.strang_item_rl_spam);
            this.f8047G = (TextView) view.findViewById(R$id.strang_item_tv_spam);
            this.f8048H = (ImageView) view.findViewById(R$id.iv_avatar);
            this.f8051u.setTypeface(r5.f8015f);
            this.f8053w.setTypeface(r5.f8015f);
            this.f8054x.setTypeface(r5.f8015f);
            this.f8055y.setTypeface(r5.f8015f);
            this.f8056z.setTypeface(r5.f8015f);
            this.f8043C.setTypeface(r5.f8015f);
            this.f8047G.setTypeface(r5.f8015f);
        }
    }

    public C2282g(Activity activity, ArrayList<RecordCall> arrayList) {
        super(activity, arrayList);
        this.f8016g = activity;
        this.f8017h = C3774j.m24169a(this.f8016g, 8.0f);
        this.f8020k = C3719c1.m24431b(this.f8016g, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f8021l = C3719c1.m24431b(this.f8016g, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f8022m = C3719c1.m24431b(this.f8016g, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f8023n = C3719c1.m24431b(this.f8016g, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
    }

    /* renamed from: K */
    public void m27726K(Context context, RecordCall recordCall, int i) {
        try {
            AlertDialog create = new AlertDialog.Builder(context).setMessage(context.getString(R$string.Are_you_sure_you_want_to_delete)).setPositiveButton(context.getResources().getString(R$string.block_delete), new DialogInterface$OnClickListenerC2288f(i, recordCall, context)).setNegativeButton(context.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2287e()).create();
            create.show();
            create.getButton(-1).setTextColor(context.getResources().getColor(2131099706));
            create.getButton(-2).setTextColor(context.getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: M */
    public void m27724M(RecordCall recordCall, int i) {
        try {
            View inflate = LayoutInflater.from(this.f8016g).inflate(R$layout.dialog_record_long, (ViewGroup) null);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.record_long_record_click);
            TextView textView = (TextView) inflate.findViewById(R$id.record_long_record);
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.record_long_share_clcik);
            TextView textView2 = (TextView) inflate.findViewById(R$id.record_long_share);
            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.record_long_delete_click);
            textView.setTypeface(this.f8015f);
            textView2.setTypeface(this.f8015f);
            ((TextView) inflate.findViewById(R$id.record_long_delete)).setTypeface(this.f8015f);
            View$OnClickListenerC2286d view$OnClickListenerC2286d = new View$OnClickListenerC2286d(recordCall, i);
            frameLayout.setOnClickListener(view$OnClickListenerC2286d);
            frameLayout2.setOnClickListener(view$OnClickListenerC2286d);
            frameLayout3.setOnClickListener(view$OnClickListenerC2286d);
            AlertDialog create = new AlertDialog.Builder(this.f8016g).setView(inflate).create();
            this.f8019j = create;
            create.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: L */
    public void m27725L(AbstractC2290g abstractC2290g) {
        this.f8024o = abstractC2290g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public int mo4499f(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2291h c2291h;
        if (!(abstractC0905b0 instanceof C2291h) || (c2291h = (C2291h) abstractC0905b0) == null) {
            return;
        }
        try {
            RecordCall recordCall = (RecordCall) this.f7933d.get(i);
            if (recordCall == null) {
                return;
            }
            c2291h.f8051u.setText(recordCall.getShowName());
            if (recordCall.getPhonestatus() == 111) {
                c2291h.f8052v.setImageResource(R$drawable.ic_calllog_outgoing_nomal);
            } else {
                c2291h.f8052v.setImageResource(R$drawable.ic_calllog_incomming_normal);
            }
            c2291h.f8055y.setText(recordCall.getFilesizestring());
            String remark = recordCall.getRemark();
            if (remark != null) {
                c2291h.f8056z.setText(remark);
                c2291h.f8056z.setVisibility(0);
            } else {
                c2291h.f8056z.setVisibility(8);
            }
            c2291h.f8054x.setText(recordCall.getTimespanstring());
            ArrayList<T> arrayList = this.f7933d;
            if (arrayList != 0 && arrayList.size() > 1 && i > 0) {
                String recordtime = ((RecordCall) this.f7933d.get(i - 1)).getRecordtime();
                String recordtime2 = ((RecordCall) this.f7933d.get(i)).getRecordtime();
                if (recordtime == null || !recordtime.equals(recordtime2)) {
                    c2291h.f8043C.setVisibility(0);
                    c2291h.f8042B.setVisibility(0);
                    c2291h.f8043C.setText(recordtime2);
                    LinearLayout linearLayout = c2291h.f8041A;
                    int i2 = this.f8017h;
                    C3826f.m23969z(linearLayout, i2, i2, i2, 0);
                    if (i != this.f7933d.size() - 1) {
                        int i3 = i + 1;
                        if (i3 < this.f7933d.size()) {
                            String recordtime3 = ((RecordCall) this.f7933d.get(i3)).getRecordtime();
                            if (recordtime3 == null || !recordtime3.equals(recordtime2)) {
                                c2291h.f8041A.setBackgroundResource(this.f8021l);
                            } else {
                                c2291h.f8041A.setBackgroundResource(this.f8023n);
                            }
                        } else {
                            c2291h.f8041A.setBackgroundResource(this.f8023n);
                        }
                    } else if (recordtime == 0 || !recordtime.equals(recordtime2)) {
                        LinearLayout linearLayout2 = c2291h.f8041A;
                        int i4 = this.f8017h;
                        C3826f.m23969z(linearLayout2, i4, i4, i4, i4);
                        c2291h.f8041A.setBackgroundResource(this.f8021l);
                    } else {
                        LinearLayout linearLayout3 = c2291h.f8041A;
                        int i5 = this.f8017h;
                        C3826f.m23969z(linearLayout3, i5, 0, i5, 0);
                        c2291h.f8041A.setBackgroundResource(this.f8020k);
                    }
                } else {
                    c2291h.f8043C.setVisibility(8);
                    c2291h.f8042B.setVisibility(8);
                    if (i == this.f7933d.size() - 1) {
                        LinearLayout linearLayout4 = c2291h.f8041A;
                        int i6 = this.f8017h;
                        C3826f.m23969z(linearLayout4, i6, 0, i6, i6);
                        c2291h.f8041A.setBackgroundResource(this.f8020k);
                    } else {
                        String recordtime4 = ((RecordCall) this.f7933d.get(i + 1)).getRecordtime();
                        if (recordtime4 == null || !recordtime4.equals(recordtime2)) {
                            LinearLayout linearLayout5 = c2291h.f8041A;
                            int i7 = this.f8017h;
                            C3826f.m23969z(linearLayout5, i7, 0, i7, 0);
                            c2291h.f8041A.setBackgroundResource(this.f8020k);
                        } else {
                            LinearLayout linearLayout6 = c2291h.f8041A;
                            int i8 = this.f8017h;
                            C3826f.m23969z(linearLayout6, i8, 0, i8, 0);
                            c2291h.f8041A.setBackgroundResource(this.f8022m);
                        }
                    }
                }
            }
            c2291h.f8053w.setText(recordCall.getRecordtimems());
            if (i == 0) {
                c2291h.f8044D.setVisibility(0);
                c2291h.f8043C.setVisibility(0);
                c2291h.f8042B.setVisibility(0);
                c2291h.f8043C.setText(recordCall.getRecordtime());
                if (this.f7933d.size() == 1) {
                    LinearLayout linearLayout7 = c2291h.f8041A;
                    int i9 = this.f8017h;
                    C3826f.m23969z(linearLayout7, i9, i9, i9, i9);
                    c2291h.f8041A.setBackgroundResource(this.f8021l);
                } else {
                    LinearLayout linearLayout8 = c2291h.f8041A;
                    int i10 = this.f8017h;
                    C3826f.m23969z(linearLayout8, i10, i10, i10, 0);
                    c2291h.f8041A.setBackgroundResource(this.f8023n);
                }
                int i11 = i + 1;
                if (i11 < this.f7933d.size()) {
                    String recordtime5 = ((RecordCall) this.f7933d.get(i)).getRecordtime();
                    String recordtime6 = ((RecordCall) this.f7933d.get(i11)).getRecordtime();
                    if (recordtime6 == null || !recordtime6.equals(recordtime5)) {
                        c2291h.f8041A.setBackgroundResource(this.f8021l);
                    } else {
                        c2291h.f8041A.setBackgroundResource(this.f8023n);
                    }
                }
            } else {
                c2291h.f8044D.setVisibility(8);
            }
            if (recordCall.getNumbertype() == 101 || recordCall.getHarassstatus() != 121) {
                c2291h.f8046F.setVisibility(4);
                c2291h.f8048H.setImageResource(R$drawable.icon_gray);
            } else {
                c2291h.f8046F.setVisibility(0);
                c2291h.f8047G.setText(C3767h1.m24292D(this.f8016g, recordCall.getPhoneType()));
                c2291h.f8048H.setImageResource(R$drawable.ic_photo_spam);
            }
            c2291h.f8045E.setOnClickListener(new View$OnClickListenerC2283a(recordCall));
            c2291h.f8045E.setOnLongClickListener(new View$OnLongClickListenerC2284b(recordCall, i));
            c2291h.f8044D.setOnClickListener(new View$OnClickListenerC2285c());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2291h(this.f7934e.inflate(R$layout.stranger_recorder_item, viewGroup, false));
    }
}
