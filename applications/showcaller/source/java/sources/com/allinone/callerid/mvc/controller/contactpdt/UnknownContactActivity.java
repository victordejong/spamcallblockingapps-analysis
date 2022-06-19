package com.allinone.callerid.mvc.controller.contactpdt;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CollectInfo;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.customview.AppBarStateChangeListener;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.dialog.DialogC2588f;
import com.allinone.callerid.dialog.DialogC2592i;
import com.allinone.callerid.dialog.DialogC2616n;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.controller.CallLogActivity;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.mvc.controller.comment.WriteCommentActivity;
import com.allinone.callerid.mvc.controller.report.ReportContactActivity;
import com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity;
import com.allinone.callerid.mvc.view.recorder.LTabIndicator;
import com.allinone.callerid.p136b.C2210n;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p160g.View$OnClickListenerC2649a;
import com.allinone.callerid.p160g.View$OnClickListenerC2726i;
import com.allinone.callerid.p162i.p163a.AbstractC2766a;
import com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a;
import com.allinone.callerid.p162i.p163a.p170f.C2796b;
import com.allinone.callerid.p162i.p163a.p174i.C2839c;
import com.allinone.callerid.p162i.p163a.p180k.C2879a;
import com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a;
import com.allinone.callerid.p162i.p163a.p183m.C2907b;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2939c;
import com.allinone.callerid.p162i.p163a.p187q.AbstractC2941e;
import com.allinone.callerid.p162i.p163a.p187q.C2932a;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.AsyncTaskC3851s0;
import com.allinone.callerid.util.AsyncTaskC3867v0;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.C3852t;
import com.allinone.callerid.util.C3866v;
import com.allinone.callerid.util.p204j1.C3784b;
import com.github.clans.fab.FloatingActionButton;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity.class */
public class UnknownContactActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f10746A;

    /* renamed from: B */
    private TextView f10747B;

    /* renamed from: C */
    private LinearLayout f10748C;

    /* renamed from: D */
    private ConstraintLayout f10749D;

    /* renamed from: E */
    private C3388o0 f10750E;

    /* renamed from: F */
    private boolean f10751F;

    /* renamed from: G */
    private FrameLayout f10752G;

    /* renamed from: H */
    private ImageView f10753H;

    /* renamed from: I */
    private DialogC2592i f10754I;

    /* renamed from: J */
    private AppBarLayout f10755J;

    /* renamed from: K */
    private AppBarStateChangeListener f10756K;

    /* renamed from: L */
    private LinearLayout f10757L;

    /* renamed from: M */
    private Toolbar f10758M;

    /* renamed from: N */
    private LinearLayout f10759N;

    /* renamed from: O */
    private TextView f10760O;

    /* renamed from: P */
    private ImageView f10761P;

    /* renamed from: Q */
    private ImageView f10762Q;

    /* renamed from: R */
    private ConstraintLayout f10763R;

    /* renamed from: S */
    private ImageView f10764S;

    /* renamed from: T */
    private ImageView f10765T;

    /* renamed from: U */
    private TextView f10766U;

    /* renamed from: V */
    private FrameLayout f10767V;

    /* renamed from: W */
    private ProgressBar f10768W;

    /* renamed from: X */
    private int f10769X;

    /* renamed from: Y */
    private CallLogBean f10770Y;

    /* renamed from: Z */
    private String f10771Z;

    /* renamed from: b0 */
    private String f10773b0;

    /* renamed from: c0 */
    private boolean f10774c0;

    /* renamed from: d0 */
    private ConstraintLayout f10775d0;

    /* renamed from: e0 */
    private FrameLayout f10776e0;

    /* renamed from: f0 */
    private ImageView f10777f0;

    /* renamed from: g0 */
    private boolean f10778g0;

    /* renamed from: i0 */
    private DialogInterfaceC0146a f10780i0;

    /* renamed from: j0 */
    private int f10781j0;

    /* renamed from: k0 */
    private int f10782k0;

    /* renamed from: l0 */
    private int f10783l0;

    /* renamed from: m0 */
    private int f10784m0;

    /* renamed from: n0 */
    private int f10785n0;

    /* renamed from: o0 */
    private View f10786o0;

    /* renamed from: p0 */
    private ImageView f10787p0;

    /* renamed from: q0 */
    private ImageView f10788q0;
    @SuppressLint({"NewApi", "SetJavaScriptEnabled", "SetTextI18n"})

    /* renamed from: r0 */
    private Typeface f10789r0;

    /* renamed from: s0 */
    private TextView f10790s0;

    /* renamed from: t0 */
    private View$OnClickListenerC2726i f10791t0;

    /* renamed from: u0 */
    private AbstractC3383m0 f10793u0;

    /* renamed from: v */
    private ImageView f10794v;

    /* renamed from: w */
    private ImageView f10795w;

    /* renamed from: x */
    private TextView f10796x;

    /* renamed from: y */
    private PopupWindow f10797y;

    /* renamed from: z */
    private TextView f10798z;

    /* renamed from: u */
    private final String f10792u = "UnknownContactActivity";

    /* renamed from: a0 */
    private String f10772a0 = null;

    /* renamed from: h0 */
    private Handler f10779h0 = new Handler();

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a.class */
    public class RunnableC3351a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a$a.class */
        class C3352a extends AppBarStateChangeListener {
            C3352a() {
                RunnableC3351a.this = r4;
            }

            @Override // com.allinone.callerid.customview.AppBarStateChangeListener
            /* renamed from: b */
            public void mo25359b(AppBarLayout appBarLayout, AppBarStateChangeListener.State state) {
                try {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "state:" + state);
                    }
                    if (state == AppBarStateChangeListener.State.EXPANDED) {
                        if (UnknownContactActivity.this.f10770Y.m24918Y()) {
                            UnknownContactActivity.this.f10763R.setVisibility(0);
                        } else {
                            UnknownContactActivity.this.f10749D.setVisibility(0);
                        }
                        UnknownContactActivity.this.f10760O.setVisibility(8);
                        UnknownContactActivity.this.f10796x.setVisibility(0);
                        if ((UnknownContactActivity.this.f10772a0 == null || "".equals(UnknownContactActivity.this.f10772a0)) && (UnknownContactActivity.this.f10773b0 == null || "".equals(UnknownContactActivity.this.f10773b0))) {
                            return;
                        }
                        UnknownContactActivity.this.f10790s0.setVisibility(0);
                    } else if (state == AppBarStateChangeListener.State.COLLAPSED) {
                        if (UnknownContactActivity.this.f10770Y.m24918Y()) {
                            UnknownContactActivity.this.f10763R.setVisibility(4);
                        } else {
                            UnknownContactActivity.this.f10749D.setVisibility(4);
                        }
                        if ((UnknownContactActivity.this.f10772a0 != null && !"".equals(UnknownContactActivity.this.f10772a0)) || (UnknownContactActivity.this.f10773b0 != null && !"".equals(UnknownContactActivity.this.f10773b0))) {
                            UnknownContactActivity.this.f10790s0.setVisibility(4);
                        }
                        UnknownContactActivity.this.f10760O.setVisibility(0);
                        UnknownContactActivity.this.f10796x.setVisibility(4);
                    } else {
                        if (UnknownContactActivity.this.f10770Y.m24918Y()) {
                            UnknownContactActivity.this.f10763R.setVisibility(0);
                        } else {
                            UnknownContactActivity.this.f10749D.setVisibility(0);
                        }
                        UnknownContactActivity.this.f10760O.setVisibility(8);
                        UnknownContactActivity.this.f10796x.setVisibility(0);
                        if ((UnknownContactActivity.this.f10772a0 == null || "".equals(UnknownContactActivity.this.f10772a0)) && (UnknownContactActivity.this.f10773b0 == null || "".equals(UnknownContactActivity.this.f10773b0))) {
                            return;
                        }
                        UnknownContactActivity.this.f10790s0.setVisibility(0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC3351a() {
            UnknownContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            UnknownContactActivity.this.m25393i1();
            UnknownContactActivity.this.f10756K = new C3352a();
            if (UnknownContactActivity.this.f10755J != null && UnknownContactActivity.this.f10756K != null) {
                UnknownContactActivity.this.f10755J.m5774b(UnknownContactActivity.this.f10756K);
            }
            UnknownContactActivity.this.m25395h1();
            UnknownContactActivity.this.m25377q1();
            UnknownContactActivity.this.m25409a1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$a0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0.class */
    public class C3353a0 implements AbstractC2941e {
        C3353a0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2941e
        /* renamed from: a */
        public void mo25358a(String str) {
            try {
                if (str != null) {
                    UnknownContactActivity.this.f10796x.setText(str);
                    UnknownContactActivity.this.f10749D.setVisibility(8);
                    UnknownContactActivity.this.f10770Y.m24955C0(str);
                    UnknownContactActivity.this.f10770Y.m24922V0("0");
                    UnknownContactActivity.this.f10770Y.m24878p0(true);
                    UnknownContactActivity.this.f10760O.setText(str);
                    UnknownContactActivity.this.f10763R.setVisibility(0);
                    UnknownContactActivity.this.f10767V.setVisibility(0);
                    UnknownContactActivity.this.f10752G.setVisibility(8);
                    UnknownContactActivity.this.f10776e0.setVisibility(0);
                    try {
                        if (Build.VERSION.SDK_INT >= 21) {
                            Window window = UnknownContactActivity.this.getWindow();
                            window.addFlags(Integer.MIN_VALUE);
                            window.setStatusBarColor(UnknownContactActivity.this.f10784m0);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    UnknownContactActivity.this.f10748C.setBackgroundColor(UnknownContactActivity.this.f10782k0);
                    UnknownContactActivity.this.f10795w.setImageResource(R$drawable.ic_photo_normal);
                    if (UnknownContactActivity.this.f10793u0 == null) {
                        return;
                    }
                    UnknownContactActivity.this.f10793u0.mo25355b(false, "");
                } else if (UnknownContactActivity.this.f10770Y.m24884m() != null && !"".equals(UnknownContactActivity.this.f10770Y.m24884m())) {
                    UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.f10770Y.m24884m());
                } else if (UnknownContactActivity.this.f10770Y.m24861z() != null && !"".equals(UnknownContactActivity.this.f10770Y.m24861z())) {
                    UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.f10770Y.m24861z());
                } else if (C3767h1.m24216w0(UnknownContactActivity.this.f10770Y.m24880o())) {
                    UnknownContactActivity.this.f10760O.setText(UnknownContactActivity.this.getResources().getString(R$string.unknow_call));
                    UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.getResources().getString(R$string.unknow_call));
                } else {
                    UnknownContactActivity.this.f10777f0.setVisibility(0);
                    if (UnknownContactActivity.this.f10770Y.m24906d() != null && !"".equals(UnknownContactActivity.this.f10770Y.m24906d())) {
                        UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.f10770Y.m24906d());
                    } else if (UnknownContactActivity.this.f10770Y.m24892i() == null || "".equals(UnknownContactActivity.this.f10770Y.m24892i())) {
                        UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.f10770Y.m24880o());
                    } else {
                        UnknownContactActivity.this.f10796x.setText(UnknownContactActivity.this.f10770Y.m24892i());
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b.class */
    class C3354b implements AbstractC2906a {
        C3354b() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.commented), 0).show();
                return;
            }
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("number_content", UnknownContactActivity.this.f10770Y);
            intent.putExtras(bundle);
            intent.setClass(UnknownContactActivity.this, WriteCommentActivity.class);
            UnknownContactActivity.this.startActivityForResult(intent, 300);
            UnknownContactActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$b0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b0.class */
    public class C3355b0 implements AbstractC2939c {
        C3355b0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p187q.AbstractC2939c
        /* renamed from: a */
        public void mo25357a(long j) {
            if (j != 0) {
                C3852t.m23960c(UnknownContactActivity.this, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "", R$drawable.ic_photo_normal, UnknownContactActivity.this.f10795w);
            } else if (UnknownContactActivity.this.f10770Y.m24914a() == null || "".equals(UnknownContactActivity.this.f10770Y.m24914a())) {
                UnknownContactActivity.this.f10795w.setImageResource(R$drawable.ic_photo_normal);
            } else {
                UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                C3852t.m23962a(unknownContactActivity, unknownContactActivity.f10770Y.m24914a(), R$drawable.ic_photo_normal, UnknownContactActivity.this.f10795w);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c.class */
    public class RunnableC3356c implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c$a.class */
        class RunnableC3357a implements Runnable {
            RunnableC3357a() {
                RunnableC3356c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    UnknownContactActivity.this.startActivityForResult(new Intent("android.intent.action.EDIT", Uri.parse("content://com.android.contacts/contacts/" + UnknownContactActivity.this.f10769X)), 200);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        RunnableC3356c() {
            UnknownContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
            Cursor query = contentResolver.query(Uri.parse("content://com.android.contacts/data/phones/filter/" + UnknownContactActivity.this.f10770Y.m24880o()), null, null, null, null);
            if (query != null && query.getCount() > 0) {
                query.moveToFirst();
                UnknownContactActivity.this.f10769X = query.getInt(query.getColumnIndex("contact_id"));
            }
            if (query != null) {
                query.close();
            }
            UnknownContactActivity.this.runOnUiThread(new RunnableC3357a());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0.class */
    public class C3358c0 implements AbstractC2795a {

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$a.class */
        class DialogInterface$OnClickListenerC3359a implements DialogInterface.OnClickListener {
            DialogInterface$OnClickListenerC3359a() {
                C3358c0.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b.class */
        public class DialogInterface$OnClickListenerC3360b implements DialogInterface.OnClickListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0$b$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a.class */
            public class C3361a implements AbstractC2795a {

                /* renamed from: a */
                final /* synthetic */ String f10809a;

                /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0$b$a$a */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$a.class */
                class C3362a implements AbstractC2766a {
                    C3362a() {
                        C3361a.this = r4;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        UnknownContactActivity.this.m25409a1();
                        Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.number_unblock), 0).show();
                    }
                }

                /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$c0$b$a$b */
                /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b.class */
                class C3363b implements AbstractC2766a {

                    /* renamed from: a */
                    final /* synthetic */ EZBlackList f10812a;

                    C3363b(EZBlackList eZBlackList) {
                        C3361a.this = r4;
                        this.f10812a = eZBlackList;
                    }

                    @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
                    /* renamed from: a */
                    public void mo24704a() {
                        try {
                            UnknownContactActivity.this.m25409a1();
                            Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.blocked_to_list), 0).show();
                            UnknownContactActivity.this.m25365w1(this.f10812a.getName(), UnknownContactActivity.this.f10770Y.m24880o());
                            CollectInfo collectInfo = new CollectInfo();
                            collectInfo.setNumber(UnknownContactActivity.this.f10770Y.m24880o());
                            collectInfo.setUser_blocked("1");
                            collectInfo.setUser_commented("0");
                            collectInfo.setUser_reported("0");
                            collectInfo.setUser_upload_recording("0");
                            C2839c.m26517c(EZCallApplication.m26146c(), collectInfo);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }

                C3361a(String str) {
                    DialogInterface$OnClickListenerC3360b.this = r4;
                    this.f10809a = str;
                }

                @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
                /* renamed from: a */
                public void mo24705a(boolean z) {
                    if (z) {
                        C2796b.m26584e(this.f10809a, new C3362a());
                        return;
                    }
                    C3810q.m24071b().m24070c("block_dialog_click");
                    EZBlackList eZBlackList = new EZBlackList();
                    if (UnknownContactActivity.this.f10770Y.m24884m() != null && !"".equals(UnknownContactActivity.this.f10770Y.m24884m())) {
                        eZBlackList.setName(UnknownContactActivity.this.f10770Y.m24884m());
                    } else if (UnknownContactActivity.this.f10770Y.m24861z() == null || "".equals(UnknownContactActivity.this.f10770Y.m24861z())) {
                        eZBlackList.setName("");
                    } else {
                        eZBlackList.setName(UnknownContactActivity.this.f10770Y.m24861z());
                    }
                    eZBlackList.setIs_myblock("true");
                    eZBlackList.setNumber(this.f10809a);
                    C2796b.m26588a(eZBlackList, new C3363b(eZBlackList));
                }
            }

            DialogInterface$OnClickListenerC3360b() {
                C3358c0.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    String replace = UnknownContactActivity.this.f10770Y.m24880o().replace("-", "");
                    if (replace == null || "".equals(replace)) {
                        return;
                    }
                    C2796b.m26587b(replace, new C3361a(replace));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        C3358c0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            String str;
            String str2;
            try {
                if (UnknownContactActivity.this.isFinishing()) {
                    return;
                }
                if (z) {
                    str = UnknownContactActivity.this.getResources().getString(R$string.unblock) + " " + UnknownContactActivity.this.f10770Y.m24880o();
                    str2 = UnknownContactActivity.this.getResources().getString(R$string.unblock_big);
                } else {
                    str = UnknownContactActivity.this.getResources().getString(R$string.block) + " " + UnknownContactActivity.this.f10770Y.m24880o() + " ?";
                    str2 = UnknownContactActivity.this.getResources().getString(R$string.block_big);
                }
                DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(UnknownContactActivity.this).m35567h(str).m35561n(str2, new DialogInterface$OnClickListenerC3360b()).m35565j(UnknownContactActivity.this.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3359a()).m35574a();
                m35574a.show();
                m35574a.m35577g(-1).setTextColor(UnknownContactActivity.this.f10781j0);
                m35574a.m35577g(-2).setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.btn_gray));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d.class */
    public class DialogInterface$OnClickListenerC3364d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3364d() {
            UnknownContactActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$d0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d0.class */
    public class View$OnClickListenerC3365d0 implements View.OnClickListener {
        View$OnClickListenerC3365d0() {
            UnknownContactActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id != 2131296741) {
                if (id != 2131296970) {
                    return;
                }
                C3810q.m24071b().m24070c("number_dialog_ingore");
                UnknownContactActivity.this.f10754I.dismiss();
                return;
            }
            C3810q.m24071b().m24070c("number_dialog_share");
            String str = UnknownContactActivity.this.getExternalFilesDir("") + "/share.png";
            if (C3718c0.f11914a) {
                C3718c0.m24436a("shareimage", "imageFilePath:" + str);
            }
            UnknownContactActivity.this.m25367v1(str);
            UnknownContactActivity.this.f10754I.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e.class */
    public class DialogInterface$OnClickListenerC3366e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3366e() {
            UnknownContactActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            UnknownContactActivity.this.f10768W.setVisibility(0);
            new AsyncTaskC3385n0(UnknownContactActivity.this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$e0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0.class */
    class RunnableC3367e0 implements Runnable {
        RunnableC3367e0() {
            UnknownContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int height = UnknownContactActivity.this.f10757L.getHeight();
                CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) UnknownContactActivity.this.f10758M.getLayoutParams();
                Toolbar.LayoutParams layoutParams2 = (Toolbar.LayoutParams) UnknownContactActivity.this.f10759N.getLayoutParams();
                if ((UnknownContactActivity.this.f10772a0 == null || "".equals(UnknownContactActivity.this.f10772a0)) && (UnknownContactActivity.this.f10773b0 == null || "".equals(UnknownContactActivity.this.f10773b0))) {
                    ((FrameLayout.LayoutParams) layoutParams).height = C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 12.0f) + height;
                    ((ViewGroup.MarginLayoutParams) layoutParams2).height = height + C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 12.0f);
                } else {
                    ((FrameLayout.LayoutParams) layoutParams).height = (C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 12.0f) + height) - C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 40.0f);
                    ((ViewGroup.MarginLayoutParams) layoutParams2).height = (height + C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 12.0f)) - C3774j.m24169a(UnknownContactActivity.this.getApplicationContext(), 40.0f);
                }
                UnknownContactActivity.this.f10758M.setLayoutParams(layoutParams);
                UnknownContactActivity.this.f10759N.setLayoutParams(layoutParams2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f.class */
    public class C3368f implements AbstractC2766a {
        C3368f() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            UnknownContactActivity.this.f10764S.setImageResource(R$drawable.ic_favourite_unselect_white);
            UnknownContactActivity.this.f10770Y.m24922V0("0");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$f0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f0.class */
    public class C3369f0 implements ViewPager.AbstractC1193i {
        C3369f0() {
            UnknownContactActivity.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            if (UnknownContactActivity.this.f10770Y != null && ((UnknownContactActivity.this.f10770Y.m24903e() == null || "".equals(UnknownContactActivity.this.f10770Y.m24903e())) && i == 1)) {
                C3810q.m24071b().m24070c("no_comment_tab_show");
            }
            if (i == 1 && UnknownContactActivity.this.f10775d0.getVisibility() == 0) {
                UnknownContactActivity.this.f10775d0.setVisibility(8);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g.class */
    public class C3370g implements AbstractC2766a {
        C3370g() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.AbstractC2766a
        /* renamed from: a */
        public void mo24704a() {
            UnknownContactActivity.this.f10764S.setImageResource(R$drawable.ic_favorite_select_white);
            UnknownContactActivity.this.f10770Y.m24922V0("1");
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$g0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0.class */
    public class RunnableC3371g0 implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f10821d;

        RunnableC3371g0(String str) {
            UnknownContactActivity.this = r4;
            this.f10821d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2629e.m27010d().m27005i(this.f10821d);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h.class */
    public class C3372h implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10823a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10824b;

        C3372h(RadioButton radioButton, RadioButton radioButton2) {
            UnknownContactActivity.this = r4;
            this.f10823a = radioButton;
            this.f10824b = radioButton2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f10823a.setChecked(false);
                this.f10824b.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$h0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h0.class */
    public class RunnableC3373h0 implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f10826d;

        RunnableC3373h0(String str) {
            UnknownContactActivity.this = r4;
            this.f10826d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2629e.m27010d().m27008f(this.f10826d);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i.class */
    public class C3374i implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10828a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10829b;

        C3374i(RadioButton radioButton, RadioButton radioButton2) {
            UnknownContactActivity.this = r4;
            this.f10828a = radioButton;
            this.f10829b = radioButton2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f10828a.setChecked(false);
                this.f10829b.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$i0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i0.class */
    class C3375i0 implements AbstractC2906a {
        C3375i0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.commented), 0).show();
                return;
            }
            UnknownContactActivity.this.f10797y.dismiss();
            if (UnknownContactActivity.this.f10770Y.m24941K() == null || "".equals(UnknownContactActivity.this.f10770Y.m24941K())) {
                UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                unknownContactActivity.m25361y1(unknownContactActivity.f10770Y.m24874s());
                return;
            }
            UnknownContactActivity unknownContactActivity2 = UnknownContactActivity.this;
            unknownContactActivity2.m25361y1(unknownContactActivity2.f10770Y.m24941K());
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j.class */
    public class C3376j implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10832a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10833b;

        C3376j(RadioButton radioButton, RadioButton radioButton2) {
            UnknownContactActivity.this = r4;
            this.f10832a = radioButton;
            this.f10833b = radioButton2;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f10832a.setChecked(false);
                this.f10833b.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$j0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j0.class */
    class C3377j0 implements AbstractC2906a {
        C3377j0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.reported), 0).show();
            } else if (UnknownContactActivity.this.f10770Y.m24941K() == null || "".equals(UnknownContactActivity.this.f10770Y.m24941K())) {
                UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                unknownContactActivity.m25363x1(unknownContactActivity.f10770Y.m24874s());
            } else {
                UnknownContactActivity unknownContactActivity2 = UnknownContactActivity.this;
                unknownContactActivity2.m25363x1(unknownContactActivity2.f10770Y.m24941K());
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k.class */
    public class DialogInterface$OnClickListenerC3378k implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RadioButton f10836d;

        /* renamed from: e */
        final /* synthetic */ RadioButton f10837e;

        /* renamed from: f */
        final /* synthetic */ RadioButton f10838f;

        /* renamed from: g */
        final /* synthetic */ String f10839g;

        DialogInterface$OnClickListenerC3378k(RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, String str) {
            UnknownContactActivity.this = r4;
            this.f10836d = radioButton;
            this.f10837e = radioButton2;
            this.f10838f = radioButton3;
            this.f10839g = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String str;
            try {
                if (this.f10836d.isChecked()) {
                    str = ShortCut.NAME;
                    C3810q.m24071b().m24070c("wrong_info_name");
                } else {
                    str = "";
                }
                if (this.f10837e.isChecked()) {
                    str = "spam";
                    C3810q.m24071b().m24070c("wrong_info_spam");
                }
                if (this.f10838f.isChecked()) {
                    str = "other";
                    C3810q.m24071b().m24070c("wrong_info_location");
                }
                if ("".equals(str) || UnknownContactActivity.this.f10770Y.m24943J() == null) {
                    Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.comments_not_empty), 0).show();
                    return;
                }
                UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                unknownContactActivity.m25369u1(this.f10839g, str, unknownContactActivity.f10770Y.m24943J());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$k0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k0.class */
    class C3379k0 implements AbstractC2906a {
        C3379k0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.reported), 0).show();
            } else if (UnknownContactActivity.this.f10770Y.m24941K() == null || "".equals(UnknownContactActivity.this.f10770Y.m24941K())) {
                UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                unknownContactActivity.m25363x1(unknownContactActivity.f10770Y.m24874s());
            } else {
                UnknownContactActivity unknownContactActivity2 = UnknownContactActivity.this;
                unknownContactActivity2.m25363x1(unknownContactActivity2.f10770Y.m24941K());
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l.class */
    public class C3380l implements TextWatcher {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10842d;

        /* renamed from: e */
        final /* synthetic */ RadioButton f10843e;

        /* renamed from: f */
        final /* synthetic */ RadioButton f10844f;

        /* renamed from: g */
        final /* synthetic */ RadioButton f10845g;

        /* renamed from: h */
        final /* synthetic */ TextView f10846h;

        /* renamed from: i */
        final /* synthetic */ TextView f10847i;

        /* renamed from: j */
        final /* synthetic */ TextView f10848j;

        C3380l(DeletableEditText deletableEditText, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, TextView textView, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10842d = deletableEditText;
            this.f10843e = radioButton;
            this.f10844f = radioButton2;
            this.f10845g = radioButton3;
            this.f10846h = textView;
            this.f10847i = textView2;
            this.f10848j = textView3;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if ("".equals(this.f10842d.getText().toString())) {
                this.f10843e.setChecked(false);
                this.f10844f.setChecked(false);
                this.f10845g.setChecked(false);
                this.f10846h.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10847i.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10848j.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$l0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l0.class */
    class C3381l0 implements AbstractC2906a {
        C3381l0() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            if (!z) {
                Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.reported), 0).show();
                return;
            }
            Intent intent = new Intent(UnknownContactActivity.this, ReportContactActivity.class);
            intent.putExtra("report_number", UnknownContactActivity.this.f10770Y.m24880o());
            UnknownContactActivity.this.startActivityForResult(intent, 369);
            UnknownContactActivity.this.overridePendingTransition(R$anim.in_to_down, 0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m.class */
    public class RunnableC3382m implements Runnable {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10851d;

        RunnableC3382m(DeletableEditText deletableEditText) {
            UnknownContactActivity.this = r4;
            this.f10851d = deletableEditText;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10851d.setFocusableInTouchMode(true);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$m0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0.class */
    public interface AbstractC3383m0 {
        /* renamed from: a */
        void mo25356a(boolean z);

        /* renamed from: b */
        void mo25355b(boolean z, String str);
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n.class */
    public class View$OnClickListenerC3384n implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RadioButton f10853d;

        /* renamed from: e */
        final /* synthetic */ TextView f10854e;

        /* renamed from: f */
        final /* synthetic */ DeletableEditText f10855f;

        /* renamed from: g */
        final /* synthetic */ RadioButton f10856g;

        /* renamed from: h */
        final /* synthetic */ RadioButton f10857h;

        /* renamed from: i */
        final /* synthetic */ TextView f10858i;

        /* renamed from: j */
        final /* synthetic */ TextView f10859j;

        View$OnClickListenerC3384n(RadioButton radioButton, TextView textView, DeletableEditText deletableEditText, RadioButton radioButton2, RadioButton radioButton3, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10853d = radioButton;
            this.f10854e = textView;
            this.f10855f = deletableEditText;
            this.f10856g = radioButton2;
            this.f10857h = radioButton3;
            this.f10858i = textView2;
            this.f10859j = textView3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f10853d.isChecked()) {
                this.f10853d.setChecked(false);
                this.f10854e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10855f.setText("");
                return;
            }
            this.f10853d.setChecked(true);
            this.f10856g.setChecked(false);
            this.f10857h.setChecked(false);
            this.f10855f.setText(this.f10854e.getText());
            this.f10854e.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10858i.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10859j.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$n0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0.class */
    public static class AsyncTaskC3385n0 extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<UnknownContactActivity> f10861a;

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$n0$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0$a.class */
        public class RunnableC3386a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ UnknownContactActivity f10862d;

            RunnableC3386a(UnknownContactActivity unknownContactActivity) {
                AsyncTaskC3385n0.this = r4;
                this.f10862d = unknownContactActivity;
            }

            @Override // java.lang.Runnable
            public void run() {
                UnknownContactActivity unknownContactActivity = this.f10862d;
                Toast.makeText(unknownContactActivity, unknownContactActivity.getResources().getString(R$string.delete_success), 0).show();
                Intent intent = new Intent();
                intent.setAction("com.allinone.callerid.RELOAD_DATA");
                C1764a.m28939b(this.f10862d).m28937d(intent);
                this.f10862d.finish();
                this.f10862d.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }

        AsyncTaskC3385n0(UnknownContactActivity unknownContactActivity) {
            this.f10861a = new WeakReference<>(unknownContactActivity);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            UnknownContactActivity unknownContactActivity = this.f10861a.get();
            if (unknownContactActivity == null || unknownContactActivity.isFinishing()) {
                return null;
            }
            try {
                ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                Cursor query = contentResolver.query(Uri.parse("content://com.android.contacts/data/phones/filter/" + unknownContactActivity.f10770Y.m24880o()), null, null, null, null);
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    unknownContactActivity.f10769X = query.getInt(query.getColumnIndex("contact_id"));
                }
                if (query != null) {
                    query.close();
                }
                Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, unknownContactActivity.f10769X);
                if (ContactsContract.Contacts.getLookupUri(unknownContactActivity.getContentResolver(), withAppendedId) == Uri.EMPTY) {
                    return null;
                }
                int delete = unknownContactActivity.getContentResolver().delete(withAppendedId, null, null);
                if (!C3718c0.f11914a) {
                    return null;
                }
                C3718c0.m24436a("deleteContact", "" + delete);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r7) {
            super.onPostExecute(r7);
            UnknownContactActivity unknownContactActivity = this.f10861a.get();
            if (unknownContactActivity == null || unknownContactActivity.isFinishing()) {
                return;
            }
            unknownContactActivity.f10768W.setVisibility(8);
            unknownContactActivity.f10779h0.postDelayed(new RunnableC3386a(unknownContactActivity), 300L);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o.class */
    public class View$OnClickListenerC3387o implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RadioButton f10864d;

        /* renamed from: e */
        final /* synthetic */ TextView f10865e;

        /* renamed from: f */
        final /* synthetic */ DeletableEditText f10866f;

        /* renamed from: g */
        final /* synthetic */ RadioButton f10867g;

        /* renamed from: h */
        final /* synthetic */ RadioButton f10868h;

        /* renamed from: i */
        final /* synthetic */ TextView f10869i;

        /* renamed from: j */
        final /* synthetic */ TextView f10870j;

        View$OnClickListenerC3387o(RadioButton radioButton, TextView textView, DeletableEditText deletableEditText, RadioButton radioButton2, RadioButton radioButton3, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10864d = radioButton;
            this.f10865e = textView;
            this.f10866f = deletableEditText;
            this.f10867g = radioButton2;
            this.f10868h = radioButton3;
            this.f10869i = textView2;
            this.f10870j = textView3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f10864d.isChecked()) {
                this.f10864d.setChecked(false);
                this.f10865e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10866f.setText("");
                return;
            }
            this.f10864d.setChecked(true);
            this.f10867g.setChecked(false);
            this.f10868h.setChecked(false);
            this.f10866f.setText(this.f10865e.getText());
            this.f10865e.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10869i.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10870j.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$o0 */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0.class */
    class C3388o0 extends BroadcastReceiver {
        C3388o0() {
            UnknownContactActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UnknownContactActivity.this.m25409a1();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$p.class */
    public class View$OnClickListenerC3389p implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ RadioButton f10873d;

        /* renamed from: e */
        final /* synthetic */ TextView f10874e;

        /* renamed from: f */
        final /* synthetic */ DeletableEditText f10875f;

        /* renamed from: g */
        final /* synthetic */ RadioButton f10876g;

        /* renamed from: h */
        final /* synthetic */ RadioButton f10877h;

        /* renamed from: i */
        final /* synthetic */ TextView f10878i;

        /* renamed from: j */
        final /* synthetic */ TextView f10879j;

        View$OnClickListenerC3389p(RadioButton radioButton, TextView textView, DeletableEditText deletableEditText, RadioButton radioButton2, RadioButton radioButton3, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10873d = radioButton;
            this.f10874e = textView;
            this.f10875f = deletableEditText;
            this.f10876g = radioButton2;
            this.f10877h = radioButton3;
            this.f10878i = textView2;
            this.f10879j = textView3;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f10873d.isChecked()) {
                this.f10873d.setChecked(false);
                this.f10874e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10875f.setText("");
                return;
            }
            this.f10873d.setChecked(true);
            this.f10876g.setChecked(false);
            this.f10877h.setChecked(false);
            this.f10875f.setText(this.f10878i.getText());
            this.f10878i.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10874e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10879j.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q.class */
    public class C3390q implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10881a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10882b;

        /* renamed from: c */
        final /* synthetic */ DeletableEditText f10883c;

        /* renamed from: d */
        final /* synthetic */ TextView f10884d;

        /* renamed from: e */
        final /* synthetic */ TextView f10885e;

        /* renamed from: f */
        final /* synthetic */ TextView f10886f;

        C3390q(RadioButton radioButton, RadioButton radioButton2, DeletableEditText deletableEditText, TextView textView, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10881a = radioButton;
            this.f10882b = radioButton2;
            this.f10883c = deletableEditText;
            this.f10884d = textView;
            this.f10885e = textView2;
            this.f10886f = textView3;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                this.f10884d.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10883c.setText("");
                return;
            }
            this.f10881a.setChecked(false);
            this.f10882b.setChecked(false);
            this.f10883c.setText(this.f10884d.getText());
            this.f10884d.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10885e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10886f.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$r.class */
    public class C3391r implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10888a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10889b;

        /* renamed from: c */
        final /* synthetic */ DeletableEditText f10890c;

        /* renamed from: d */
        final /* synthetic */ TextView f10891d;

        /* renamed from: e */
        final /* synthetic */ TextView f10892e;

        /* renamed from: f */
        final /* synthetic */ TextView f10893f;

        C3391r(RadioButton radioButton, RadioButton radioButton2, DeletableEditText deletableEditText, TextView textView, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10888a = radioButton;
            this.f10889b = radioButton2;
            this.f10890c = deletableEditText;
            this.f10891d = textView;
            this.f10892e = textView2;
            this.f10893f = textView3;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                this.f10891d.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10890c.setText("");
                return;
            }
            this.f10888a.setChecked(false);
            this.f10889b.setChecked(false);
            this.f10890c.setText(this.f10891d.getText());
            this.f10891d.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10892e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10893f.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$s.class */
    public class C3392s implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10895a;

        /* renamed from: b */
        final /* synthetic */ RadioButton f10896b;

        /* renamed from: c */
        final /* synthetic */ DeletableEditText f10897c;

        /* renamed from: d */
        final /* synthetic */ TextView f10898d;

        /* renamed from: e */
        final /* synthetic */ TextView f10899e;

        /* renamed from: f */
        final /* synthetic */ TextView f10900f;

        C3392s(RadioButton radioButton, RadioButton radioButton2, DeletableEditText deletableEditText, TextView textView, TextView textView2, TextView textView3) {
            UnknownContactActivity.this = r4;
            this.f10895a = radioButton;
            this.f10896b = radioButton2;
            this.f10897c = deletableEditText;
            this.f10898d = textView;
            this.f10899e = textView2;
            this.f10900f = textView3;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                this.f10898d.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
                this.f10897c.setText("");
                return;
            }
            this.f10895a.setChecked(false);
            this.f10896b.setChecked(false);
            this.f10897c.setText(this.f10898d.getText());
            this.f10898d.setTextColor(UnknownContactActivity.this.f10781j0);
            this.f10899e.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
            this.f10900f.setTextColor(UnknownContactActivity.this.getResources().getColor(R$color.tv_normal));
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$t.class */
    public class C3393t implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10902a;

        C3393t(RadioButton radioButton) {
            UnknownContactActivity.this = r4;
            this.f10902a = radioButton;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f10902a.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$u */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$u.class */
    public class C3394u implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioButton f10904a;

        C3394u(RadioButton radioButton) {
            UnknownContactActivity.this = r4;
            this.f10904a = radioButton;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f10904a.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$v */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v.class */
    public class C3395v implements AbstractC2795a {
        C3395v() {
            UnknownContactActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p170f.AbstractC2795a
        /* renamed from: a */
        public void mo24705a(boolean z) {
            try {
                if (z) {
                    UnknownContactActivity.this.f10798z.setText(UnknownContactActivity.this.getResources().getString(R$string.unblock));
                    UnknownContactActivity.this.f10753H.setImageResource(R$drawable.ic_blocked);
                    UnknownContactActivity.this.f10746A.setText(UnknownContactActivity.this.getResources().getString(R$string.unblock));
                    UnknownContactActivity.this.f10765T.setImageResource(R$drawable.ic_blocked);
                    UnknownContactActivity.this.f10766U.setText(UnknownContactActivity.this.getResources().getString(R$string.unblock));
                    if (UnknownContactActivity.this.f10793u0 != null) {
                        UnknownContactActivity.this.f10793u0.mo25356a(true);
                    }
                } else {
                    UnknownContactActivity.this.f10798z.setText(UnknownContactActivity.this.getResources().getString(R$string.block));
                    UnknownContactActivity.this.f10753H.setImageResource(R$drawable.ic_block_white);
                    UnknownContactActivity.this.f10746A.setText(UnknownContactActivity.this.getResources().getString(R$string.block));
                    UnknownContactActivity.this.f10765T.setImageResource(R$drawable.ic_block_white);
                    UnknownContactActivity.this.f10766U.setText(UnknownContactActivity.this.getResources().getString(R$string.block));
                    if (UnknownContactActivity.this.f10793u0 != null) {
                        UnknownContactActivity.this.f10793u0.mo25356a(false);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$w */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$w.class */
    public class View$OnClickListenerC3396w implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ DeletableEditText f10907d;

        /* renamed from: e */
        final /* synthetic */ RadioButton f10908e;

        /* renamed from: f */
        final /* synthetic */ RadioButton f10909f;

        /* renamed from: g */
        final /* synthetic */ String f10910g;

        View$OnClickListenerC3396w(DeletableEditText deletableEditText, RadioButton radioButton, RadioButton radioButton2, String str) {
            UnknownContactActivity.this = r4;
            this.f10907d = deletableEditText;
            this.f10908e = radioButton;
            this.f10909f = radioButton2;
            this.f10910g = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                String obj = this.f10907d.getText().toString();
                if (obj == null || "".equals(obj)) {
                    Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.name_empty), 0).show();
                } else if (obj.length() > 100) {
                    Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.comments_long), 0).show();
                } else {
                    String str = this.f10908e.isChecked() ? "company" : ShortCut.NAME;
                    if (this.f10909f.isChecked()) {
                        str = ShortCut.NAME;
                    }
                    String m24943J = UnknownContactActivity.this.f10770Y.m24943J();
                    if (m24943J != null && !"".equals(C3767h1.m24259b(obj))) {
                        UnknownContactActivity.this.m25373s1(this.f10910g, C3767h1.m24259b(obj), str, m24943J);
                    }
                    UnknownContactActivity.this.f10796x.setText(obj);
                    UnknownContactActivity unknownContactActivity = UnknownContactActivity.this;
                    unknownContactActivity.m25411Z0(unknownContactActivity.f10770Y.m24874s(), obj);
                    UnknownContactActivity unknownContactActivity2 = UnknownContactActivity.this;
                    unknownContactActivity2.m25375r1(unknownContactActivity2.f10770Y.m24880o());
                    Toast.makeText(UnknownContactActivity.this.getApplicationContext(), UnknownContactActivity.this.getResources().getString(R$string.tnanks_improving), 0).show();
                    if (UnknownContactActivity.this.f10780i0 == null) {
                        return;
                    }
                    UnknownContactActivity.this.f10780i0.dismiss();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$x */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x.class */
    public class View$OnClickListenerC3397x implements View.OnClickListener {
        View$OnClickListenerC3397x() {
            UnknownContactActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UnknownContactActivity.this.f10780i0 != null) {
                UnknownContactActivity.this.f10780i0.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$y */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y.class */
    public class RunnableC3398y implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f10913d;

        /* renamed from: e */
        final /* synthetic */ String f10914e;

        /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$y$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y$a.class */
        class RunnableC3399a implements Runnable {
            RunnableC3399a() {
                RunnableC3398y.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C3767h1.m24279J0(UnknownContactActivity.this.getApplicationContext());
            }
        }

        RunnableC3398y(String str, String str2) {
            UnknownContactActivity.this = r4;
            this.f10913d = str;
            this.f10914e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(this.f10913d);
                if (m26999d != null) {
                    m26999d.setName(this.f10914e);
                    C2631f.m27001b().m26998e(m26999d, ShortCut.NAME);
                }
                UnknownContactActivity.this.runOnUiThread(new RunnableC3399a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity$z */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$z.class */
    class RunnableC3400z implements Runnable {
        RunnableC3400z() {
            UnknownContactActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                UnknownContactActivity.this.m25379p1();
                UnknownContactActivity.this.m25381o1();
                C3767h1.m24279J0(UnknownContactActivity.this.getApplicationContext());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: Z0 */
    public void m25411Z0(String str, String str2) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3398y(str, str2));
    }

    /* renamed from: a1 */
    public void m25409a1() {
        try {
            CallLogBean callLogBean = this.f10770Y;
            if (callLogBean == null || callLogBean.m24880o() == null || "".equals(this.f10770Y.m24880o())) {
                return;
            }
            C2796b.m26587b(this.f10770Y.m24880o(), new C3395v());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b1 */
    private void m25407b1() {
        try {
            if (!C3714b1.m24448j(this)) {
                C3809p0.m24078a(getApplicationContext(), this.f10770Y.m24880o());
            } else if (C3711a1.m24639G()) {
                C3714b1.m24454d(this, C3711a1.m24504p(), this.f10770Y.m24880o());
            } else if (Build.VERSION.SDK_INT >= 22) {
                C3714b1.m24439s(this, this.f10770Y.m24880o());
            } else {
                C3809p0.m24078a(getApplicationContext(), this.f10770Y.m24880o());
            }
        } catch (Exception e) {
            Toast.makeText(this, getResources().getString(R$string.no_phone_related), 1).show();
        }
    }

    /* renamed from: c1 */
    private void m25405c1() {
        CallLogBean callLogBean;
        C3810q.m24071b().m24070c("btn_favorite");
        try {
            callLogBean = this.f10770Y;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (callLogBean != null && callLogBean.m24952E() != null && !"".equals(this.f10770Y.m24952E())) {
            if (this.f10770Y.m24952E().equals("1")) {
                Toast.makeText(getApplicationContext(), getResources().getString(R$string.remove_fav), 0).show();
                try {
                    C2879a.m26474b(this.f10770Y.m24868v(), new C3368f());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else {
                Toast.makeText(getApplicationContext(), getResources().getString(R$string.add_fav), 0).show();
                try {
                    C2879a.m26475a(this.f10770Y.m24868v(), new C3370g());
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            e.printStackTrace();
        }
    }

    /* renamed from: d1 */
    private void m25403d1() {
        try {
            if (isFinishing()) {
                return;
            }
            DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35567h(getResources().getString(R$string.delete_contact_aio)).m35561n(getResources().getString(R$string.delete_dialog), new DialogInterface$OnClickListenerC3366e()).m35565j(getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC3364d()).m35574a();
            m35574a.show();
            m35574a.m35577g(-1).setTextColor(this.f10781j0);
            m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e1 */
    private void m25401e1() {
        C3772i0.m24190a().f12015b.execute(new RunnableC3356c());
    }

    /* renamed from: g1 */
    private void m25397g1() {
        getWindow().getDecorView().post(new RunnableC3351a());
    }

    /* renamed from: h1 */
    public void m25395h1() {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.popuwindow_contact, (ViewGroup) null);
            this.f10776e0 = (FrameLayout) inflate.findViewById(R$id.fl_edit_contact);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_delete_contact);
            this.f10767V = frameLayout;
            frameLayout.setVisibility(8);
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_copy);
            frameLayout2.setVisibility(0);
            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.fl_search_by_google);
            frameLayout3.setVisibility(0);
            this.f10752G = (FrameLayout) inflate.findViewById(R$id.fl_wrong_info);
            if (this.f10770Y.m24861z() == null || "".equals(this.f10770Y.m24861z())) {
                this.f10752G.setVisibility(8);
            } else {
                this.f10752G.setVisibility(0);
            }
            FrameLayout frameLayout4 = (FrameLayout) inflate.findViewById(R$id.fl_block);
            this.f10798z = (TextView) inflate.findViewById(R$id.tv_block);
            ((TextView) inflate.findViewById(R$id.tv_search_by_google)).setTypeface(this.f10789r0);
            this.f10798z.setTypeface(this.f10789r0);
            ((TextView) inflate.findViewById(R$id.tv_copy)).setTypeface(this.f10789r0);
            frameLayout2.setOnClickListener(this);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_wrong_info);
            ((TextView) inflate.findViewById(R$id.tv_edit_contact)).setTypeface(this.f10789r0);
            textView.setTypeface(this.f10789r0);
            FrameLayout frameLayout5 = (FrameLayout) inflate.findViewById(R$id.fl_share);
            ((TextView) inflate.findViewById(R$id.tv_share)).setTypeface(this.f10789r0);
            frameLayout5.setVisibility(0);
            frameLayout5.setOnClickListener(this);
            this.f10752G.setOnClickListener(this);
            this.f10776e0.setOnClickListener(this);
            this.f10767V.setOnClickListener(this);
            frameLayout4.setOnClickListener(this);
            frameLayout3.setOnClickListener(this);
            this.f10797y = new PopupWindow(inflate);
            this.f10797y.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 2);
            this.f10797y.setHeight(-2);
            this.f10797y.setFocusable(true);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                this.f10797y.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                this.f10797y.setAnimationStyle(R$style.pop_style);
            }
            this.f10797y.setBackgroundDrawable(new ColorDrawable(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i1 */
    public void m25393i1() {
        this.f10789r0 = C3739f1.m24359b();
        this.f10781j0 = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        this.f10782k0 = C3719c1.m24432a(this, R$attr.color_number_pdt_normal_bg, 2131099706);
        this.f10783l0 = C3719c1.m24432a(this, R$attr.color_number_pdt_sapm_bg, R$color.spam);
        this.f10784m0 = C3719c1.m24432a(this, 2130968846, 2131099707);
        this.f10785n0 = C3719c1.m24432a(this, R$attr.color_number_pdt_sapm_title_bar_bg, R$color.spam_title);
        this.f10763R = (ConstraintLayout) findViewById(R$id.ll_contact);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_favorite);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.fl_call);
        FrameLayout frameLayout3 = (FrameLayout) findViewById(R$id.fl_msg);
        FrameLayout frameLayout4 = (FrameLayout) findViewById(R$id.fl_add_block);
        this.f10764S = (ImageView) findViewById(R$id.im_favorite);
        this.f10765T = (ImageView) findViewById(R$id.iv_block);
        this.f10766U = (TextView) findViewById(R$id.tv_block1);
        this.f10768W = (ProgressBar) findViewById(R$id.progress_search);
        this.f10787p0 = (ImageView) findViewById(R$id.iv_callscreen);
        this.f10788q0 = (ImageView) findViewById(R$id.iv_bg);
        ViewPager viewPager = (ViewPager) findViewById(R$id.viewpager);
        LTabIndicator lTabIndicator = (LTabIndicator) findViewById(R$id.indicator);
        this.f10775d0 = (ConstraintLayout) findViewById(R$id.ll_comment_tip);
        this.f10786o0 = findViewById(R$id.view_line);
        C2210n c2210n = new C2210n(m32877A());
        View$OnClickListenerC2726i view$OnClickListenerC2726i = new View$OnClickListenerC2726i();
        this.f10791t0 = view$OnClickListenerC2726i;
        c2210n.m27854y(view$OnClickListenerC2726i, getString(R$string.detail));
        c2210n.m27854y(new View$OnClickListenerC2649a(), getString(R$string.comments_tip));
        viewPager.setAdapter(c2210n);
        lTabIndicator.f11390B = 16;
        lTabIndicator.f11412s = 0;
        lTabIndicator.f11411r = C3719c1.m24432a(this, R$attr.color_tips, R$color.color_999999);
        lTabIndicator.f11410q = C3719c1.m24432a(this, R$attr.color_333333, R$color.color_333333);
        lTabIndicator.setIndicatorColor(C3719c1.m24432a(this, R$attr.color_tab_indicator, R$color.color_999999));
        lTabIndicator.setViewPager(viewPager);
        frameLayout.setOnClickListener(this);
        frameLayout2.setOnClickListener(this);
        frameLayout3.setOnClickListener(this);
        frameLayout4.setOnClickListener(this);
        this.f10787p0.setOnClickListener(this);
        ((FloatingActionButton) findViewById(R$id.float_comments)).setOnClickListener(this);
        if (this.f10774c0) {
            viewPager.setCurrentItem(1);
        }
        this.f10748C = (LinearLayout) findViewById(R$id.rl_bg);
        this.f10755J = (AppBarLayout) findViewById(R$id.appbarlayout);
        this.f10758M = (Toolbar) findViewById(R$id.toolbar);
        this.f10759N = (LinearLayout) findViewById(R$id.rl_unkonwn);
        this.f10749D = (ConstraintLayout) findViewById(R$id.ll_contact_make);
        ImageView imageView = (ImageView) findViewById(R$id.lb_contact_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f10794v = (ImageView) findViewById(R$id.lb_contact_more);
        this.f10760O = (TextView) findViewById(R$id.tv_title_name);
        this.f10795w = (ImageView) findViewById(R$id.ic_contact_icon);
        this.f10753H = (ImageView) findViewById(R$id.im_add_block);
        FrameLayout frameLayout5 = (FrameLayout) findViewById(R$id.btn_add_block);
        FrameLayout frameLayout6 = (FrameLayout) findViewById(R$id.btn_add_contact);
        FrameLayout frameLayout7 = (FrameLayout) findViewById(R$id.btn_suggest);
        FrameLayout frameLayout8 = (FrameLayout) findViewById(R$id.btn_add_report);
        this.f10757L = (LinearLayout) findViewById(R$id.ll_name);
        this.f10761P = (ImageView) findViewById(R$id.iv_sim1);
        this.f10762Q = (ImageView) findViewById(R$id.iv_sim2);
        this.f10761P.setVisibility(8);
        this.f10762Q.setVisibility(8);
        imageView.setOnClickListener(this);
        this.f10794v.setOnClickListener(this);
        frameLayout5.setOnClickListener(this);
        frameLayout6.setOnClickListener(this);
        frameLayout7.setOnClickListener(this);
        frameLayout8.setOnClickListener(this);
        this.f10796x = (TextView) findViewById(R$id.tv_name_number);
        ImageView imageView2 = (ImageView) findViewById(R$id.iv_suggest_name);
        this.f10777f0 = imageView2;
        imageView2.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R$id.tv_add_contact);
        this.f10746A = (TextView) findViewById(R$id.tv_add_is_block);
        this.f10747B = (TextView) findViewById(R$id.tv_add_tag);
        TextView textView2 = (TextView) findViewById(R$id.tv_add_suggest);
        TextView textView3 = (TextView) findViewById(R$id.child_type);
        this.f10790s0 = textView3;
        textView3.setTypeface(this.f10789r0);
        this.f10796x.setTypeface(this.f10789r0);
        textView.setTypeface(this.f10789r0);
        this.f10746A.setTypeface(this.f10789r0);
        this.f10747B.setTypeface(this.f10789r0);
        textView2.setTypeface(this.f10789r0);
        this.f10760O.setTypeface(this.f10789r0);
        String str = this.f10772a0;
        if (str != null) {
            if (!"".equals(str)) {
                this.f10790s0.setOnClickListener(this);
                this.f10790s0.setVisibility(0);
                this.f10790s0.setText(this.f10772a0);
            }
            String str2 = this.f10772a0;
            if (str2 != null && !"".equals(str2)) {
                this.f10747B.setText(getResources().getString(R$string.block_edit));
            }
        }
        viewPager.m30744c(new C3369f0());
    }

    /* renamed from: j1 */
    private void m25391j1(Context context, String str) {
        if (C3767h1.m24261a(context)) {
            String m24265W = C3767h1.m24265W(EZCallApplication.m26146c());
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            String iso_code = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code();
            String m24082e = C3806p.m24082e(context);
            String m24271Q = C3767h1.m24271Q(EZCallApplication.m26146c(), m24082e);
            String m23912c = C3866v.m23912c(str);
            if (iso_code == null || "".equals(iso_code) || m24265W == null || "".equals(m24265W) || country_code == null || "".equals(country_code) || m24271Q == null || "".equals(m24271Q) || m23912c == null || "".equals(m23912c)) {
                return;
            }
            new AsyncTaskC3851s0("android", m24265W, country_code, m24082e, m24271Q, iso_code.split("/")[0].toLowerCase(), m23912c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: k1 */
    private void m25389k1(Context context, String str) {
        try {
            if (this.f10770Y == null || !C3767h1.m24261a(context)) {
                Toast.makeText(getApplicationContext(), (int) R$string.search_desc, 0).show();
            } else {
                Toast.makeText(context, getResources().getString(R$string.tnanks_improving), 0).show();
                m25371t1(this.f10770Y.m24880o());
                String m24265W = C3767h1.m24265W(EZCallApplication.m26146c());
                String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
                String iso_code = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code();
                String m24082e = C3806p.m24082e(context);
                String m24271Q = C3767h1.m24271Q(EZCallApplication.m26146c(), m24082e);
                String m23912c = C3866v.m23912c(str);
                if (iso_code != null && !"".equals(iso_code) && m24265W != null && !"".equals(m24265W) && country_code != null && !"".equals(country_code) && m24271Q != null && !"".equals(m24271Q) && m23912c != null && !"".equals(m23912c)) {
                    new AsyncTaskC3867v0("android", m24265W, country_code, m24082e, m24271Q, iso_code.split("/")[0].toLowerCase(), m23912c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l1 */
    private void m25387l1() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType("vnd.android-dir/mms-sms");
            intent.setData(Uri.parse("smsto:" + this.f10770Y.m24880o()));
            intent.addFlags(268468224);
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        C3810q.m24071b().m24070c("btn_contact_sms");
    }

    /* renamed from: m1 */
    private void m25385m1() {
        try {
            if (!C3711a1.m24469x2().booleanValue()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && i < 28 && !C3784b.m24142d(getApplicationContext())) {
                    DialogC2588f dialogC2588f = new DialogC2588f(this, R$style.CustomDialog4);
                    dialogC2588f.setCanceledOnTouchOutside(false);
                    dialogC2588f.show();
                }
            }
            C2796b.m26587b(this.f10770Y.m24880o(), new C3358c0());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: o1 */
    public void m25381o1() {
        CallLogBean callLogBean = this.f10770Y;
        if (callLogBean == null || callLogBean.m24880o() == null || "".equals(this.f10770Y.m24880o())) {
            return;
        }
        C2932a.m26395a(this.f10770Y.m24880o(), new C3355b0());
    }

    /* renamed from: p1 */
    public void m25379p1() {
        C2932a.m26394b(this.f10770Y.m24880o(), new C3353a0());
    }

    /* renamed from: q1 */
    public void m25377q1() {
        try {
            CallLogBean callLogBean = this.f10770Y;
            if (callLogBean == null) {
                return;
            }
            C3767h1.m24216w0(callLogBean.m24880o());
            if (this.f10770Y.m24932P() == null || "".equals(this.f10770Y.m24932P()) || this.f10770Y.m24864x() == null || this.f10770Y.m24864x().equals("0")) {
                this.f10790s0.setBackgroundResource(R$drawable.shape_keyword_bg);
                this.f10790s0.setTextColor(getResources().getColor(2131099706));
            }
            if ((this.f10770Y.m24903e() == null || "".equals(this.f10770Y.m24903e())) && C3711a1.m24489s2().booleanValue()) {
                this.f10775d0.setVisibility(0);
                C3711a1.m24620K2(Boolean.FALSE);
            }
            String m24888k = this.f10770Y.m24888k();
            this.f10773b0 = m24888k;
            if (m24888k != null && !"".equals(m24888k) && this.f10790s0.getVisibility() == 8) {
                this.f10790s0.setVisibility(0);
                this.f10790s0.setText(this.f10773b0);
            }
            if (C3714b1.m24448j(this)) {
                try {
                    if (this.f10770Y.m24956C().equals("0")) {
                        this.f10761P.setVisibility(0);
                    } else if (this.f10770Y.m24956C().equals("1")) {
                        this.f10762Q.setVisibility(0);
                    } else {
                        this.f10761P.setVisibility(8);
                        this.f10762Q.setVisibility(8);
                    }
                } catch (Exception e) {
                }
            } else {
                this.f10761P.setVisibility(8);
                this.f10762Q.setVisibility(8);
            }
            CallLogBean callLogBean2 = this.f10770Y;
            int i = 2131231156;
            if (callLogBean2 != null) {
                i = 2131231156;
                if (callLogBean2.m24932P() != null) {
                    i = 2131231156;
                    if (!"".equals(this.f10770Y.m24932P())) {
                        i = 2131231156;
                        if (this.f10770Y.m24864x() != null) {
                            i = 2131231156;
                            if (!this.f10770Y.m24864x().equals("0")) {
                                this.f10748C.setBackgroundColor(this.f10783l0);
                                this.f10786o0.setVisibility(8);
                                this.f10795w.setImageResource(R$drawable.ic_photo_spam);
                                i = 2131231157;
                            }
                        }
                    }
                }
            }
            if (this.f10770Y.m24914a() != null && !"".equals(this.f10770Y.m24914a())) {
                C3852t.m23962a(this, this.f10770Y.m24914a(), i, this.f10795w);
            }
            if (this.f10770Y.m24884m() != null && !"".equals(this.f10770Y.m24884m())) {
                this.f10796x.setText(this.f10770Y.m24884m());
                this.f10760O.setText(this.f10770Y.m24884m());
            } else if (this.f10770Y.m24861z() != null && !"".equals(this.f10770Y.m24861z())) {
                this.f10796x.setText(this.f10770Y.m24861z());
                this.f10760O.setText(this.f10770Y.m24861z());
            } else if (C3767h1.m24216w0(this.f10770Y.m24880o())) {
                this.f10760O.setText(getResources().getString(R$string.unknow_call));
                this.f10796x.setText(getResources().getString(R$string.unknow_call));
            } else {
                this.f10777f0.setVisibility(0);
                if (this.f10770Y.m24906d() != null && !"".equals(this.f10770Y.m24906d())) {
                    this.f10760O.setText(this.f10770Y.m24906d());
                    this.f10796x.setText(this.f10770Y.m24906d());
                } else if (this.f10770Y.m24892i() == null || "".equals(this.f10770Y.m24892i())) {
                    this.f10760O.setText(this.f10770Y.m24880o());
                    this.f10796x.setText(this.f10770Y.m24880o());
                } else {
                    this.f10760O.setText(this.f10770Y.m24892i());
                    this.f10796x.setText(this.f10770Y.m24892i());
                }
                C3810q.m24071b().m24070c("unknown_name_show");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: r1 */
    public void m25375r1(String str) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3373h0(str));
    }

    /* renamed from: s1 */
    public void m25373s1(String str, String str2, String str3, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tel_number", str);
            jSONObject.put(ShortCut.NAME, str2);
            jSONObject.put("type", str3);
            jSONObject.put("t_p", str4);
            String jSONObject2 = jSONObject.toString();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("reportName", jSONObject2);
            }
            m25391j1(getApplicationContext(), jSONObject2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: t1 */
    private void m25371t1(String str) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3371g0(str));
    }

    /* renamed from: u1 */
    public void m25369u1(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tel_number", str);
            jSONObject.put("wrong_type", str2);
            jSONObject.put("t_p", C3767h1.m24251f(str3));
            String jSONObject2 = jSONObject.toString();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("reportWrongInfo", jSONObject2);
            }
            m25389k1(getApplicationContext(), jSONObject2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: v1 */
    public void m25367v1(String str) {
        try {
            DialogC2616n dialogC2616n = new DialogC2616n(this, R$style.CustomDialog4, getResources().getString(R$string.share_title_block), getResources().getString(R$string.share_subject), getResources().getString(R$string.number_share_content), 1, str);
            dialogC2616n.setCanceledOnTouchOutside(false);
            dialogC2616n.show();
            Window window = dialogC2616n.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            window.setGravity(80);
            WindowManager windowManager = (WindowManager) getApplicationContext().getApplicationContext().getSystemService("window");
            int width = windowManager.getDefaultDisplay().getWidth();
            int height = windowManager.getDefaultDisplay().getHeight();
            attributes.width = width;
            attributes.height = height / 2;
            window.setAttributes(attributes);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: w1 */
    public void m25365w1(String str, String str2) {
        try {
            this.f10754I = new DialogC2592i(this, R$style.CustomDialog4, new View$OnClickListenerC3365d0(), str, str2);
            C3810q.m24071b().m24070c("number_dialog_show");
            this.f10754I.setCanceledOnTouchOutside(false);
            this.f10754I.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x1 */
    public void m25363x1(String str) {
        Exception e;
        try {
            ArrayList arrayList = new ArrayList();
            try {
                String m24882n = this.f10770Y.m24882n();
                if (m24882n != null && !"".equals(m24882n)) {
                    JSONArray jSONArray = new JSONArray(m24882n);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_suggest_name, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_suggest_title);
            textView.setTypeface(C3739f1.m24359b());
            DeletableEditText deletableEditText = (DeletableEditText) inflate.findViewById(R$id.edit_name);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_name1);
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(R$id.fl_name2);
            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(R$id.fl_name3);
            RadioButton radioButton = (RadioButton) inflate.findViewById(R$id.radio_name1);
            RadioButton radioButton2 = (RadioButton) inflate.findViewById(R$id.radio_name2);
            RadioButton radioButton3 = (RadioButton) inflate.findViewById(R$id.radio_name3);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_name1);
            TextView textView3 = (TextView) inflate.findViewById(R$id.tv_name2);
            TextView textView4 = (TextView) inflate.findViewById(R$id.tv_name3);
            textView2.setTypeface(C3739f1.m24359b());
            textView3.setTypeface(C3739f1.m24359b());
            textView4.setTypeface(C3739f1.m24359b());
            ((TextView) inflate.findViewById(R$id.tv_btn)).setTypeface(C3739f1.m24359b());
            deletableEditText.addTextChangedListener(new C3380l(deletableEditText, radioButton, radioButton2, radioButton3, textView2, textView3, textView4));
            deletableEditText.setTypeface(C3739f1.m24359b());
            this.f10779h0.postDelayed(new RunnableC3382m(deletableEditText), 1000L);
            if (arrayList.size() > 0) {
                if (arrayList.size() == 1) {
                    textView2.setText((CharSequence) arrayList.get(0));
                    frameLayout.setVisibility(0);
                }
                if (arrayList.size() == 2) {
                    textView2.setText((CharSequence) arrayList.get(0));
                    frameLayout.setVisibility(0);
                    textView3.setText((CharSequence) arrayList.get(1));
                    frameLayout2.setVisibility(0);
                }
                if (arrayList.size() == 3) {
                    textView2.setText((CharSequence) arrayList.get(0));
                    frameLayout.setVisibility(0);
                    textView3.setText((CharSequence) arrayList.get(1));
                    frameLayout2.setVisibility(0);
                    textView4.setText((CharSequence) arrayList.get(2));
                    frameLayout3.setVisibility(0);
                }
            } else {
                textView.setText(getResources().getString(R$string.suggest_name_title));
            }
            try {
                frameLayout.setOnClickListener(new View$OnClickListenerC3384n(radioButton, textView2, deletableEditText, radioButton2, radioButton3, textView3, textView4));
                frameLayout2.setOnClickListener(new View$OnClickListenerC3387o(radioButton2, textView3, deletableEditText, radioButton, radioButton3, textView2, textView4));
                frameLayout3.setOnClickListener(new View$OnClickListenerC3389p(radioButton3, textView2, deletableEditText, radioButton2, radioButton, textView4, textView3));
                radioButton.setOnCheckedChangeListener(new C3390q(radioButton2, radioButton3, deletableEditText, textView2, textView4, textView3));
                radioButton2.setOnCheckedChangeListener(new C3391r(radioButton, radioButton3, deletableEditText, textView3, textView4, textView2));
                radioButton3.setOnCheckedChangeListener(new C3392s(radioButton2, radioButton, deletableEditText, textView4, textView2, textView3));
                RadioButton radioButton4 = (RadioButton) inflate.findViewById(R$id.radio_business);
                RadioButton radioButton5 = (RadioButton) inflate.findViewById(R$id.radio_person);
                radioButton4.setTypeface(C3739f1.m24359b());
                radioButton5.setTypeface(C3739f1.m24359b());
                try {
                    radioButton4.setOnCheckedChangeListener(new C3393t(radioButton5));
                    radioButton5.setOnCheckedChangeListener(new C3394u(radioButton4));
                    ImageView imageView = (ImageView) inflate.findViewById(R$id.lb_close);
                    ((FrameLayout) inflate.findViewById(R$id.btn_submit)).setOnClickListener(new View$OnClickListenerC3396w(deletableEditText, radioButton4, radioButton5, str));
                    imageView.setOnClickListener(new View$OnClickListenerC3397x());
                    if (isFinishing()) {
                        return;
                    }
                    DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35557r(inflate).m35574a();
                    this.f10780i0 = m35574a;
                    m35574a.show();
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                }
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Exception e5) {
            e = e5;
            e.printStackTrace();
        }
    }

    /* renamed from: y1 */
    public void m25361y1(String str) {
        try {
            View inflate = LayoutInflater.from(this).inflate(R$layout.view_dialog_wrong_info, (ViewGroup) null);
            RadioButton radioButton = (RadioButton) inflate.findViewById(R$id.radio_name);
            RadioButton radioButton2 = (RadioButton) inflate.findViewById(R$id.radio_not_spam);
            RadioButton radioButton3 = (RadioButton) inflate.findViewById(R$id.radio_other);
            radioButton.setTypeface(this.f10789r0);
            radioButton2.setTypeface(this.f10789r0);
            radioButton3.setTypeface(this.f10789r0);
            if (!this.f10751F) {
                radioButton2.setVisibility(8);
            }
            radioButton.setOnCheckedChangeListener(new C3372h(radioButton2, radioButton3));
            radioButton2.setOnCheckedChangeListener(new C3374i(radioButton, radioButton3));
            radioButton3.setOnCheckedChangeListener(new C3376j(radioButton, radioButton2));
            if (isFinishing()) {
                return;
            }
            DialogInterfaceC0146a m35574a = new DialogInterfaceC0146a.C0147a(this).m35558q(getResources().getString(R$string.wrong_info)).m35557r(inflate).m35561n(getResources().getString(R$string.report), new DialogInterface$OnClickListenerC3378k(radioButton, radioButton2, radioButton3, str)).m35574a();
            m35574a.show();
            m35574a.m35577g(-1).setTextColor(this.f10781j0);
            m35574a.m35577g(-2).setTextColor(getResources().getColor(R$color.btn_gray));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f1 */
    public void m25399f1() {
        if (this.f10778g0) {
            Intent intent = new Intent(this, MainActivity.class);
            intent.putExtra("missedcall", true);
            startActivity(intent);
        }
        finish();
        overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }

    /* renamed from: n1 */
    public void m25383n1(AbstractC3383m0 abstractC3383m0) {
        this.f10793u0 = abstractC3383m0;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra;
        super.onActivityResult(i, i2, intent);
        if (i == 110) {
            try {
                if (i2 == 119) {
                    if (intent != null && intent.getBooleanExtra("isrefush", false)) {
                        Toast.makeText(EZCallApplication.m26146c(), "The type deleted successfully!", 0).show();
                        try {
                            if (Build.VERSION.SDK_INT >= 21) {
                                Window window = getWindow();
                                window.addFlags(Integer.MIN_VALUE);
                                window.setStatusBarColor(this.f10784m0);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        this.f10748C.setBackgroundColor(this.f10782k0);
                        this.f10795w.setImageResource(R$drawable.ic_photo_normal);
                        this.f10790s0.setVisibility(8);
                        this.f10772a0 = "";
                        this.f10770Y.m24917Y0("");
                        this.f10747B.setText(getResources().getString(R$string.report));
                        AbstractC3383m0 abstractC3383m0 = this.f10793u0;
                        if (abstractC3383m0 != null) {
                            abstractC3383m0.mo25355b(false, this.f10770Y.m24932P());
                        }
                    }
                } else if (i2 == 120 && intent != null && (stringExtra = intent.getStringExtra("edittype")) != null && !"".equals(stringExtra)) {
                    this.f10772a0 = stringExtra;
                    this.f10790s0.setText(stringExtra);
                    this.f10790s0.setBackgroundResource(R$drawable.shape_subtype_bg);
                    this.f10790s0.setTextColor(getResources().getColor(R$color.spam));
                    this.f10790s0.setOnClickListener(this);
                    this.f10770Y.m24917Y0(this.f10772a0);
                    try {
                        if (Build.VERSION.SDK_INT >= 21) {
                            Window window2 = getWindow();
                            window2.addFlags(Integer.MIN_VALUE);
                            window2.setStatusBarColor(this.f10785n0);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    this.f10748C.setBackgroundColor(this.f10783l0);
                    this.f10786o0.setVisibility(8);
                    this.f10790s0.setVisibility(0);
                    this.f10747B.setText(getResources().getString(R$string.block_edit));
                    this.f10795w.setImageResource(R$drawable.ic_photo_spam);
                    CallLogBean callLogBean = this.f10770Y;
                    if (callLogBean != null && callLogBean.m24932P() != null && !"".equals(this.f10770Y.m24932P()) && this.f10770Y.m24864x() != null && !this.f10770Y.m24864x().equals("0")) {
                        AbstractC3383m0 abstractC3383m02 = this.f10793u0;
                        if (abstractC3383m02 != null) {
                            abstractC3383m02.mo25355b(true, this.f10770Y.m24932P());
                        }
                        CallLogBean callLogBean2 = this.f10770Y;
                        callLogBean2.m24939L0((Integer.parseInt(this.f10770Y.m24864x()) + 1) + "");
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            e3.printStackTrace();
        } else if (i == 200) {
            try {
                this.f10779h0.postDelayed(new RunnableC3400z(), 500L);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (i != 300) {
            if (i == 369 && i2 == 963 && intent != null) {
                try {
                    String stringExtra2 = intent.getStringExtra("typelabel");
                    if (stringExtra2 != null && !"".equals(stringExtra2)) {
                        this.f10770Y.m24901e1(C3767h1.m24292D(getApplicationContext(), stringExtra2));
                        try {
                            if (Build.VERSION.SDK_INT >= 21) {
                                Window window3 = getWindow();
                                window3.addFlags(Integer.MIN_VALUE);
                                window3.setStatusBarColor(this.f10785n0);
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                        this.f10795w.setImageResource(R$drawable.ic_photo_spam);
                        this.f10748C.setBackgroundColor(this.f10783l0);
                        this.f10786o0.setVisibility(8);
                        AbstractC3383m0 abstractC3383m03 = this.f10793u0;
                        if (abstractC3383m03 != null) {
                            abstractC3383m03.mo25355b(true, this.f10770Y.m24932P());
                        }
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
        } else if (intent != null) {
            try {
                String stringExtra3 = intent.getStringExtra("typelabel");
                if (stringExtra3 == null || "".equals(stringExtra3)) {
                    this.f10770Y.m24901e1("");
                    try {
                        if (Build.VERSION.SDK_INT >= 21) {
                            Window window4 = getWindow();
                            window4.addFlags(Integer.MIN_VALUE);
                            window4.setStatusBarColor(getResources().getColor(2131099706));
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                    this.f10748C.setBackgroundColor(this.f10782k0);
                    this.f10795w.setImageResource(R$drawable.ic_photo_normal);
                    AbstractC3383m0 abstractC3383m04 = this.f10793u0;
                    if (abstractC3383m04 != null) {
                        abstractC3383m04.mo25355b(false, this.f10770Y.m24932P());
                    }
                } else {
                    this.f10770Y.m24901e1(C3767h1.m24292D(getApplicationContext(), this.f10771Z));
                    try {
                        if (Build.VERSION.SDK_INT >= 21) {
                            Window window5 = getWindow();
                            window5.addFlags(Integer.MIN_VALUE);
                            window5.setStatusBarColor(getResources().getColor(R$color.spam_title));
                        }
                    } catch (Exception e8) {
                        e8.printStackTrace();
                    }
                    this.f10748C.setBackgroundColor(this.f10783l0);
                    this.f10786o0.setVisibility(8);
                    this.f10795w.setImageResource(R$drawable.ic_photo_spam);
                    AbstractC3383m0 abstractC3383m05 = this.f10793u0;
                    if (abstractC3383m05 != null) {
                        abstractC3383m05.mo25355b(true, this.f10770Y.m24932P());
                    }
                }
            } catch (Exception e9) {
                e9.printStackTrace();
            }
            e9.printStackTrace();
        }
        View$OnClickListenerC2726i view$OnClickListenerC2726i = this.f10791t0;
        if (view$OnClickListenerC2726i != null) {
            view$OnClickListenerC2726i.mo17298w0(i, i2, intent);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.btn_add_block /* 2131296403 */:
                try {
                    CallLogBean callLogBean = this.f10770Y;
                    if (callLogBean == null || C3767h1.m24216w0(callLogBean.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        m25385m1();
                        C3810q.m24071b().m24070c("btn_add_block");
                    }
                    return;
                } catch (Resources.NotFoundException e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.btn_add_block1 /* 2131296404 */:
                try {
                    CallLogBean callLogBean2 = this.f10770Y;
                    if (callLogBean2 == null || C3767h1.m24216w0(callLogBean2.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        m25385m1();
                        C3810q.m24071b().m24070c("btn_add_block");
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R$id.btn_add_contact /* 2131296407 */:
                try {
                    CallLogBean callLogBean3 = this.f10770Y;
                    if (callLogBean3 == null || C3767h1.m24216w0(callLogBean3.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        try {
                            Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                            intent.setType("vnd.android.cursor.item/contact");
                            intent.putExtra("phone", this.f10770Y.m24880o());
                            if (this.f10770Y.m24861z() != null && !"".equals(this.f10770Y.m24861z())) {
                                intent.putExtra(ShortCut.NAME, this.f10770Y.m24861z());
                            }
                            startActivityForResult(intent, 200);
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            try {
                                Intent intent2 = new Intent("android.intent.action.INSERT");
                                intent2.setType("vnd.android.cursor.dir/person");
                                intent2.setType("vnd.android.cursor.dir/contact");
                                intent2.setType("vnd.android.cursor.dir/raw_contact");
                                intent2.putExtra("phone_type", 2);
                                intent2.putExtra("phone", this.f10770Y.m24880o());
                                if (this.f10770Y.m24861z() != null && !"".equals(this.f10770Y.m24861z())) {
                                    intent2.putExtra(ShortCut.NAME, this.f10770Y.m24861z());
                                }
                                startActivityForResult(intent2, 200);
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_add_contact");
                return;
            case R$id.btn_add_report /* 2131296408 */:
                try {
                    if (this.f10772a0 == null) {
                        try {
                            CallLogBean callLogBean4 = this.f10770Y;
                            if (callLogBean4 == null || callLogBean4.m24880o() == null || "".equals(this.f10770Y.m24880o()) || C3767h1.m24216w0(this.f10770Y.m24880o())) {
                                Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                            } else {
                                C2907b.m26436a(this.f10770Y.m24880o(), new C3381l0());
                            }
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                        C3810q.m24071b().m24070c("btn_add_report");
                        return;
                    }
                    CallLogBean callLogBean5 = this.f10770Y;
                    if (callLogBean5 != null && C3767h1.m24241k(callLogBean5.m24880o())) {
                        Toast.makeText(getApplicationContext(), getResources().getString(R$string.reported), 0).show();
                        return;
                    }
                    Intent intent3 = new Intent(this, ReportSubtypeActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("contact_subtype_activity", this.f10770Y);
                    intent3.putExtras(bundle);
                    startActivityForResult(intent3, 110);
                    overridePendingTransition(R$anim.in_to_down, 0);
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case R$id.btn_contact_sms /* 2131296421 */:
                try {
                    if (!C3767h1.m24216w0(this.f10770Y.m24880o())) {
                        Intent intent4 = new Intent("android.intent.action.VIEW");
                        intent4.setType("vnd.android-dir/mms-sms");
                        intent4.setData(Uri.parse("smsto:" + this.f10770Y.m24880o()));
                        intent4.addFlags(268468224);
                        startActivity(intent4);
                    } else {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_contact_sms");
                return;
            case R$id.btn_suggest /* 2131296439 */:
                try {
                    CallLogBean callLogBean6 = this.f10770Y;
                    if (callLogBean6 == null || C3767h1.m24216w0(callLogBean6.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        C2907b.m26433d(this.f10770Y.m24880o(), new C3377j0());
                    }
                } catch (Exception e9) {
                    e9.printStackTrace();
                }
                C3810q.m24071b().m24070c("btn_suggest");
                return;
            case R$id.child_type /* 2131296471 */:
                try {
                    if (this.f10772a0 != null) {
                        CallLogBean callLogBean7 = this.f10770Y;
                        if (callLogBean7 == null || !C3767h1.m24241k(callLogBean7.m24880o())) {
                            Intent intent5 = new Intent(this, ReportSubtypeActivity.class);
                            Bundle bundle2 = new Bundle();
                            bundle2.putParcelable("contact_subtype_activity", this.f10770Y);
                            intent5.putExtras(bundle2);
                            startActivityForResult(intent5, 110);
                            overridePendingTransition(R$anim.in_to_down, 0);
                        } else {
                            Toast.makeText(getApplicationContext(), getResources().getString(R$string.reported), 0).show();
                        }
                    }
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case R$id.fl_add_block /* 2131296711 */:
                try {
                    CallLogBean callLogBean8 = this.f10770Y;
                    if (callLogBean8 == null || C3767h1.m24216w0(callLogBean8.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        m25385m1();
                        C3810q.m24071b().m24070c("btn_add_block");
                    }
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            case R$id.fl_block /* 2131296717 */:
                this.f10797y.dismiss();
                try {
                    CallLogBean callLogBean9 = this.f10770Y;
                    if (callLogBean9 == null || C3767h1.m24216w0(callLogBean9.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        m25385m1();
                    }
                    return;
                } catch (Exception e12) {
                    e12.printStackTrace();
                    return;
                }
            case R$id.fl_call /* 2131296722 */:
                m25407b1();
                return;
            case R$id.fl_copy /* 2131296732 */:
                this.f10797y.dismiss();
                try {
                    if (!C3767h1.m24216w0(this.f10770Y.m24880o())) {
                        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, this.f10770Y.m24880o()));
                        Toast.makeText(this, getResources().getString(R$string.copy_ok), 1).show();
                    } else {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    }
                    return;
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
            case R$id.fl_delete_contact /* 2131296735 */:
                this.f10797y.dismiss();
                m25403d1();
                return;
            case R$id.fl_edit_contact /* 2131296740 */:
                this.f10797y.dismiss();
                m25401e1();
                return;
            case R$id.fl_favorite /* 2131296743 */:
                m25405c1();
                return;
            case R$id.fl_msg /* 2131296756 */:
                m25387l1();
                return;
            case R$id.fl_search_by_google /* 2131296782 */:
                this.f10797y.dismiss();
                try {
                    Intent intent6 = new Intent("android.intent.action.VIEW");
                    intent6.setData(Uri.parse("https://www.google.com/search?q=" + this.f10770Y.m24880o()));
                    intent6.addCategory("android.intent.category.BROWSABLE");
                    if (intent6.resolveActivity(getPackageManager()) == null) {
                        return;
                    }
                    startActivity(intent6);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                } catch (Exception e14) {
                    e14.printStackTrace();
                    return;
                }
            case R$id.fl_share /* 2131296795 */:
                try {
                    this.f10797y.dismiss();
                    C3810q.m24071b().m24070c("number_content_share_click");
                    DialogC2616n dialogC2616n = new DialogC2616n(this, R$style.CustomDialog4, getResources().getString(R$string.share_title_number), getResources().getString(R$string.share_subject), C3767h1.m24276L(this.f10760O.getText().toString(), this.f10770Y.m24880o(), this.f10770Y.m24909c()), 0, null);
                    dialogC2616n.setCanceledOnTouchOutside(false);
                    dialogC2616n.show();
                    Window window = dialogC2616n.getWindow();
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    window.setGravity(80);
                    WindowManager windowManager = (WindowManager) getApplicationContext().getApplicationContext().getSystemService("window");
                    int width = windowManager.getDefaultDisplay().getWidth();
                    int height = windowManager.getDefaultDisplay().getHeight();
                    attributes.width = width;
                    attributes.height = height / 2;
                    window.setAttributes(attributes);
                    return;
                } catch (Exception e15) {
                    e15.printStackTrace();
                    return;
                }
            case R$id.fl_wrong_info /* 2131296812 */:
                try {
                    C3810q.m24071b().m24070c("wrong_info_click");
                    C2907b.m26432e(this.f10770Y.m24880o(), new C3375i0());
                    return;
                } catch (Exception e16) {
                    e16.printStackTrace();
                    return;
                }
            case R$id.float_comments /* 2131296825 */:
                try {
                    C3810q.m24071b().m24070c("write_comment_button_click");
                    C2907b.m26434c(this.f10770Y.m24880o(), new C3354b());
                    return;
                } catch (Exception e17) {
                    e17.printStackTrace();
                    return;
                }
            case R$id.iv_callscreen /* 2131296965 */:
                try {
                    C3810q.m24071b().m24070c("number_pdt_callscreen_click");
                    Intent intent7 = new Intent(this, MainActivity.class);
                    intent7.putExtra("is_callscreen", true);
                    startActivity(intent7);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    finish();
                    return;
                } catch (Exception e18) {
                    e18.printStackTrace();
                    return;
                }
            case R$id.iv_suggest_name /* 2131297077 */:
                C3810q.m24071b().m24070c("unknown_name_click");
                try {
                    CallLogBean callLogBean10 = this.f10770Y;
                    if (callLogBean10 == null || C3767h1.m24216w0(callLogBean10.m24880o())) {
                        Toast.makeText(this, getResources().getString(R$string.unknow_call), 0).show();
                    } else {
                        C2907b.m26433d(this.f10770Y.m24880o(), new C3379k0());
                    }
                    return;
                } catch (Exception e19) {
                    e19.printStackTrace();
                    return;
                }
            case R$id.lb_contact_back /* 2131297120 */:
                m25399f1();
                return;
            case R$id.lb_contact_more /* 2131297121 */:
                if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                    this.f10797y.showAtLocation(this.f10794v, 51, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                } else {
                    this.f10797y.showAtLocation(this.f10794v, 53, 5, C3774j.m24169a(getApplicationContext(), 14.0f) + 25);
                    return;
                }
            case R$id.see_history /* 2131297584 */:
                CallLogBean callLogBean11 = this.f10770Y;
                if (callLogBean11 != null && callLogBean11.m24880o() != null && !"".equals(this.f10770Y.m24880o())) {
                    Intent intent8 = new Intent(this, CallLogActivity.class);
                    intent8.putExtra("call_log_number", this.f10770Y.m24880o());
                    startActivity(intent8);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                }
                C3810q.m24071b().m24070c("see_history");
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10750E = new C3388o0();
        C1764a.m28939b(getApplicationContext()).m28938c(this.f10750E, new IntentFilter("com.allinone.callerid.REPORT_BLOCK"));
        Intent intent = getIntent();
        if (intent != null) {
            this.f10770Y = (CallLogBean) intent.getParcelableExtra("contact_tony");
            this.f10774c0 = intent.getBooleanExtra("is_to_comment", false);
            this.f10778g0 = intent.getBooleanExtra("is_missed", false);
            CallLogBean callLogBean = this.f10770Y;
            if (callLogBean != null && callLogBean.m24932P() != null && !"".equals(this.f10770Y.m24932P()) && this.f10770Y.m24864x() != null && !this.f10770Y.m24864x().equals("0")) {
                setTheme(R$style.AppTheme1);
                this.f10751F = true;
                C3738f0.m24368s(getApplicationContext());
                this.f10771Z = this.f10770Y.m24932P();
                this.f10772a0 = this.f10770Y.m24946H();
            }
        }
        String str = this.f10772a0;
        if (str == null || "".equals(str)) {
            String iso_code = C3806p.m24083d(getApplicationContext()).getIso_code();
            if (this.f10770Y != null && iso_code != null && iso_code.equals("US/USA")) {
                this.f10770Y.m24917Y0("");
                this.f10772a0 = "";
            }
        }
        CallLogBean callLogBean2 = this.f10770Y;
        if (callLogBean2 != null && callLogBean2.m24903e() != null && !"".equals(this.f10770Y.m24903e())) {
            C3810q.m24071b().m24070c("unknow_content_has_comment");
        }
        setContentView(R$layout.activity_unknown_contact_new);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        C3810q.m24071b().m24070c("number_content_show");
        m25397g1();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AppBarStateChangeListener appBarStateChangeListener;
        super.onDestroy();
        try {
            C1764a.m28939b(getApplicationContext()).m28936e(this.f10750E);
            AppBarLayout appBarLayout = this.f10755J;
            if (appBarLayout == null || (appBarStateChangeListener = this.f10756K) == null) {
                return;
            }
            appBarLayout.m5760p(appBarStateChangeListener);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            m25399f1();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f10779h0.postDelayed(new RunnableC3367e0(), 800L);
        if (C3784b.f12036a) {
            if (C3784b.m24144b(getApplicationContext())) {
                C3810q.m24071b().m24070c("dialog_notifi_per_tip_enalbleed");
            }
            C3784b.f12036a = false;
            m25385m1();
        }
    }
}
