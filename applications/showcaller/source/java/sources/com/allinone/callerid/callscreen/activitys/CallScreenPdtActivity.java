package com.allinone.callerid.callscreen.activitys;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.jzvd.C2129t;
import cn.jzvd.Jzvd;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.callscreen.CustomMedia.JZMediaExo;
import com.allinone.callerid.callscreen.bean.DownloadInfo;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.callscreen.view.MyJzvdStd;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p147b.C2476b;
import com.allinone.callerid.p144d.p150e.C2537a;
import com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c;
import com.allinone.callerid.p144d.p150e.p151e.C2552a;
import com.allinone.callerid.p144d.p150e.p151e.C2558d;
import com.allinone.callerid.p144d.p150e.p152f.AbstractC2561a;
import com.allinone.callerid.p144d.p150e.p152f.C2562b;
import com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a;
import com.allinone.callerid.p144d.p150e.p153g.C2565b;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b;
import com.allinone.callerid.p162i.p163a.p168e.C2786a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p202gg.C3761e;
import com.allinone.callerid.util.p204j1.C3776a;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.request.C4401e;
import java.io.File;
import java.util.ArrayList;
import p020b.p067p.p068a.C1764a;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2027i;
import p078c.p122d.p123a.C2058q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity.class */
public class CallScreenPdtActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f8209A;

    /* renamed from: B */
    private TextView f8210B;

    /* renamed from: C */
    private TextView f8211C;

    /* renamed from: D */
    private FrameLayout f8212D;

    /* renamed from: E */
    private ImageView f8213E;

    /* renamed from: F */
    private TextView f8214F;

    /* renamed from: G */
    private HomeInfo f8215G;

    /* renamed from: H */
    private boolean f8216H;

    /* renamed from: I */
    private PopupWindow f8217I;

    /* renamed from: J */
    private RelativeLayout f8218J;

    /* renamed from: K */
    private boolean f8219K;

    /* renamed from: L */
    private RadioButton f8220L;

    /* renamed from: M */
    private RadioButton f8221M;

    /* renamed from: N */
    private RadioButton f8222N;

    /* renamed from: O */
    private RadioButton f8223O;

    /* renamed from: P */
    private Dialog f8224P;

    /* renamed from: Q */
    private LinearLayout f8225Q;

    /* renamed from: R */
    private DialogInterfaceC0146a f8226R;

    /* renamed from: S */
    private DialogInterfaceC0146a f8227S;

    /* renamed from: W */
    private LinearLayout f8231W;

    /* renamed from: X */
    private ConstraintLayout f8232X;

    /* renamed from: Y */
    private FrameLayout f8233Y;

    /* renamed from: Z */
    private LinearLayout f8234Z;

    /* renamed from: a0 */
    private boolean f8235a0;

    /* renamed from: b0 */
    private ProgressBar f8236b0;

    /* renamed from: c0 */
    private TextView f8237c0;

    /* renamed from: d0 */
    private FrameLayout f8238d0;

    /* renamed from: e0 */
    private FrameLayout f8239e0;

    /* renamed from: f0 */
    private boolean f8240f0;

    /* renamed from: g0 */
    private C2373w f8241g0;

    /* renamed from: h0 */
    private boolean f8242h0;

    /* renamed from: i0 */
    private boolean f8243i0;

    /* renamed from: j0 */
    private String f8244j0;

    /* renamed from: k0 */
    private long f8245k0;

    /* renamed from: l0 */
    private long f8246l0;

    /* renamed from: m0 */
    private ImageView f8247m0;

    /* renamed from: n0 */
    private int f8248n0;

    /* renamed from: o0 */
    private boolean f8249o0;

    /* renamed from: v */
    private Typeface f8253v;

    /* renamed from: w */
    private Typeface f8254w;

    /* renamed from: x */
    private Boolean f8255x;

    /* renamed from: y */
    private MyJzvdStd f8256y;

    /* renamed from: z */
    private ImageView f8257z;

    /* renamed from: u */
    private final String f8252u = "CallScreenPdtActivity";

    /* renamed from: T */
    private boolean f8228T = true;

    /* renamed from: U */
    private boolean f8229U = true;

    /* renamed from: V */
    ArrayList<PersonaliseContact> f8230V = new ArrayList<>();

    /* renamed from: p0 */
    private AbstractC2027i f8250p0 = new C2356h();

    /* renamed from: q0 */
    private AbstractC2027i f8251q0 = new C2359j();

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a.class */
    public class C2349a implements CompoundButton.OnCheckedChangeListener {
        C2349a() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                CallScreenPdtActivity.this.f8228T = false;
                return;
            }
            CallScreenPdtActivity.this.f8228T = true;
            CallScreenPdtActivity.this.f8223O.setChecked(false);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$b.class */
    public class C2350b implements CompoundButton.OnCheckedChangeListener {
        C2350b() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                CallScreenPdtActivity.this.f8222N.setChecked(false);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$c.class */
    public class View$OnClickListenerC2351c implements View.OnClickListener {
        View$OnClickListenerC2351c() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallScreenPdtActivity.this.f8226R != null) {
                CallScreenPdtActivity.this.f8226R.dismiss();
            }
            C3810q.m24071b().m24070c("callscreen_mobile_net_cancel");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d.class */
    public class View$OnClickListenerC2352d implements View.OnClickListener {
        View$OnClickListenerC2352d() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallScreenPdtActivity.this.f8226R != null) {
                CallScreenPdtActivity.this.f8226R.dismiss();
            }
            C2578f.m27063r(false);
            if (CallScreenPdtActivity.this.f8215G != null) {
                CallScreenPdtActivity callScreenPdtActivity = CallScreenPdtActivity.this;
                callScreenPdtActivity.m27608H0(callScreenPdtActivity.f8215G);
            }
            C3810q.m24071b().m24070c("callscreen_mobile_net_always");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$e.class */
    public class View$OnClickListenerC2353e implements View.OnClickListener {
        View$OnClickListenerC2353e() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallScreenPdtActivity.this.f8226R != null) {
                CallScreenPdtActivity.this.f8226R.dismiss();
            }
            if (CallScreenPdtActivity.this.f8215G != null) {
                CallScreenPdtActivity callScreenPdtActivity = CallScreenPdtActivity.this;
                callScreenPdtActivity.m27608H0(callScreenPdtActivity.f8215G);
            }
            C3810q.m24071b().m24070c("callscreen_mobile_net_allow");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$f.class */
    public class DialogInterface$OnClickListenerC2354f implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2354f() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (CallScreenPdtActivity.this.f8227S != null) {
                CallScreenPdtActivity.this.f8227S.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$g.class */
    public class C2355g implements C2537a.AbstractC2539b {
        C2355g() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h.class */
    public class C2356h extends AbstractC2027i {

        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$h$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a.class */
        class C2357a implements AbstractC2561a {

            /* renamed from: a */
            final /* synthetic */ AbstractC1978a f8266a;

            C2357a(AbstractC1978a abstractC1978a) {
                C2356h.this = r4;
                this.f8266a = abstractC1978a;
            }

            @Override // com.allinone.callerid.p144d.p150e.p152f.AbstractC2561a
            /* renamed from: a */
            public void mo27115a(boolean z, DownloadInfo downloadInfo) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "发送广播更新数据");
                }
                C1764a.m28939b(CallScreenPdtActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
                CallScreenPdtActivity.this.f8215G.setPath(this.f8266a.getPath());
                CallScreenPdtActivity.this.m27606K0();
                CallScreenPdtActivity callScreenPdtActivity = CallScreenPdtActivity.this;
                callScreenPdtActivity.m27601P0(callScreenPdtActivity.f8215G.getAudio_url());
            }
        }

        C2356h() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: b */
        public void mo26181b(AbstractC1978a abstractC1978a) {
            CallScreenPdtActivity.this.f8246l0 = System.currentTimeMillis();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "耗时：" + (CallScreenPdtActivity.this.f8246l0 - CallScreenPdtActivity.this.f8245k0));
            }
            C3810q.m24071b().m24070c("callscreen_download_success");
            if (CallScreenPdtActivity.this.f8215G != null) {
                try {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "下载成功： " + abstractC1978a.getPath());
                    }
                    CallScreenPdtActivity.this.f8243i0 = false;
                    DownloadInfo m27273c = C2476b.m27274b().m27273c(CallScreenPdtActivity.this.f8215G);
                    m27273c.setPath(abstractC1978a.getPath());
                    C2562b.m27114a(m27273c, new C2357a(abstractC1978a));
                    if (CallScreenPdtActivity.this.f8236b0 == null || CallScreenPdtActivity.this.f8237c0 == null) {
                        return;
                    }
                    CallScreenPdtActivity.this.f8236b0.setVisibility(8);
                    CallScreenPdtActivity.this.f8237c0.setVisibility(8);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: d */
        public void mo26180d(AbstractC1978a abstractC1978a, Throwable th) {
            if (CallScreenPdtActivity.this.f8236b0 != null && CallScreenPdtActivity.this.f8237c0 != null) {
                CallScreenPdtActivity.this.f8236b0.setVisibility(8);
                CallScreenPdtActivity.this.f8237c0.setVisibility(8);
            }
            CallScreenPdtActivity callScreenPdtActivity = CallScreenPdtActivity.this;
            Toast makeText = Toast.makeText(callScreenPdtActivity, callScreenPdtActivity.getResources().getString(R$string.download_failed), 1);
            makeText.setGravity(17, 0, 0);
            makeText.show();
            if (th == null || th.getMessage() == null) {
                return;
            }
            C3810q.m24071b().m24067f(th.getMessage());
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("callscreen", "Throwable: " + th.getMessage());
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: f */
        public void mo26179f(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: g */
        public void mo26178g(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: h */
        public void mo26177h(AbstractC1978a abstractC1978a, int i, int i2) {
            float mo28367v = abstractC1978a.mo28367v() / abstractC1978a.mo28382f();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "progress: " + ((int) (mo28367v * 100.0f)) + "%");
            }
            if (CallScreenPdtActivity.this.f8236b0 != null) {
                int i3 = (int) (mo28367v * 100.0f);
                CallScreenPdtActivity.this.f8236b0.setProgress(i3);
                TextView textView = CallScreenPdtActivity.this.f8237c0;
                textView.setText(i3 + "%");
                if (CallScreenPdtActivity.this.f8236b0.getVisibility() == 8) {
                    CallScreenPdtActivity.this.f8236b0.setVisibility(0);
                }
                if (CallScreenPdtActivity.this.f8237c0.getVisibility() == 8) {
                    CallScreenPdtActivity.this.f8237c0.setVisibility(0);
                }
                if (CallScreenPdtActivity.this.f8243i0) {
                    return;
                }
                CallScreenPdtActivity.this.f8243i0 = true;
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: k */
        public void mo26176k(AbstractC1978a abstractC1978a) {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i.class */
    public class RunnableC2358i implements Runnable {
        RunnableC2358i() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CallScreenPdtActivity.this.m27614A0();
            CallScreenPdtActivity.this.m27573x0();
            CallScreenPdtActivity.this.m27572y0();
            C3810q.m24071b().m24070c("callscreen_pdt_show");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j.class */
    public class C2359j extends AbstractC2027i {

        /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$j$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j$a.class */
        class C2360a implements AbstractC2561a {
            C2360a() {
                C2359j.this = r4;
            }

            @Override // com.allinone.callerid.p144d.p150e.p152f.AbstractC2561a
            /* renamed from: a */
            public void mo27115a(boolean z, DownloadInfo downloadInfo) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("callscreen", "音频数据库添加成功");
                }
            }
        }

        C2359j() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: b */
        public void mo26181b(AbstractC1978a abstractC1978a) {
            if (CallScreenPdtActivity.this.f8215G != null) {
                try {
                    DownloadInfo m27273c = C2476b.m27274b().m27273c(CallScreenPdtActivity.this.f8215G);
                    m27273c.setAudio_path(abstractC1978a.getPath());
                    C2562b.m27114a(m27273c, new C2360a());
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "音频下载成功： " + abstractC1978a.getPath());
                    }
                    CallScreenPdtActivity.this.f8215G.setAudio_path(abstractC1978a.getPath());
                    if (CallScreenPdtActivity.this.f8228T) {
                        CallScreenPdtActivity.this.m27605L0();
                    } else {
                        C3810q.m24071b().m24070c("callscreen_set_default_ringtone");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: d */
        public void mo26180d(AbstractC1978a abstractC1978a, Throwable th) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "Throwable: " + th.getMessage());
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: f */
        public void mo26179f(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: g */
        public void mo26178g(AbstractC1978a abstractC1978a, int i, int i2) {
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: h */
        public void mo26177h(AbstractC1978a abstractC1978a, int i, int i2) {
            float mo28367v = abstractC1978a.mo28367v() / abstractC1978a.mo28382f();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "audio_progress: " + ((int) (mo28367v * 100.0f)) + "%");
            }
        }

        @Override // p078c.p122d.p123a.AbstractC2027i
        /* renamed from: k */
        public void mo26176k(AbstractC1978a abstractC1978a) {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k.class */
    public class C2361k implements AbstractC2557c {
        C2361k() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p151e.AbstractC2557c
        /* renamed from: a */
        public void mo24812a(boolean z, HomeInfo homeInfo) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "设置默认来电秀" + z);
            }
            C1764a.m28939b(CallScreenPdtActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            Toast.makeText(CallScreenPdtActivity.this.getApplicationContext(), CallScreenPdtActivity.this.getResources().getString(R$string.set_ok_title), 1).show();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$l.class */
    public class C2362l implements C2552a.AbstractC2553a {
        C2362l() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p151e.C2552a.AbstractC2553a
        /* renamed from: a */
        public void mo27126a(boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "单独设置联系人来电秀" + z);
            }
            C1764a.m28939b(CallScreenPdtActivity.this).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
            Toast.makeText(CallScreenPdtActivity.this.getApplicationContext(), CallScreenPdtActivity.this.getResources().getString(R$string.set_ok_title), 1).show();
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$m.class */
    public class C2363m implements AbstractC2564a {
        C2363m() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a
        /* renamed from: a */
        public void mo27111a(boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "设置默认铃声:" + z);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$n.class */
    public class C2364n implements AbstractC2564a {
        C2364n() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.p153g.AbstractC2564a
        /* renamed from: a */
        public void mo27111a(boolean z) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "设置联系人铃声:" + z);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o.class */
    public class C2365o implements AbstractC2790b {
        C2365o() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p168e.AbstractC2790b
        /* renamed from: a */
        public void mo24346a(boolean z) {
            if (z) {
                CallScreenPdtActivity.this.f8249o0 = true;
                C3761e.m24321d().m24320e(false, CallScreenPdtActivity.this);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$p.class */
    class C2366p implements C2537a.AbstractC2539b {
        C2366p() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$q.class */
    class C2367q implements C2537a.AbstractC2539b {
        C2367q() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$r.class */
    class C2368r implements C2537a.AbstractC2539b {
        C2368r() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$s.class */
    public class C2369s implements C2537a.AbstractC2539b {
        C2369s() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$t.class */
    public class C2370t implements C2537a.AbstractC2539b {
        C2370t() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2537a.AbstractC2539b
        /* renamed from: a */
        public void mo27153a() {
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(new Intent("com.allinone.callerid.REFRESH_HOME_DATA"));
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$u */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$u.class */
    public class C2371u implements CompoundButton.OnCheckedChangeListener {
        C2371u() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                CallScreenPdtActivity.this.f8229U = false;
                return;
            }
            CallScreenPdtActivity.this.f8229U = true;
            CallScreenPdtActivity.this.f8221M.setChecked(false);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$v */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$v.class */
    public class C2372v implements CompoundButton.OnCheckedChangeListener {
        C2372v() {
            CallScreenPdtActivity.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                CallScreenPdtActivity.this.f8220L.setChecked(false);
                CallScreenPdtActivity.this.startActivityForResult(new Intent(CallScreenPdtActivity.this, CallScreenSelectActivity.class), 8989);
                CallScreenPdtActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenPdtActivity$w */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w.class */
    public class C2373w extends BroadcastReceiver {
        private C2373w() {
            CallScreenPdtActivity.this = r4;
        }

        /* synthetic */ C2373w(CallScreenPdtActivity callScreenPdtActivity, RunnableC2358i runnableC2358i) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || !C3725e.m24417b(CallScreenPdtActivity.this.getApplicationContext())) {
                return;
            }
            CallScreenPdtActivity.this.m27613B0();
        }
    }

    /* renamed from: A0 */
    public void m27614A0() {
        this.f8248n0 = C3719c1.m24432a(this, R$attr.color_action, 2131099706);
        this.f8256y = (MyJzvdStd) findViewById(R$id.jz_video);
        this.f8257z = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f8257z.setImageResource(R$drawable.ic_back_oppo);
        }
        this.f8209A = (ImageView) findViewById(R$id.iv_silent);
        this.f8247m0 = (ImageView) findViewById(R$id.iv_perview);
        this.f8210B = (TextView) findViewById(R$id.tv_author);
        this.f8211C = (TextView) findViewById(R$id.tv_name);
        this.f8212D = (FrameLayout) findViewById(R$id.fl_set_callscreen);
        this.f8213E = (ImageView) findViewById(R$id.iv_like);
        ImageView imageView = (ImageView) findViewById(R$id.iv_share);
        ImageView imageView2 = (ImageView) findViewById(R$id.iv_more);
        this.f8214F = (TextView) findViewById(R$id.tv_like);
        TextView textView = (TextView) findViewById(R$id.tv_set_callscreen);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_set_callscreen_guide);
        TextView textView2 = (TextView) findViewById(R$id.tv_set_callscreen_guide);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R$id.rl_guide);
        this.f8218J = relativeLayout;
        if (this.f8219K) {
            relativeLayout.setVisibility(0);
            C2578f.m27059v(false);
        }
        this.f8231W = (LinearLayout) findViewById(R$id.ll_acticon);
        this.f8232X = (ConstraintLayout) findViewById(R$id.ll_call_action);
        this.f8233Y = (FrameLayout) findViewById(R$id.fl_set_callscreen_preview);
        TextView textView3 = (TextView) findViewById(R$id.tv_set_callscreen_preview);
        this.f8234Z = (LinearLayout) findViewById(R$id.ll_preview_top);
        TextView textView4 = (TextView) findViewById(R$id.tv_number_name);
        if ("1".equals(C3806p.m24083d(getApplicationContext()).getCountry_code())) {
            textView4.setText("Emily");
        }
        TextView textView5 = (TextView) findViewById(R$id.tv_number);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R$id.rl_bg);
        this.f8236b0 = (ProgressBar) findViewById(R$id.progressBar);
        this.f8237c0 = (TextView) findViewById(R$id.tv_progressbar);
        this.f8238d0 = (FrameLayout) findViewById(R$id.fl_shade_top);
        this.f8239e0 = (FrameLayout) findViewById(R$id.fl_shade_bottom);
        this.f8236b0.setMax(100);
        this.f8257z.setOnClickListener(this);
        this.f8209A.setOnClickListener(this);
        this.f8247m0.setOnClickListener(this);
        this.f8212D.setOnClickListener(this);
        this.f8213E.setOnClickListener(this);
        imageView.setOnClickListener(this);
        imageView2.setOnClickListener(this);
        frameLayout.setOnClickListener(this);
        this.f8233Y.setOnClickListener(this);
        relativeLayout2.setOnClickListener(this);
        this.f8211C.setTypeface(this.f8254w);
        textView5.setTypeface(this.f8254w);
        textView4.setTypeface(this.f8254w);
        this.f8210B.setTypeface(this.f8253v);
        this.f8214F.setTypeface(this.f8253v);
        textView.setTypeface(this.f8254w);
        textView3.setTypeface(this.f8254w);
        textView2.setTypeface(this.f8254w);
        textView2.setTypeface(this.f8253v);
    }

    /* renamed from: B0 */
    public void m27613B0() {
        try {
            if (!C3725e.m24417b(getApplicationContext())) {
                m27604M0(this);
                this.f8241g0 = new C2373w(this, null);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                registerReceiver(this.f8241g0, intentFilter);
            } else if (!C3725e.m24416c(getApplicationContext())) {
                m27608H0(this.f8215G);
            } else if (C2578f.m27075f()) {
                m27603N0(this);
            } else {
                m27608H0(this.f8215G);
                Toast makeText = Toast.makeText(this, getResources().getString(R$string.mobile_net_tips), 0);
                makeText.setGravity(17, 0, 0);
                makeText.show();
                C3810q.m24071b().m24070c("callscreen_mobile_net_toast");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: C0 */
    public /* synthetic */ void m27611E0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f8215G.setIsreport(true);
        Toast.makeText(getApplicationContext(), getResources().getString(R$string.report_callscreen_ok), 1).show();
        C2537a.m27159a(this.f8215G.getData_id(), "report", new C2369s());
        C2537a.m27157c(this.f8215G.getData_id(), new C2370t());
        C3810q.m24071b().m24070c("callscreen_report");
    }

    /* renamed from: G0 */
    public static void m27609G0(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19) {
            return;
        }
        Window window = activity.getWindow();
        if (i < 21) {
            window.addFlags(67108864);
            return;
        }
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 256 | 1024);
        window.setStatusBarColor(0);
    }

    /* renamed from: H0 */
    public void m27608H0(HomeInfo homeInfo) {
        try {
            Jzvd.m27996L();
            this.f8244j0 = C3809p0.m24075d(getApplicationContext()) >= 720 ? homeInfo.getHdvideo_url() : homeInfo.getSdvideo_url();
            String m22514j = EZCallApplication.m26145d(this).m22514j(this.f8244j0);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "proxyUrl:" + m22514j);
            }
            C2129t c2129t = new C2129t(m22514j);
            c2129t.f7391e = true;
            this.f8256y.setUp(c2129t, 1, JZMediaExo.class);
            this.f8256y.mo27462U();
            this.f8242h0 = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: I0 */
    private void m27607I0(HomeInfo homeInfo) {
        try {
            ComponentCallbacks2C3958c.m23676v(this).mo23629s(homeInfo.getJpgimg_url()).m23660A0(this.f8256y.f7337j0);
            Jzvd.m27996L();
            C2129t c2129t = new C2129t(Uri.parse(homeInfo.getPath()));
            c2129t.f7391e = true;
            this.f8256y.setUp(c2129t, 1, JZMediaExo.class);
            this.f8256y.mo27462U();
            this.f8242h0 = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: K0 */
    public void m27606K0() {
        Dialog dialog = this.f8224P;
        if (dialog != null) {
            dialog.dismiss();
        }
        HomeInfo homeInfo = this.f8215G;
        if (homeInfo != null) {
            if (this.f8228T && homeInfo.isIsdiy()) {
                this.f8215G.setUseVideoAudioRing(true);
            }
            C3810q.m24071b().m24070c("callscreen_set");
            if (this.f8229U) {
                C2558d.m27121a(this.f8215G, new C2361k());
            } else {
                C2552a.m27127b(this.f8215G, this.f8230V, new C2362l());
            }
        }
    }

    /* renamed from: L0 */
    public void m27605L0() {
        if (this.f8215G != null) {
            C3810q.m24071b().m24070c("callscreen_set_ringtone");
            if (this.f8215G.isIsdiy()) {
                return;
            }
            if (this.f8229U) {
                if (!C3776a.m24154k(EZCallApplication.m26146c())) {
                    return;
                }
                C2565b.m27109b(this.f8215G.getAudio_path(), this.f8215G.getName(), new C2363m());
            } else if (!C3776a.m24154k(EZCallApplication.m26146c())) {
            } else {
                C2565b.m27110a(this.f8215G.getAudio_path(), this.f8215G.getName(), this.f8230V, new C2364n());
            }
        }
    }

    /* renamed from: M0 */
    private void m27604M0(Context context) {
        try {
            DialogInterfaceC0146a m35556s = new DialogInterfaceC0146a.C0147a(context).m35558q(context.getResources().getString(R$string.connect_internet)).m35567h(context.getResources().getString(R$string.you_offline)).m35561n(context.getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC2354f()).m35571d(true).m35556s();
            this.f8227S = m35556s;
            m35556s.m35577g(-1).setTextColor(this.f8248n0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: N0 */
    private void m27603N0(Context context) {
        try {
            View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_net_tips, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
            TextView textView2 = (TextView) inflate.findViewById(R$id.tv_always_allow);
            TextView textView3 = (TextView) inflate.findViewById(R$id.tv_cancel);
            TextView textView4 = (TextView) inflate.findViewById(R$id.tv_allow);
            textView.setTypeface(this.f8253v);
            textView2.setTypeface(this.f8253v);
            textView3.setTypeface(this.f8253v);
            textView4.setTypeface(this.f8253v);
            textView3.setOnClickListener(new View$OnClickListenerC2351c());
            textView2.setOnClickListener(new View$OnClickListenerC2352d());
            textView4.setOnClickListener(new View$OnClickListenerC2353e());
            this.f8226R = new DialogInterfaceC0146a.C0147a(context).m35557r(inflate).m35571d(true).m35556s();
            C3810q.m24071b().m24070c("callscreen_mobile_net_show");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: O0 */
    private void m27602O0(boolean z) {
        try {
            this.f8224P = new Dialog(this, R$style.BottomDialog);
            View inflate = LayoutInflater.from(this).inflate(R$layout.dialog_set_callscreen, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(R$id.lb_missed_close);
            this.f8220L = (RadioButton) inflate.findViewById(R$id.radio_set_default);
            this.f8221M = (RadioButton) inflate.findViewById(R$id.radio_set_contacts);
            this.f8222N = (RadioButton) inflate.findViewById(R$id.radio_set_video_ringtone);
            this.f8223O = (RadioButton) inflate.findViewById(R$id.radio_set_default_ringtone);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_set);
            this.f8225Q = (LinearLayout) inflate.findViewById(R$id.ll_guide_set);
            this.f8220L.setOnCheckedChangeListener(new C2371u());
            this.f8221M.setOnCheckedChangeListener(new C2372v());
            this.f8222N.setOnCheckedChangeListener(new C2349a());
            this.f8223O.setOnCheckedChangeListener(new C2350b());
            this.f8225Q.setOnClickListener(this);
            imageView.setOnClickListener(this);
            frameLayout.setOnClickListener(this);
            this.f8220L.setTypeface(this.f8253v);
            this.f8221M.setTypeface(this.f8253v);
            this.f8222N.setTypeface(this.f8253v);
            this.f8223O.setTypeface(this.f8253v);
            this.f8220L.setTypeface(this.f8253v);
            ((TextView) inflate.findViewById(R$id.tv_callscreen_title)).setTypeface(this.f8253v);
            ((TextView) inflate.findViewById(R$id.tv_ringtone_title)).setTypeface(this.f8253v);
            ((TextView) inflate.findViewById(R$id.tv_set_callscreen)).setTypeface(this.f8253v);
            ((TextView) inflate.findViewById(R$id.tv_set_guide)).setTypeface(this.f8253v);
            this.f8224P.setContentView(inflate);
            ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
            layoutParams.width = getResources().getDisplayMetrics().widthPixels;
            inflate.setLayoutParams(layoutParams);
            if (this.f8224P.getWindow() != null) {
                this.f8224P.getWindow().setGravity(80);
                this.f8224P.getWindow().setWindowAnimations(R$style.BottomDialog_Animation);
            }
            this.f8224P.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: P0 */
    public void m27601P0(String str) {
        try {
            String m27103b = C2568a.m27103b(this.f8215G.getName() + "_" + this.f8215G.getData_id() + ".aac");
            StringBuilder sb = new StringBuilder();
            sb.append(C2568a.f8983b);
            sb.append(m27103b);
            String sb2 = sb.toString();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "audio_filePath: " + sb2);
                C3718c0.m24436a("callscreen", "audio_url: " + str);
            }
            C2058q.m28155d().m28156c(str).mo28380h(sb2).mo28381g(0, this.f8215G).mo28392P(this.f8251q0).mo28402F(8).mo28394N(1000).mo28399I(1000).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: Q0 */
    private void m27600Q0(String str) {
        try {
            Dialog dialog = this.f8224P;
            if (dialog != null) {
                dialog.dismiss();
            }
            String m27103b = C2568a.m27103b(this.f8215G.getName() + "_" + this.f8215G.getData_id() + ".mp4");
            StringBuilder sb = new StringBuilder();
            sb.append(C2568a.f8982a);
            sb.append(m27103b);
            String sb2 = sb.toString();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "filePath: " + sb2);
                C3718c0.m24436a("callscreen", "url: " + str);
            }
            this.f8245k0 = System.currentTimeMillis();
            C3810q.m24071b().m24070c("callscreen_download");
            C2058q.m28155d().m28156c(str).mo28380h(sb2).mo28381g(0, this.f8215G).mo28392P(this.f8250p0).mo28402F(8).mo28394N(1000).mo28399I(1000).start();
            C2537a.m27159a(this.f8215G.getData_id(), "download", new C2355g());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x0 */
    public void m27573x0() {
        try {
            if (this.f8255x.booleanValue()) {
                this.f8257z.setImageResource(R$drawable.ic_back_oppo);
            }
            HomeInfo homeInfo = (HomeInfo) getIntent().getSerializableExtra("homeinfo");
            this.f8215G = homeInfo;
            if (homeInfo == null) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("callscreen", "homeInfo:" + this.f8215G.toString());
            }
            TextView textView = this.f8210B;
            textView.setText(getResources().getString(R$string.f7404by) + " " + this.f8215G.getAuthor());
            this.f8211C.setText(this.f8215G.getName());
            this.f8214F.setText(String.valueOf(this.f8215G.getLike_count()));
            if (this.f8215G.isIslike()) {
                this.f8213E.setImageResource(R$drawable.pdt_favorite_black_36dp);
            } else {
                this.f8213E.setImageResource(R$drawable.pdt_favorite_white_36dp);
            }
            if (this.f8215G.getPath() != null && !"".equals(this.f8215G.getPath())) {
                if (new File(this.f8215G.getPath()).exists()) {
                    this.f8240f0 = true;
                } else {
                    this.f8240f0 = false;
                }
            }
            if (this.f8215G.isDownloaded() && this.f8240f0 && C3776a.m24159f(getApplicationContext())) {
                m27607I0(this.f8215G);
                return;
            }
            ComponentCallbacks2C3958c.m23676v(this).mo23624x(new C4401e().mo22628c()).mo23629s(this.f8215G.getJpgimg_url()).m23660A0(this.f8256y.f7337j0);
            m27613B0();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: y0 */
    public void m27572y0() {
        try {
            C2786a.m26600a(new C2365o());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: z0 */
    private void m27571z0() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.pop_comment_report, (ViewGroup) null);
        ((TextView) inflate.findViewById(R$id.tv_comment_report)).setTypeface(this.f8253v);
        ((FrameLayout) inflate.findViewById(R$id.fl_btn)).setOnClickListener(this);
        this.f8217I = new PopupWindow(inflate);
        this.f8217I.setWidth(getWindowManager().getDefaultDisplay().getWidth() / 4);
        this.f8217I.setHeight(-2);
        this.f8217I.setFocusable(true);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            this.f8217I.setAnimationStyle(R$style.pop_style_rtl);
        } else {
            this.f8217I.setAnimationStyle(R$style.pop_style);
        }
        this.f8217I.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        HomeInfo homeInfo;
        RadioButton radioButton;
        Bundle extras;
        super.onActivityResult(i, i2, intent);
        if (i == 8989 && i2 == 9898) {
            if (intent != null && (extras = intent.getExtras()) != null) {
                this.f8230V = extras.getParcelableArrayList("selected_contacts");
            }
            ArrayList<PersonaliseContact> arrayList = this.f8230V;
            if ((arrayList != null && arrayList.size() > 0) || (radioButton = this.f8220L) == null) {
                return;
            }
            radioButton.setChecked(true);
        } else if (i != 970 || i2 != 980 || (homeInfo = this.f8215G) == null) {
        } else {
            if (!homeInfo.isDownloaded()) {
                m27600Q0(this.f8244j0);
                return;
            }
            m27606K0();
            if (this.f8228T) {
                m27605L0();
            } else {
                C3810q.m24071b().m24070c("callscreen_set_default_ringtone");
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        try {
            if (Jzvd.m27993b()) {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_btn /* 2131296721 */:
                PopupWindow popupWindow = this.f8217I;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                HomeInfo homeInfo = this.f8215G;
                if (homeInfo == null || homeInfo.isIsreport()) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getResources().getString(R$string.report_issues));
                builder.setMessage(getResources().getString(R$string.report_callscreen));
                builder.setPositiveButton(getResources().getString(R$string.report), new DialogInterface.OnClickListener() { // from class: com.allinone.callerid.callscreen.activitys.a
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        CallScreenPdtActivity.this.m27611E0(dialogInterface, i);
                    }
                });
                builder.setNegativeButton(getResources().getString(R$string.update_dialog_cancel), DialogInterface$OnClickListenerC2418b.f8428d);
                builder.create().show();
                return;
            case R$id.fl_set /* 2131296784 */:
                LinearLayout linearLayout = this.f8225Q;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                if (!C3776a.m24164a(getApplicationContext())) {
                    Intent intent = new Intent();
                    intent.setClass(this, OpenPerActivity.class);
                    startActivityForResult(intent, 970);
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    return;
                }
                HomeInfo homeInfo2 = this.f8215G;
                if (homeInfo2 == null) {
                    return;
                }
                if (!homeInfo2.isDownloaded()) {
                    m27600Q0(this.f8244j0);
                    return;
                }
                m27606K0();
                if (this.f8228T) {
                    m27605L0();
                    return;
                } else {
                    C3810q.m24071b().m24070c("callscreen_set_default_ringtone");
                    return;
                }
            case R$id.fl_set_callscreen /* 2131296785 */:
                m27602O0(C2578f.m27070k());
                C3810q.m24071b().m24070c("callscreen_click_set");
                return;
            case R$id.fl_set_callscreen_guide /* 2131296786 */:
                this.f8218J.setVisibility(8);
                this.f8219K = false;
                m27602O0(C2578f.m27070k());
                C3810q.m24071b().m24070c("callscreen_click_set");
                return;
            case R$id.fl_set_callscreen_preview /* 2131296787 */:
                m27602O0(C2578f.m27070k());
                C3810q.m24071b().m24070c("callscreen_click_set");
                return;
            case R$id.iv_back /* 2131296951 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                if (!this.f8249o0) {
                    return;
                }
                C3761e.m24321d().m24319f(this);
                return;
            case R$id.iv_like /* 2131297010 */:
                if (this.f8215G.isIslike()) {
                    this.f8215G.setIslike(false);
                    HomeInfo homeInfo3 = this.f8215G;
                    homeInfo3.setLike_count(homeInfo3.getLike_count() - 1);
                    this.f8214F.setText(String.valueOf(this.f8215G.getLike_count()));
                    this.f8213E.setImageResource(R$drawable.pdt_favorite_white_36dp);
                    C2537a.m27158b(this.f8215G.getData_id(), this.f8215G.getLike_count(), false, new C2366p());
                    return;
                }
                HomeInfo homeInfo4 = this.f8215G;
                homeInfo4.setLike_count(homeInfo4.getLike_count() + 1);
                this.f8214F.setText(String.valueOf(this.f8215G.getLike_count()));
                this.f8215G.setIslike(true);
                this.f8213E.setImageResource(R$drawable.pdt_favorite_black_36dp);
                C2537a.m27159a(this.f8215G.getData_id(), "like", new C2367q());
                C2537a.m27158b(this.f8215G.getData_id(), this.f8215G.getLike_count(), true, new C2368r());
                C3810q.m24071b().m24070c("callscreen_like");
                return;
            case R$id.iv_more /* 2131297016 */:
                if (this.f8217I == null) {
                    m27571z0();
                }
                if (this.f8217I == null) {
                    return;
                }
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                PopupWindow popupWindow2 = this.f8217I;
                popupWindow2.showAtLocation(view, 0, iArr[0], iArr[1] - popupWindow2.getHeight());
                return;
            case R$id.iv_perview /* 2131297028 */:
                if (this.f8235a0) {
                    this.f8235a0 = false;
                    this.f8232X.setVisibility(8);
                    this.f8233Y.setVisibility(8);
                    this.f8234Z.setVisibility(8);
                    this.f8231W.setVisibility(0);
                    this.f8212D.setVisibility(0);
                    this.f8238d0.setVisibility(0);
                    this.f8239e0.setVisibility(0);
                    this.f8247m0.setImageResource(R$drawable.pdt_preview_white_24dp);
                    return;
                }
                this.f8235a0 = true;
                this.f8232X.setVisibility(0);
                this.f8233Y.setVisibility(0);
                this.f8234Z.setVisibility(0);
                this.f8231W.setVisibility(8);
                this.f8212D.setVisibility(8);
                this.f8238d0.setVisibility(8);
                this.f8239e0.setVisibility(8);
                C3810q.m24071b().m24070c("callscreen_preview");
                this.f8247m0.setImageResource(R$drawable.back_perview);
                return;
            case R$id.iv_share /* 2131297053 */:
                try {
                    Intent intent2 = new Intent("android.intent.action.SEND");
                    intent2.setType("text/plain");
                    intent2.putExtra("android.intent.extra.SUBJECT", getResources().getString(R$string.share_subject));
                    intent2.putExtra("android.intent.extra.TEXT", getResources().getString(R$string.call_screen_share));
                    intent2.setFlags(268435456);
                    startActivity(Intent.createChooser(intent2, getResources().getString(R$string.share_aiocaller)));
                    overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                    C3810q.m24071b().m24070c("callscreen_share");
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R$id.iv_silent /* 2131297055 */:
                if (!this.f8242h0) {
                    return;
                }
                if (this.f8216H) {
                    this.f8256y.m27991d();
                    this.f8216H = false;
                    this.f8209A.setImageResource(R$drawable.pdt_sound);
                    return;
                }
                this.f8256y.m27988s();
                this.f8216H = true;
                this.f8209A.setImageResource(R$drawable.pdt_nosound);
                C3810q.m24071b().m24070c("callscreen_silent");
                return;
            case R$id.lb_missed_close /* 2131297124 */:
                Dialog dialog = this.f8224P;
                if (dialog == null) {
                    return;
                }
                dialog.dismiss();
                return;
            case R$id.rl_bg /* 2131297475 */:
                if (this.f8219K) {
                    return;
                }
                if (this.f8235a0) {
                    this.f8235a0 = false;
                    this.f8232X.setVisibility(8);
                    this.f8233Y.setVisibility(8);
                    this.f8234Z.setVisibility(8);
                    this.f8231W.setVisibility(0);
                    this.f8212D.setVisibility(0);
                    this.f8238d0.setVisibility(0);
                    this.f8239e0.setVisibility(0);
                    this.f8247m0.setImageResource(R$drawable.pdt_preview_white_24dp);
                    return;
                }
                this.f8235a0 = true;
                this.f8232X.setVisibility(0);
                this.f8233Y.setVisibility(0);
                this.f8234Z.setVisibility(0);
                this.f8231W.setVisibility(8);
                this.f8212D.setVisibility(8);
                this.f8238d0.setVisibility(8);
                this.f8239e0.setVisibility(8);
                this.f8247m0.setImageResource(R$drawable.back_perview);
                C3810q.m24071b().m24070c("callscreen_preview");
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m27609G0(this);
        setContentView(R$layout.activity_callscreen);
        Boolean m24250f0 = C3767h1.m24250f0(this);
        this.f8255x = m24250f0;
        if (m24250f0.booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        this.f8253v = C3739f1.m24359b();
        this.f8254w = C3739f1.m24360a();
        getWindow().getDecorView().post(new RunnableC2358i());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            Jzvd.m27996L();
            C2373w c2373w = this.f8241g0;
            if (c2373w == null) {
                return;
            }
            unregisterReceiver(c2373w);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.f8219K) {
                this.f8219K = false;
                this.f8218J.setVisibility(8);
                return true;
            } else if (this.f8243i0) {
                return true;
            } else {
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        try {
            Jzvd.m27987t();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            Jzvd.m27986u();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
