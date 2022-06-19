package com.allinone.callerid.p136b.p139z;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
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
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.dialog.DialogC2616n;
import com.allinone.callerid.p157f.p159k.C2645b;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.recorder.C3826f;
import java.io.File;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.b.z.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f.class */
public class C2274f extends AbstractC2259b<RecordCall> {

    /* renamed from: g */
    private Activity f7981g;

    /* renamed from: h */
    private int f7982h;

    /* renamed from: j */
    private AlertDialog f7984j;

    /* renamed from: f */
    private Typeface f7980f = C3739f1.m24359b();

    /* renamed from: i */
    private C2274f f7983i = this;

    /* renamed from: com.allinone.callerid.b.z.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$a.class */
    class View$OnClickListenerC2275a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f7985d;

        View$OnClickListenerC2275a(RecordCall recordCall) {
            C2274f.this = r4;
            this.f7985d = recordCall;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C3826f.m23974u(C2274f.this.f7981g, this.f7985d.getFilename(), this.f7985d.getFilepath());
        }
    }

    /* renamed from: com.allinone.callerid.b.z.f$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$b.class */
    class View$OnLongClickListenerC2276b implements View.OnLongClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f7987d;

        /* renamed from: e */
        final /* synthetic */ int f7988e;

        View$OnLongClickListenerC2276b(RecordCall recordCall, int i) {
            C2274f.this = r4;
            this.f7987d = recordCall;
            this.f7988e = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C2274f.this.m27748K(this.f7987d, this.f7988e);
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.b.z.f$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$c.class */
    public class View$OnClickListenerC2277c implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RecordCall f7990d;

        /* renamed from: e */
        final /* synthetic */ int f7991e;

        View$OnClickListenerC2277c(RecordCall recordCall, int i) {
            C2274f.this = r4;
            this.f7990d = recordCall;
            this.f7991e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131297416) {
                C2274f c2274f = C2274f.this;
                c2274f.m27749J(c2274f.f7981g, this.f7990d, this.f7991e);
            } else if (id == 2131297418) {
                C3826f.m23970y(C2274f.this.f7981g, this.f7990d, C2274f.this.f7983i);
            } else if (id == 2131297420) {
                try {
                    DialogC2616n dialogC2616n = new DialogC2616n(C2274f.this.f7981g, R$style.CustomDialog4, C2274f.this.f7981g.getResources().getString(R$string.share_title_recorder), "", "", 2, this.f7990d.getFilepath());
                    dialogC2616n.setCanceledOnTouchOutside(false);
                    dialogC2616n.show();
                    Window window = dialogC2616n.getWindow();
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    window.setGravity(80);
                    WindowManager windowManager = (WindowManager) C2274f.this.f7981g.getApplicationContext().getSystemService("window");
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
            if (C2274f.this.f7984j != null) {
                C2274f.this.f7984j.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.z.f$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$d.class */
    public class DialogInterface$OnClickListenerC2278d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2278d() {
            C2274f.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.b.z.f$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$e.class */
    public class DialogInterface$OnClickListenerC2279e implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7994d;

        /* renamed from: e */
        final /* synthetic */ RecordCall f7995e;

        /* renamed from: com.allinone.callerid.b.z.f$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$e$a.class */
        class RunnableC2280a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ String f7997d;

            RunnableC2280a(String str) {
                DialogInterface$OnClickListenerC2279e.this = r4;
                this.f7997d = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C2645b.m26967d().m26968c(this.f7997d);
                    new File(this.f7997d).delete();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        DialogInterface$OnClickListenerC2279e(int i, RecordCall recordCall) {
            C2274f.this = r4;
            this.f7994d = i;
            this.f7995e = recordCall;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f7994d < C2274f.this.f7933d.size()) {
                String filepath = this.f7995e.getFilepath();
                C2274f.this.f7933d.remove(this.f7994d);
                C2274f.this.m31967i();
                C3772i0.m24190a().f12015b.execute(new RunnableC2280a(filepath));
            }
            C3810q.m24071b().m24070c("recorder_delete_click");
        }
    }

    /* renamed from: com.allinone.callerid.b.z.f$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/f$f.class */
    private class C2281f extends RecyclerView.AbstractC0905b0 {

        /* renamed from: A */
        private LinearLayout f7999A;

        /* renamed from: B */
        private FrameLayout f8000B;

        /* renamed from: C */
        private TextView f8001C;

        /* renamed from: D */
        private FrameLayout f8002D;

        /* renamed from: E */
        private RelativeLayout f8003E;

        /* renamed from: F */
        private TextView f8004F;

        /* renamed from: G */
        private ImageView f8005G;

        /* renamed from: H */
        private ImageView f8006H;

        /* renamed from: I */
        private LinearLayout f8007I;

        /* renamed from: u */
        private TextView f8009u;

        /* renamed from: v */
        private ImageView f8010v;

        /* renamed from: w */
        private TextView f8011w;

        /* renamed from: x */
        private TextView f8012x;

        /* renamed from: y */
        private TextView f8013y;

        /* renamed from: z */
        private TextView f8014z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2281f(View view) {
            super(view);
            C2274f.this = r5;
            this.f8005G = (ImageView) view.findViewById(R$id.strang_ib_filter);
            this.f8007I = (LinearLayout) view.findViewById(R$id.ll_strang_title);
            this.f8009u = (TextView) view.findViewById(R$id.strang_item_number);
            this.f8010v = (ImageView) view.findViewById(R$id.strang_item_logo);
            this.f8011w = (TextView) view.findViewById(R$id.strang_item_calltime);
            this.f8012x = (TextView) view.findViewById(R$id.strang_item_filetime);
            this.f8013y = (TextView) view.findViewById(R$id.strang_item_filesize);
            this.f8014z = (TextView) view.findViewById(R$id.strang_item_remark);
            this.f7999A = (LinearLayout) view.findViewById(R$id.strang_item_click);
            this.f8000B = (FrameLayout) view.findViewById(R$id.strang_date_top);
            this.f8001C = (TextView) view.findViewById(R$id.strang_tv_date);
            this.f8002D = (FrameLayout) view.findViewById(R$id.strang_item_content_click);
            this.f8003E = (RelativeLayout) view.findViewById(R$id.strang_item_rl_spam);
            this.f8004F = (TextView) view.findViewById(R$id.strang_item_tv_spam);
            this.f8006H = (ImageView) view.findViewById(R$id.iv_avatar);
            this.f8009u.setTypeface(r5.f7980f);
            this.f8011w.setTypeface(r5.f7980f);
            this.f8012x.setTypeface(r5.f7980f);
            this.f8013y.setTypeface(r5.f7980f);
            this.f8014z.setTypeface(r5.f7980f);
            this.f8001C.setTypeface(r5.f7980f);
            this.f8004F.setTypeface(r5.f7980f);
        }
    }

    public C2274f(Activity activity, ArrayList<RecordCall> arrayList) {
        super(activity, arrayList);
        this.f7981g = activity;
        this.f7982h = C3774j.m24169a(this.f7981g, 8.0f);
    }

    /* renamed from: J */
    public void m27749J(Context context, RecordCall recordCall, int i) {
        try {
            AlertDialog create = new AlertDialog.Builder(context).setMessage(context.getString(R$string.Are_you_sure_you_want_to_delete)).setPositiveButton(context.getResources().getString(R$string.block_delete), new DialogInterface$OnClickListenerC2279e(i, recordCall)).setNegativeButton(context.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2278d()).create();
            create.show();
            create.getButton(-1).setTextColor(context.getResources().getColor(2131099706));
            create.getButton(-2).setTextColor(context.getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: K */
    public void m27748K(RecordCall recordCall, int i) {
        try {
            View inflate = LayoutInflater.from(this.f7981g).inflate(R$layout.dialog_record_long, (ViewGroup) null);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.record_long_record_click);
            TextView textView = (TextView) inflate.findViewById(R$id.record_long_record);
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.record_long_share_clcik);
            TextView textView2 = (TextView) inflate.findViewById(R$id.record_long_share);
            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.record_long_delete_click);
            textView.setTypeface(this.f7980f);
            textView2.setTypeface(this.f7980f);
            ((TextView) inflate.findViewById(R$id.record_long_delete)).setTypeface(this.f7980f);
            View$OnClickListenerC2277c view$OnClickListenerC2277c = new View$OnClickListenerC2277c(recordCall, i);
            frameLayout.setOnClickListener(view$OnClickListenerC2277c);
            frameLayout2.setOnClickListener(view$OnClickListenerC2277c);
            frameLayout3.setOnClickListener(view$OnClickListenerC2277c);
            AlertDialog create = new AlertDialog.Builder(this.f7981g).setView(inflate).create();
            this.f7984j = create;
            create.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void mo4498p(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C2281f c2281f = (C2281f) abstractC0905b0;
        if (c2281f != null) {
            RecordCall recordCall = (RecordCall) this.f7933d.get(i);
            c2281f.f8009u.setText(recordCall.getShowName());
            if (recordCall.getPhonestatus() == 111) {
                c2281f.f8010v.setImageResource(R$drawable.ic_calllog_outgoing_nomal);
            } else {
                c2281f.f8010v.setImageResource(R$drawable.ic_calllog_incomming_normal);
            }
            c2281f.f8013y.setText(recordCall.getFilesizestring());
            String remark = recordCall.getRemark();
            if (remark != null) {
                c2281f.f8014z.setText(remark);
                c2281f.f8014z.setVisibility(0);
            } else {
                c2281f.f8014z.setVisibility(8);
            }
            c2281f.f8012x.setText(recordCall.getTimespanstring());
            c2281f.f8011w.setText(recordCall.getRecordtimems());
            if (i == 0) {
                c2281f.f8001C.setVisibility(0);
                c2281f.f8000B.setVisibility(0);
                c2281f.f8001C.setText(this.f7981g.getString(R$string.recorder_history));
            } else {
                c2281f.f8000B.setVisibility(8);
            }
            c2281f.f8002D.setOnClickListener(new View$OnClickListenerC2275a(recordCall));
            c2281f.f8002D.setOnLongClickListener(new View$OnLongClickListenerC2276b(recordCall, i));
            if (c2281f.f8005G.getVisibility() == 0) {
                c2281f.f8005G.setVisibility(8);
            }
            if (this.f7933d.size() == 1) {
                LinearLayout linearLayout = c2281f.f7999A;
                int i2 = this.f7982h;
                C3826f.m23969z(linearLayout, i2, i2, i2, i2);
                c2281f.f7999A.setBackgroundResource(R$drawable.bg_list_card);
            } else if (i == 0) {
                LinearLayout linearLayout2 = c2281f.f7999A;
                int i3 = this.f7982h;
                C3826f.m23969z(linearLayout2, i3, i3, i3, 0);
                c2281f.f7999A.setBackgroundResource(R$drawable.bg_list_card_top);
            } else if (i == this.f7933d.size() - 1) {
                LinearLayout linearLayout3 = c2281f.f7999A;
                int i4 = this.f7982h;
                C3826f.m23969z(linearLayout3, i4, 0, i4, i4);
                c2281f.f7999A.setBackgroundResource(R$drawable.bg_list_card_bottom);
            } else {
                LinearLayout linearLayout4 = c2281f.f7999A;
                int i5 = this.f7982h;
                C3826f.m23969z(linearLayout4, i5, 0, i5, 0);
                c2281f.f7999A.setBackgroundResource(R$drawable.bg_list_card_center);
            }
            if (recordCall.getNumbertype() == 101 || recordCall.getHarassstatus() != 121) {
                c2281f.f8003E.setVisibility(4);
                c2281f.f8006H.setImageResource(R$drawable.icon_gray);
                return;
            }
            c2281f.f8003E.setVisibility(0);
            c2281f.f8004F.setText(C3767h1.m24292D(this.f7981g, recordCall.getPhoneType()));
            c2281f.f8006H.setImageResource(R$drawable.ic_photo_spam);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public RecyclerView.AbstractC0905b0 mo4497r(ViewGroup viewGroup, int i) {
        return new C2281f(this.f7934e.inflate(R$layout.stranger_recorder_item, viewGroup, false));
    }
}
