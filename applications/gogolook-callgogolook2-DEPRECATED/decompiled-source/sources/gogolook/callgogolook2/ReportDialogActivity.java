package gogolook.callgogolook2;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.callgogolook2.view.ImeStatusAwarableEditText;
import gogolook.callgogolook2.view.LimitHeightListView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12940h;
import p459j.p460a.p533l.C12948m;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p576w.C13749g;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14034j0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14058l0;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13895d;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14305v;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14667b;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity.class */
public class ReportDialogActivity extends Activity {

    /* renamed from: A */
    public String f10500A;

    /* renamed from: D */
    public ListView f10503D;

    /* renamed from: E */
    public ListView f10504E;

    /* renamed from: F */
    public C12940h f10505F;

    /* renamed from: G */
    public C12948m f10506G;

    /* renamed from: I */
    public DisplayMetrics f10508I;

    /* renamed from: J */
    public DataUserReport f10509J;

    /* renamed from: L */
    public EnumC4379w f10511L;

    /* renamed from: a */
    public Subscription f10519a;

    /* renamed from: b */
    public TextView f10520b;

    /* renamed from: c */
    public boolean f10521c;

    /* renamed from: e */
    public Context f10523e;

    /* renamed from: f */
    public Bundle f10524f;

    /* renamed from: g */
    public String f10525g;

    /* renamed from: h */
    public int f10526h;

    /* renamed from: i */
    public String f10527i;

    /* renamed from: j */
    public boolean f10528j;

    /* renamed from: k */
    public boolean f10529k;

    /* renamed from: l */
    public String[] f10530l;

    /* renamed from: m */
    public String f10531m;

    /* renamed from: n */
    public String f10532n;

    /* renamed from: o */
    public String f10533o;

    /* renamed from: p */
    public int f10534p;

    /* renamed from: q */
    public boolean f10535q;

    /* renamed from: r */
    public boolean f10536r;

    /* renamed from: s */
    public boolean f10537s;
    @Deprecated

    /* renamed from: t */
    public Messenger f10538t;

    /* renamed from: u */
    public boolean f10539u;

    /* renamed from: v */
    public boolean f10540v;

    /* renamed from: x */
    public boolean f10542x;

    /* renamed from: z */
    public boolean f10544z;

    /* renamed from: d */
    public String[] f10522d = null;

    /* renamed from: w */
    public boolean f10541w = true;

    /* renamed from: y */
    public boolean f10543y = false;

    /* renamed from: B */
    public int f10501B = -1;

    /* renamed from: C */
    public boolean f10502C = true;

    /* renamed from: H */
    public String f10507H = null;

    /* renamed from: K */
    public C14241a.EnumC14244c f10510K = null;

    /* renamed from: N */
    public int f10512N = 1;

    /* renamed from: O */
    public int f10513O = 0;

    /* renamed from: P */
    public IapProductRealmObject f10514P = null;

    /* renamed from: Q */
    public boolean f10515Q = false;

    /* renamed from: R */
    public boolean f10516R = false;

    /* renamed from: S */
    public C14241a f10517S = null;

    /* renamed from: T */
    public View.OnClickListener f10518T = new View$OnClickListenerC4365k();

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$a.class */
    public class View$OnClickListenerC4351a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f10545a;

        /* renamed from: b */
        public final /* synthetic */ boolean f10546b;

        public View$OnClickListenerC4351a(EditText editText, boolean z) {
            this.f10545a = editText;
            this.f10546b = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14667b.m905a().m904a(view);
            String trim = this.f10545a.getText().toString().trim();
            int intValue = Integer.valueOf(ReportDialogActivity.m28960a((int) R$string.toast_tag_limit_length1)).intValue();
            if (trim.length() > intValue) {
                C14687h.m861a(ReportDialogActivity.this.f10523e, String.format(ReportDialogActivity.m28960a((int) R$string.toast_tag_limit), Integer.valueOf(intValue)), 1).m858c();
            } else if (!C14217x3.m2160b(trim)) {
                ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.ReportTagDone, trim, (String) null);
                if (!ReportDialogActivity.this.f10535q && ReportDialogActivity.this.f10539u) {
                    CallStats.m28534h().m28539c().m28516a(CallAction.DONE_TAG);
                }
                C13625a.m3783e(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m, trim);
                if (ReportDialogActivity.this.f10509J != null) {
                    ReportDialogActivity.this.f10509J.m28470a(trim);
                }
                C11052i.m10328e().m10344a(ReportDialogActivity.this.f10531m);
                ReportDialogActivity.m28902v(ReportDialogActivity.this);
                if (C13749g.m3532a(ReportDialogActivity.this.f10513O, ReportDialogActivity.this.f10514P)) {
                    C13749g.m3530a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10514P);
                } else {
                    CallUtils.m26549c(ReportDialogActivity.this.f10523e, 4);
                }
                if (this.f10546b) {
                    ReportDialogActivity.this.m28915k();
                }
                ReportDialogActivity.this.m28917j();
                ReportDialogActivity.this.finish();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$b.class */
    public class C4352b implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ TextView f10548a;

        public C4352b(TextView textView) {
            this.f10548a = textView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.ReviseTag, (String) null, (String) null);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ReportDialogActivity.this.f10507H = charSequence.toString();
            if (charSequence.toString().length() > 0) {
                this.f10548a.setBackgroundResource(R$drawable.green_btn_selector);
                this.f10548a.setEnabled(true);
                return;
            }
            this.f10548a.setBackgroundResource(R$drawable.call_end_disable_btn);
            this.f10548a.setEnabled(false);
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$c.class */
    public class C4353c implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f10550a;

        public C4353c(EditText editText) {
            this.f10550a = editText;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f10550a.setText((String) ReportDialogActivity.this.f10506G.getItem(i));
            EditText editText = this.f10550a;
            editText.setSelection(editText.getText().toString().length());
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$d.class */
    public class View$OnClickListenerC4354d implements View.OnClickListener {
        public View$OnClickListenerC4354d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                View currentFocus = ReportDialogActivity.this.getCurrentFocus();
                if (currentFocus != null) {
                    ((InputMethodManager) ReportDialogActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.ReportAsSpam, (String) null, (String) null);
            ReportDialogActivity.this.m28936b();
            ReportDialogActivity reportDialogActivity = ReportDialogActivity.this;
            reportDialogActivity.m28955a(reportDialogActivity.getResources().getConfiguration());
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$e.class */
    public class View$OnClickListenerC4355e implements View.OnClickListener {
        public View$OnClickListenerC4355e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.Close, (String) null, (String) null);
            ReportDialogActivity.this.m28919i();
            ReportDialogActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$f.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4356f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f10554a;

        /* renamed from: b */
        public final /* synthetic */ View f10555b;

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$f$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$f$a.class */
        public class RunnableC4357a implements Runnable {
            public RunnableC4357a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[2];
                ViewTreeObserver$OnGlobalLayoutListenerC4356f.this.f10555b.getLocationOnScreen(iArr);
                if (((ReportDialogActivity.this.f10508I.heightPixels / 2) - (ViewTreeObserver$OnGlobalLayoutListenerC4356f.this.f10555b.getHeight() / 2)) - iArr[1] > C14217x3.m2201a(25.0f)) {
                    ReportDialogActivity.this.f10505F.m4969a(true);
                } else {
                    ReportDialogActivity.this.f10505F.m4969a(false);
                }
            }
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC4356f(EditText editText, View view) {
            this.f10554a = editText;
            this.f10555b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f10554a.getTag() == null || !((Boolean) this.f10554a.getTag()).booleanValue()) {
                ReportDialogActivity.this.f10503D.post(new RunnableC4357a());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$g.class */
    public class C4358g implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f10558a;

        /* renamed from: b */
        public final /* synthetic */ View f10559b;

        /* renamed from: c */
        public final /* synthetic */ EditText f10560c;

        /* renamed from: d */
        public final /* synthetic */ View f10561d;

        /* renamed from: e */
        public final /* synthetic */ ImageView f10562e;

        /* renamed from: f */
        public final /* synthetic */ TextView f10563f;

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$g$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$g$a.class */
        public class RunnableC4359a implements Runnable {
            public RunnableC4359a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C4358g.this.f10560c.setTag(false);
            }
        }

        public C4358g(View view, View view2, EditText editText, View view3, ImageView imageView, TextView textView) {
            this.f10558a = view;
            this.f10559b = view2;
            this.f10560c = editText;
            this.f10561d = view3;
            this.f10562e = imageView;
            this.f10563f = textView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i != ReportDialogActivity.this.f10505F.m4971a()) {
                ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.ChooseSpamCategory, (String) null, (String) null);
                ReportDialogActivity.this.f10505F.m4970a(i);
                if (ReportDialogActivity.this.f10540v) {
                    this.f10558a.setVisibility(8);
                    this.f10559b.setVisibility(8);
                    this.f10560c.setVisibility(8);
                } else {
                    this.f10558a.setVisibility(0);
                    this.f10559b.setVisibility(0);
                    this.f10560c.setVisibility(0);
                }
                if (!ReportDialogActivity.this.f10543y || i != ReportDialogActivity.this.f10522d.length - 1) {
                    if ((ReportDialogActivity.this.f10534p == 2 && !C12810o.m5234k()) || ReportDialogActivity.this.f10535q) {
                        ReportDialogActivity.this.m28953a(this.f10561d, this.f10562e, this.f10563f, false, true, false);
                    } else if (ReportDialogActivity.this.f10537s) {
                        ReportDialogActivity.this.m28953a(this.f10561d, this.f10562e, this.f10563f, false, true, true);
                    } else {
                        ReportDialogActivity reportDialogActivity = ReportDialogActivity.this;
                        reportDialogActivity.m28953a(this.f10561d, this.f10562e, this.f10563f, true, true, reportDialogActivity.f10529k || ReportDialogActivity.this.f10528j);
                    }
                    this.f10563f.setBackgroundResource(R$drawable.call_end_red_btn_selector);
                } else {
                    ReportDialogActivity.this.m28953a(this.f10561d, this.f10562e, this.f10563f, false, true, false);
                    this.f10563f.setBackgroundResource(R$drawable.green_btn_selector);
                }
                ReportDialogActivity.this.f10505F.notifyDataSetChanged();
                this.f10560c.setTag(true);
                this.f10560c.requestFocus();
                ReportDialogActivity.this.f10503D.postDelayed(new RunnableC4359a(), 500L);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$h.class */
    public class View$OnClickListenerC4360h implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$h$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$h$a.class */
        public class DialogInterface$OnClickListenerC4361a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4361a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C12928g.m4998a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m);
                C13625a.m3788d(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m);
                C11052i.m10328e().m10344a(ReportDialogActivity.this.f10531m);
                if (ReportDialogActivity.this.f10509J != null) {
                    ReportDialogActivity.this.f10509J.m28470a("");
                    ReportDialogActivity.this.f10509J.m28469a("", 0);
                }
                ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.Delete, (String) null, (String) null);
                ReportDialogActivity.this.m28917j();
                ReportDialogActivity.this.finish();
            }
        }

        public View$OnClickListenerC4360h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(ReportDialogActivity.this.f10523e);
            fVar.m979b(ReportDialogActivity.m28960a((int) R$string.callend_edit_deletedialog_titile));
            fVar.m977c(4);
            fVar.m978b(ReportDialogActivity.m28960a((int) R$string.yes), new DialogInterface$OnClickListenerC4361a());
            fVar.m984a(ReportDialogActivity.m28960a((int) R$string.f10497no), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$i.class */
    public class View$OnClickListenerC4362i implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f10568a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f10569b;

        /* renamed from: c */
        public final /* synthetic */ View f10570c;

        /* renamed from: d */
        public final /* synthetic */ boolean f10571d;

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$i$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$i$a.class */
        public class C4363a implements Action1<Boolean> {

            /* renamed from: a */
            public final /* synthetic */ String f10573a;

            /* renamed from: b */
            public final /* synthetic */ String f10574b;

            /* renamed from: c */
            public final /* synthetic */ int f10575c;

            /* renamed from: d */
            public final /* synthetic */ int f10576d;

            /* renamed from: e */
            public final /* synthetic */ boolean f10577e;

            public C4363a(String str, String str2, int i, int i2, boolean z) {
                this.f10573a = str;
                this.f10574b = str2;
                this.f10575c = i;
                this.f10576d = i2;
                this.f10577e = z;
            }

            /* renamed from: a */
            public void call(Boolean bool) {
                if (C13749g.m3532a(ReportDialogActivity.this.f10513O, ReportDialogActivity.this.f10514P)) {
                    C13749g.m3530a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10514P);
                } else {
                    CallUtils.m26549c(ReportDialogActivity.this.f10523e, bool.booleanValue() ? 1 : 3);
                }
                ReportDialogActivity.this.m28938a(this.f10573a, this.f10574b, this.f10575c, this.f10576d, this.f10577e, bool.booleanValue(), View$OnClickListenerC4362i.this.f10571d);
            }
        }

        public View$OnClickListenerC4362i(EditText editText, ImageView imageView, View view, boolean z) {
            this.f10568a = editText;
            this.f10569b = imageView;
            this.f10570c = view;
            this.f10571d = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            int a = ReportDialogActivity.this.f10505F.m4971a();
            if (a != -1) {
                String trim = this.f10568a.getText().toString().trim();
                int intValue = Integer.valueOf(ReportDialogActivity.m28960a((int) R$string.toast_tag_limit_length1)).intValue();
                int i = 0;
                if (trim.length() > intValue) {
                    C14687h.m861a(ReportDialogActivity.this.f10523e, String.format(ReportDialogActivity.m28960a((int) R$string.toast_tag_limit), Integer.valueOf(intValue)), 1).m858c();
                    return;
                }
                ReportDialogActivity.this.f10515Q = true;
                if (!ReportDialogActivity.this.f10543y || a != ReportDialogActivity.this.f10522d.length - 1) {
                    if (ReportDialogActivity.this.f10542x) {
                        i = C14093n4.m2576b(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10522d[a]);
                    }
                    str = C14093n4.m2581a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10522d[a]);
                    C12928g.m4999a(ReportDialogActivity.this.f10523e.getApplicationContext(), ReportDialogActivity.this.f10534p, ReportDialogActivity.this.f10532n, ReportDialogActivity.this.f10531m, str, i);
                } else {
                    C12928g.m4998a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m);
                    str = "";
                    i = 0;
                }
                if (!TextUtils.isEmpty(trim)) {
                    ReportDialogActivity.m28902v(ReportDialogActivity.this);
                }
                boolean booleanValue = ((Boolean) this.f10569b.getTag()).booleanValue();
                if (this.f10570c.getVisibility() == 0 || ReportDialogActivity.this.f10537s) {
                    C12928g.m4992a(ReportDialogActivity.this.f10523e.getApplicationContext(), booleanValue, ReportDialogActivity.this.f10534p, ReportDialogActivity.this.f10532n, ReportDialogActivity.this.f10531m, str, i, ReportDialogActivity.this.f10509J.m28461d()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4363a(trim, str, i, a, booleanValue));
                    return;
                }
                if (C13749g.m3532a(ReportDialogActivity.this.f10513O, ReportDialogActivity.this.f10514P)) {
                    C13749g.m3530a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10514P);
                } else {
                    CallUtils.m26549c(ReportDialogActivity.this.f10523e, 3);
                }
                ReportDialogActivity.this.m28938a(trim, str, i, a, booleanValue, false, this.f10571d);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$j.class */
    public class C4364j implements TextWatcher {
        public C4364j() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.ReviseTag, (String) null, (String) null);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$k.class */
    public class View$OnClickListenerC4365k implements View.OnClickListener {
        public View$OnClickListenerC4365k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getTag(R$id.tv_input) != null) {
                ReportDialogActivity.this.f10520b = (TextView) view.getTag(R$id.tv_input);
                Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                ReportDialogActivity.this.startActivityForResult(intent, 101);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$l */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$l.class */
    public class View$OnClickListenerC4366l implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f10581a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f10582b;

        /* renamed from: c */
        public final /* synthetic */ TextView f10583c;

        public View$OnClickListenerC4366l(View view, ImageView imageView, TextView textView) {
            this.f10581a = view;
            this.f10582b = imageView;
            this.f10583c = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ReportDialogActivity reportDialogActivity = ReportDialogActivity.this;
            View view2 = this.f10581a;
            ImageView imageView = this.f10582b;
            reportDialogActivity.m28953a(view2, imageView, this.f10583c, true, true, !((Boolean) imageView.getTag()).booleanValue());
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$m */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$m.class */
    public class C4367m extends TimerTask {

        /* renamed from: a */
        public final /* synthetic */ EditText f10585a;

        public C4367m(EditText editText) {
            this.f10585a = editText;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ((InputMethodManager) ReportDialogActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
            EditText editText = this.f10585a;
            if (editText instanceof ImeStatusAwarableEditText) {
                ((ImeStatusAwarableEditText) editText).m25919a();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$n */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$n.class */
    public class C4368n implements Action1<Object> {
        public C4368n() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if ((obj instanceof C14058l0) || (obj instanceof C14034j0)) {
                ReportDialogActivity.this.finish();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$o */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$o.class */
    public class C4369o implements Action1<Pair<Integer, IapProductRealmObject>> {
        public C4369o() {
        }

        /* renamed from: a */
        public void call(Pair<Integer, IapProductRealmObject> pair) {
            ReportDialogActivity reportDialogActivity = ReportDialogActivity.this;
            reportDialogActivity.f10534p = reportDialogActivity.f10524f.getInt("blockCtype");
            ReportDialogActivity.this.f10513O = ((Integer) pair.first).intValue();
            ReportDialogActivity.this.f10514P = (IapProductRealmObject) pair.second;
            if (!C14217x3.m2160b(ReportDialogActivity.this.f10525g) || (ReportDialogActivity.this.f10511L == EnumC4379w.DIRECT_ASK_ASK_SPAM && !ReportDialogActivity.this.f10536r)) {
                ReportDialogActivity.this.f10537s = false;
                ReportDialogActivity.this.m28936b();
            } else {
                ReportDialogActivity.this.m28929d();
            }
            if (C13565v.m3921g().m23335b() && C13749g.m3529b()) {
                Toast.makeText(ReportDialogActivity.this.f10523e, "30 days current tags size: " + ReportDialogActivity.this.f10513O, 1).show();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$p */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$p.class */
    public class C4370p implements Single.OnSubscribe<Pair<Integer, IapProductRealmObject>> {
        public C4370p() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Pair<Integer, IapProductRealmObject>> singleSubscriber) {
            IapProductRealmObject iapProductRealmObject;
            int i;
            ReportDialogActivity.this.m28925f();
            ReportDialogActivity.this.m28923g();
            if (C13749g.m3529b()) {
                i = C13749g.m3533a();
                iapProductRealmObject = C13749g.m3531a(ReportDialogActivity.this);
            } else {
                i = 0;
                iapProductRealmObject = null;
            }
            singleSubscriber.onSuccess(new Pair(Integer.valueOf(i), iapProductRealmObject));
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$q */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$q.class */
    public class C4371q implements Action1<Pair<Integer, IapProductRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ int f10590a;

        public C4371q(int i) {
            this.f10590a = i;
        }

        /* renamed from: a */
        public void call(Pair<Integer, IapProductRealmObject> pair) {
            ReportDialogActivity.this.m28936b();
            ReportDialogActivity.this.f10513O = ((Integer) pair.first).intValue();
            ReportDialogActivity.this.f10514P = (IapProductRealmObject) pair.second;
            if (this.f10590a > -1 && ReportDialogActivity.this.f10503D != null) {
                ListView listView = ReportDialogActivity.this.f10503D;
                int i = this.f10590a;
                listView.performItemClick(null, i, i);
                ReportDialogActivity.this.f10503D.setSelection(this.f10590a);
            }
            if (C13565v.m3921g().m23335b() && C13749g.m3529b()) {
                Toast.makeText(ReportDialogActivity.this.f10523e, "30 days current tags size: " + ReportDialogActivity.this.f10513O, 1).show();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$r */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$r.class */
    public class C4372r implements Single.OnSubscribe<Pair<Integer, IapProductRealmObject>> {
        public C4372r() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Pair<Integer, IapProductRealmObject>> singleSubscriber) {
            IapProductRealmObject iapProductRealmObject;
            int i;
            ReportDialogActivity.this.m28925f();
            ReportDialogActivity.this.m28923g();
            if (C13749g.m3529b()) {
                i = C13749g.m3533a();
                iapProductRealmObject = C13749g.m3531a(ReportDialogActivity.this);
            } else {
                i = 0;
                iapProductRealmObject = null;
            }
            singleSubscriber.onSuccess(new Pair(Integer.valueOf(i), iapProductRealmObject));
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$s */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$s.class */
    public class View$OnClickListenerC4373s implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f10593a;

        /* renamed from: b */
        public final /* synthetic */ int f10594b;

        /* renamed from: c */
        public final /* synthetic */ int f10595c;

        public View$OnClickListenerC4373s(ImageView imageView, int i, int i2) {
            this.f10593a = imageView;
            this.f10594b = i;
            this.f10595c = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ReportDialogActivity.this.f10502C = !((Boolean) this.f10593a.getTag()).booleanValue();
            this.f10593a.setTag(Boolean.valueOf(ReportDialogActivity.this.f10502C));
            this.f10593a.setImageResource(ReportDialogActivity.this.f10502C ? this.f10594b : this.f10595c);
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$t */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$t.class */
    public class View$OnClickListenerC4374t implements View.OnClickListener {
        public View$OnClickListenerC4374t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.Close, (String) null, (String) null);
            ReportDialogActivity.this.m28919i();
            ReportDialogActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$u */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$u.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4375u implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f10598a;

        /* renamed from: b */
        public final /* synthetic */ View f10599b;

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$u$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$u$a.class */
        public class RunnableC4376a implements Runnable {
            public RunnableC4376a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[2];
                ViewTreeObserver$OnGlobalLayoutListenerC4375u.this.f10599b.getLocationOnScreen(iArr);
                if (((ReportDialogActivity.this.f10508I.heightPixels / 2) - (ViewTreeObserver$OnGlobalLayoutListenerC4375u.this.f10599b.getHeight() / 2)) - iArr[1] > C14217x3.m2201a(25.0f)) {
                    ReportDialogActivity.this.f10504E.setVisibility(8);
                } else {
                    ReportDialogActivity.this.f10504E.setVisibility(0);
                }
            }
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC4375u(View view, View view2) {
            this.f10598a = view;
            this.f10599b = view2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ReportDialogActivity.this.f10530l != null && ReportDialogActivity.this.f10530l.length > 0) {
                this.f10598a.post(new RunnableC4376a());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$v */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$v.class */
    public class View$OnClickListenerC4377v implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.ReportDialogActivity$v$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$v$a.class */
        public class DialogInterface$OnClickListenerC4378a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4378a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C12928g.m4998a(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m);
                C13625a.m3788d(ReportDialogActivity.this.f10523e, ReportDialogActivity.this.f10531m);
                C11052i.m10328e().m10344a(ReportDialogActivity.this.f10531m);
                if (ReportDialogActivity.this.f10509J != null) {
                    ReportDialogActivity.this.f10509J.m28470a("");
                    ReportDialogActivity.this.f10509J.m28469a("", 0);
                }
                ReportDialogActivity.this.m28940a(C14241a.EnumC14243b.Delete, (String) null, (String) null);
                ReportDialogActivity.this.m28917j();
                ReportDialogActivity.this.finish();
            }
        }

        public View$OnClickListenerC4377v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(ReportDialogActivity.this.f10523e);
            fVar.m979b(ReportDialogActivity.m28960a((int) R$string.callend_edit_deletedialog_titile));
            fVar.m977c(4);
            fVar.m978b(ReportDialogActivity.m28960a((int) R$string.yes), new DialogInterface$OnClickListenerC4378a());
            fVar.m984a(ReportDialogActivity.m28960a((int) R$string.f10497no), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: gogolook.callgogolook2.ReportDialogActivity$w */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ReportDialogActivity$w.class */
    public enum EnumC4379w {
        DIRECT_ASK,
        DIRECT_ASK_ASK_SPAM,
        QUESTION_SPAM,
        QUESTION_INFO,
        QUESTION_SUGGESTION_INFO,
        QUESTION_SUGGESTION_SPAM,
        QUESTION_SUGGESTION_SPAM_FOR_DIRECT_ASK,
        QUESTION_DIFFERENT_INFO,
        MAIN_ACTION,
        PRIVATE_REPORT,
        EXPIRE_CONFIRMATION
    }

    /* renamed from: a */
    public static Intent m28958a(@NonNull Context context, @NonNull DataUserReport dataUserReport, @NonNull String str, @NonNull String str2, @Nullable String[] strArr, C14241a.EnumC14244c cVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, @Nullable EnumC4379w wVar, @Nullable HandlerC12947l lVar) {
        Intent intent = new Intent(context, ReportDialogActivity.class);
        Bundle bundle = new Bundle();
        boolean z7 = true;
        bundle.putBoolean(NovaHomeBadger.TAG, true);
        bundle.putString("tagE164", str);
        if (cVar != C14241a.EnumC14244c.Ndp) {
            z7 = false;
        }
        bundle.putBoolean("tagFromNDP", z7);
        bundle.putString("tagNumber", str2);
        bundle.putStringArray("tagSuggest", strArr);
        bundle.putString("dataUserReport", DataUserReport.m28451k(dataUserReport));
        bundle.putBoolean("selfTracking", z);
        bundle.putBoolean("fromCallEnd", z2);
        bundle.putBoolean("tagAnswerNo", z3);
        bundle.putBoolean("isVoiceInput", z4);
        bundle.putBoolean("isHintShown", z5);
        bundle.putBoolean("isUpdateSpam", z6);
        bundle.putSerializable("userReportType", cVar);
        bundle.putSerializable("reportDialogType", wVar);
        if (lVar != null) {
            bundle.putParcelable("tagHandler", new Messenger(lVar));
        }
        intent.putExtras(bundle);
        return intent;
    }

    /* renamed from: a */
    public static String m28960a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static void m28959a(@NonNull Context context, @NonNull DataUserReport dataUserReport, @NonNull String str, @NonNull String str2, @Nullable String[] strArr, C14241a.EnumC14244c cVar, boolean z) {
        C14217x3.m2156c(context, m28958a(context, dataUserReport, str, str2, strArr, cVar, z, false, false, false, false, false, null, null));
    }

    /* renamed from: a */
    public static void m28957a(@NonNull Context context, @NonNull String str, String str2, String str3, NumberInfo numberInfo, DataUserReport.Source source, String str4, int i) {
        DataUserReport dataUserReport = new DataUserReport(str2, str, numberInfo.m28393C(), numberInfo.m28383M(), source);
        String[] strArr = new String[numberInfo.m28324h().size()];
        numberInfo.m28324h().toArray(strArr);
        m28956a(context, str, str2, str3, strArr, dataUserReport, null, str4, i);
    }

    /* renamed from: a */
    public static void m28956a(@NonNull Context context, String str, String str2, String str3, String[] strArr, DataUserReport dataUserReport, HandlerC12947l lVar, String str4, int i) {
        Intent intent = new Intent(context, ReportDialogActivity.class);
        Bundle bundle = new Bundle();
        bundle.putBoolean(NovaHomeBadger.TAG, true);
        bundle.putString("tagE164", str);
        bundle.putString("tagNumber", str2);
        bundle.putString("smsReportSmsContent", str3);
        bundle.putStringArray("tagSuggest", strArr);
        bundle.putInt("blockCtype", 2);
        bundle.putString("dataUserReport", DataUserReport.m28451k(dataUserReport));
        if (lVar != null) {
            bundle.putParcelable("tagHandler", new Messenger(lVar));
        }
        if (C13891a.m3143s()) {
            bundle.putString("smsReportConversationId", str4);
            bundle.putInt("smsReportSource", i);
        }
        intent.putExtras(bundle);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: v */
    public static /* synthetic */ int m28902v(ReportDialogActivity reportDialogActivity) {
        int i = reportDialogActivity.f10513O;
        reportDialogActivity.f10513O = i + 1;
        return i;
    }

    /* renamed from: a */
    public final C14241a.EnumC14243b m28937a(String str, String str2, boolean z) {
        boolean z2 = TextUtils.isEmpty(str) && TextUtils.isEmpty(str2);
        return z ? z2 ? C14241a.EnumC14243b.ReportNotSpamWithoutTag : C14241a.EnumC14243b.ReportTagDone : z2 ? C14241a.EnumC14243b.ReportSpamDone : C14241a.EnumC14243b.ReportTagAndSpamDone;
    }

    /* renamed from: a */
    public final void m28961a() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    /* renamed from: a */
    public final void m28955a(Configuration configuration) {
        C12948m mVar;
        if (this.f10503D != null) {
            if (configuration.orientation != 1 || this.f10522d.length <= Math.ceil(4.599999904632568d)) {
                ((LimitHeightListView) this.f10503D).m25914a(0);
            } else {
                View view = this.f10505F.getView(0, null, this.f10503D);
                view.measure(0, 0);
                ((LimitHeightListView) this.f10503D).m25914a((int) (view.getMeasuredHeight() * 4.6f));
            }
            this.f10503D.requestLayout();
        }
        ListView listView = this.f10504E;
        if (listView != null && (mVar = this.f10506G) != null) {
            if (configuration.orientation == 1) {
                View view2 = mVar.getView(0, null, listView);
                view2.measure(0, 0);
                ((LimitHeightListView) this.f10504E).m25914a((int) (view2.getMeasuredHeight() * 3.0f));
            } else {
                ((LimitHeightListView) listView).m25914a(0);
            }
            this.f10504E.requestLayout();
        }
    }

    /* renamed from: a */
    public final void m28953a(View view, ImageView imageView, TextView textView, boolean z, boolean z2, boolean z3) {
        if (z || view == null) {
            if (view != null) {
                view.setVisibility(0);
            }
            if (z3) {
                imageView.setTag(true);
                imageView.setImageResource(R$drawable.call_end_block_check_on);
                textView.setText(m28960a((int) R$string.callend_spamreport_blockbutton));
            } else {
                imageView.setTag(false);
                imageView.setImageResource(R$drawable.call_end_block_check_off);
                textView.setText(m28960a((int) R$string.callend_spamreport_report));
            }
            if (!z2) {
                textView.setBackgroundResource(R$drawable.call_end_disable_btn);
                textView.setEnabled(false);
                return;
            }
            textView.setBackgroundResource(R$drawable.call_end_red_btn_selector);
            textView.setEnabled(true);
            return;
        }
        view.setVisibility(8);
        if (z3) {
            imageView.setTag(true);
            textView.setText(m28960a((int) R$string.callend_spamreport_block));
        } else {
            imageView.setTag(false);
            textView.setText(m28960a((int) R$string.callend_spamreport_report));
        }
        if (!z2) {
            textView.setBackgroundResource(R$drawable.call_end_disable_btn);
            textView.setText(m28960a((int) R$string.callend_spamreport_report));
            textView.setEnabled(false);
            return;
        }
        textView.setBackgroundResource(R$drawable.call_end_red_btn_selector);
        textView.setEnabled(true);
    }

    /* renamed from: a */
    public final void m28952a(EditText editText) {
        editText.requestFocus();
        new Timer().schedule(new C4367m(editText), 200L);
    }

    /* renamed from: a */
    public final void m28951a(ImageView imageView, ViewGroup viewGroup, @DrawableRes int i, @DrawableRes int i2) {
        viewGroup.setVisibility(0);
        imageView.setTag(Boolean.valueOf(this.f10502C));
        imageView.setImageResource(this.f10502C ? i : i2);
        ((LinearLayout) viewGroup.findViewById(R$id.ll_report_sms_content_clickable_area)).setOnClickListener(new View$OnClickListenerC4373s(imageView, i, i2));
    }

    /* renamed from: a */
    public final void m28940a(C14241a.EnumC14243b bVar, String str, String str2) {
        C14241a.EnumC14244c cVar = this.f10510K;
        if (cVar != null) {
            C13877a2 a2Var = new C13877a2(cVar, bVar);
            a2Var.m3262b(str);
            a2Var.m3264a(str2);
            if (this.f10516R) {
                if (this.f10517S == null) {
                    this.f10517S = a2Var.m3263a(this.f10532n, C14247d.f31851f);
                }
                a2Var.m3265a(this.f10517S);
                return;
            }
            a2Var.m3267a(C14037j3.m2731a());
        }
    }

    /* renamed from: a */
    public final void m28939a(@Nullable Object obj) {
        C14037j3.m2731a().mo2704a(new C14148s0(0, 0, obj));
        if (this.f10538t != null) {
            try {
                Message d = HandlerC12947l.m4940d();
                if (obj != null) {
                    d.obj = obj;
                }
                this.f10538t.send(d);
            } catch (RemoteException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public final void m28938a(String str, String str2, int i, int i2, boolean z, boolean z2, boolean z3) {
        if (!C14217x3.m2160b(str)) {
            C13625a.m3783e(this.f10523e, this.f10531m, str);
        } else {
            C13625a.m3788d(this.f10523e, this.f10531m);
        }
        DataUserReport dataUserReport = this.f10509J;
        if (dataUserReport != null) {
            dataUserReport.m28470a(str);
            this.f10509J.m28469a(str2, i);
            if (this.f10543y && i2 == this.f10522d.length - 1) {
                this.f10509J.m28466b(0, "HFB");
            }
        }
        m28940a(m28937a(this.f10527i, str, TextUtils.isEmpty(str2)), str, str2);
        if (this.f10539u) {
            CallStats.m28534h().m28539c().m28516a(CallAction.DONE_SPAM);
            if (!C14217x3.m2160b(str)) {
                CallStats.m28534h().m28539c().m28516a(CallAction.DONE_TAG);
            }
            if (z || this.f10537s) {
                CallStats.m28534h().m28539c().m28516a("BLOCK");
            }
            EnumC4379w wVar = this.f10511L;
            if (wVar != null && wVar == EnumC4379w.MAIN_ACTION && this.f10544z) {
                m28940a(C14241a.EnumC14243b.ReportBlockDone, str, str2);
            }
        }
        C11052i.m10328e().m10344a(this.f10531m);
        Bundle bundle = null;
        if (this.f10543y) {
            bundle = null;
            if (i2 == this.f10522d.length - 1) {
                bundle = new Bundle();
                bundle.putString("tagNotSpam", "tagNotSpam");
            }
        }
        if (z3) {
            m28915k();
        }
        m28939a(bundle);
        finish();
        if (z2) {
            try {
                if (C13915b3.m3062a("isFirstBlockSpamLevel2", true)) {
                    C12928g.m4978d(this.f10523e, this.f10531m, "isFirstBlockSpamLevel2", 1);
                } else if (C14017g4.m2835A() && C13915b3.m3062a("isFirstBlockSpamLevel2_2", true)) {
                    C12928g.m4978d(this.f10523e, this.f10531m, "isFirstBlockSpamLevel2_2", 2);
                } else if (C14017g4.m2835A() && C13915b3.m3062a("isFirstBlockSpamLevel2_3", true)) {
                    C12928g.m4978d(this.f10523e, this.f10531m, "isFirstBlockSpamLevel2_3", 3);
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m28954a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(this).getScaledWindowTouchSlop();
        View decorView = getWindow().getDecorView();
        int i = -scaledWindowTouchSlop;
        return x < i || y < i || x > decorView.getWidth() + scaledWindowTouchSlop || y > decorView.getHeight() + scaledWindowTouchSlop;
    }

    /* renamed from: b */
    public final void m28936b() {
        View inflate = LayoutInflater.from(this).inflate(R$layout.block_spam_report, (ViewGroup) null);
        setContentView(inflate);
        TextView textView = (TextView) inflate.findViewById(R$id.callend_spamreport_title);
        View findViewById = inflate.findViewById(R$id.call_btn_close);
        TextView textView2 = (TextView) inflate.findViewById(R$id.block_spam_btn1);
        View findViewById2 = inflate.findViewById(R$id.block_spam_btn1_space);
        TextView textView3 = (TextView) inflate.findViewById(R$id.block_spam_btn2);
        View findViewById3 = inflate.findViewById(R$id.et_tag_line);
        View findViewById4 = inflate.findViewById(R$id.ll_tag);
        EditText editText = (EditText) inflate.findViewById(R$id.et_tag);
        View findViewById5 = inflate.findViewById(R$id.iv_voiceinput);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.block_spam_checked);
        TextView textView4 = (TextView) inflate.findViewById(R$id.block_spam_text_checked);
        View findViewById6 = inflate.findViewById(R$id.block_spam_checked_area);
        boolean e = m28927e();
        if (e) {
            m28951a((ImageView) inflate.findViewById(R$id.iv_report_sms_content), (LinearLayout) inflate.findViewById(R$id.ll_report_sms_content), R$drawable.call_end_block_check_on, R$drawable.call_end_block_check_off);
        }
        this.f10503D = (ListView) inflate.findViewById(R$id.lv_spamlist);
        C14217x3.m2180a(findViewById5, true);
        findViewById.setOnClickListener(new View$OnClickListenerC4355e());
        findViewById5.setTag(R$id.tv_input, editText);
        findViewById5.setOnClickListener(this.f10518T);
        this.f10505F = new C12940h(this, this.f10522d, this.f10543y ? this.f10522d.length - 1 : -1);
        this.f10503D.setAdapter((ListAdapter) this.f10505F);
        inflate.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4356f(editText, inflate));
        this.f10503D.setOnItemClickListener(new C4358g(findViewById4, findViewById3, editText, findViewById6, imageView, textView3));
        textView2.setOnClickListener(new View$OnClickListenerC4360h());
        textView3.setOnClickListener(new View$OnClickListenerC4362i(editText, imageView, findViewById6, e));
        String str = this.f10507H;
        if (str != null) {
            editText.setText(str);
        } else {
            String str2 = this.f10527i;
            if (str2 != null) {
                editText.setText(str2);
            }
        }
        editText.addTextChangedListener(new C4364j());
        if (this.f10525g != null) {
            int i = 0;
            while (true) {
                String[] strArr = this.f10522d;
                if (i >= strArr.length) {
                    break;
                } else if (strArr[i].equals(C14093n4.m2580a(this, this.f10525g, this.f10526h))) {
                    this.f10505F.m4970a(i);
                    break;
                } else {
                    i++;
                }
            }
        }
        if (this.f10537s) {
            textView.setText(m28960a((int) R$string.ndp_block_title));
            textView2.setVisibility(8);
            findViewById2.setVisibility(8);
            findViewById6.setVisibility(8);
            imageView.setTag(true);
            textView3.setText(m28960a((int) R$string.callend_spamreport_block));
            if (this.f10505F.m4971a() != -1) {
                textView3.setEnabled(true);
                textView3.setBackgroundResource(R$drawable.call_end_red_btn_selector);
            } else {
                textView3.setEnabled(false);
                textView3.setBackgroundResource(R$drawable.call_end_disable_btn);
            }
            if (this.f10525g == null) {
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                editText.setVisibility(8);
            } else if (this.f10540v) {
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                editText.setVisibility(8);
            } else {
                findViewById4.setVisibility(0);
                findViewById3.setVisibility(0);
                editText.setVisibility(0);
            }
        } else {
            textView3.setEnabled(true);
            textView3.setText(m28960a((int) R$string.callend_spamreport_report));
            if (this.f10505F.m4971a() != -1) {
                textView.setText(m28960a((int) R$string.callend_edit_dialog_spamtitle));
                textView2.setVisibility(this.f10543y ? 8 : 0);
                findViewById2.setVisibility(this.f10543y ? 8 : 0);
                textView3.setEnabled(true);
                textView3.setText(m28960a((int) R$string.callend_edit_dialog_confirm));
                textView3.setBackgroundResource(R$drawable.call_end_red_btn_selector);
                if (this.f10540v) {
                    findViewById4.setVisibility(8);
                    findViewById3.setVisibility(8);
                    editText.setVisibility(8);
                } else {
                    findViewById4.setVisibility(0);
                    findViewById3.setVisibility(0);
                    editText.setVisibility(0);
                }
                if ((this.f10534p != 2 || C12810o.m5234k()) && !this.f10535q) {
                    m28953a(findViewById6, imageView, textView3, true, true, this.f10529k || this.f10528j);
                } else {
                    m28953a(findViewById6, imageView, textView3, false, true, false);
                }
            } else {
                textView.setText(m28960a((int) R$string.callend_spamreport_title));
                findViewById4.setVisibility(8);
                findViewById3.setVisibility(8);
                editText.setVisibility(8);
                textView2.setVisibility(8);
                findViewById2.setVisibility(8);
                m28953a(findViewById6, imageView, textView3, false, false, this.f10529k || this.f10528j);
            }
            View$OnClickListenerC4366l lVar = new View$OnClickListenerC4366l(findViewById6, imageView, textView3);
            imageView.setOnClickListener(lVar);
            textView4.setOnClickListener(lVar);
        }
        if (this.f10543y && this.f10536r) {
            textView.setText(m28960a((int) R$string.callend_report_another_title));
        }
    }

    /* renamed from: c */
    public final void m28932c() {
        ArrayList arrayList = new ArrayList();
        if (C14017g4.m2834B()) {
            this.f10542x = true;
            arrayList.add(m28960a((int) R$string.block_hk_financing));
            arrayList.add(m28960a((int) R$string.block_hk_telecom));
            arrayList.add(m28960a((int) R$string.block_hk_invest));
            arrayList.add(m28960a((int) R$string.block_hk_beauty));
            arrayList.add(m28960a((int) R$string.block_hk_consumer));
            arrayList.add(m28960a((int) R$string.block_hk_education));
            arrayList.add(m28960a((int) R$string.block_hk_insurance));
            arrayList.add(m28960a((int) R$string.block_hk_otherbusiness));
            arrayList.add(m28960a((int) R$string.block_hk_call));
            arrayList.add(m28960a((int) R$string.block_hk_fraud));
            arrayList.add(m28960a((int) R$string.block_hk_harrassing));
            arrayList.add(m28960a((int) R$string.block_other_spam));
        } else if (C14017g4.m2835A()) {
            this.f10542x = false;
            arrayList.add(m28960a((int) R$string.block_telemarketing));
            arrayList.add(m28960a((int) R$string.block_fraud));
            arrayList.add(m28960a((int) R$string.block_customerservice));
            arrayList.add(m28960a((int) R$string.block_other_spam));
        } else {
            this.f10542x = false;
            arrayList.add(m28960a((int) R$string.block_telemarketing));
            arrayList.add(m28960a((int) R$string.block_fraud));
            arrayList.add(m28960a((int) R$string.block_harassing));
            arrayList.add(m28960a((int) R$string.block_other_spam));
        }
        if (this.f10543y) {
            arrayList.add(m28960a((int) R$string.callend_question_verifyoldreport_notspam));
        }
        this.f10522d = (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: d */
    public final void m28929d() {
        EnumC4379w wVar;
        View inflate = LayoutInflater.from(this).inflate(R$layout.tag_report, (ViewGroup) null);
        setContentView(inflate);
        TextView textView = (TextView) inflate.findViewById(R$id.callend_unknown_title);
        View findViewById = inflate.findViewById(R$id.call_btn_close);
        EditText editText = (EditText) inflate.findViewById(R$id.tv_input);
        View findViewById2 = inflate.findViewById(R$id.iv_voiceinput);
        View findViewById3 = inflate.findViewById(R$id.tag_btn1_area);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tag_btn1);
        View findViewById4 = inflate.findViewById(R$id.tag_btn1_space);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tag_btn2);
        View findViewById5 = inflate.findViewById(R$id.to_report_spam);
        TextView textView4 = (TextView) inflate.findViewById(R$id.callend_report_asspam);
        boolean e = m28927e();
        if (e) {
            m28951a((ImageView) inflate.findViewById(R$id.iv_report_sms_content), (LinearLayout) inflate.findViewById(R$id.ll_report_sms_content), R$drawable.icon_checkbox_on_green, R$drawable.call_end_block_check_off);
        }
        C14217x3.m2180a(findViewById2, true);
        this.f10504E = (ListView) inflate.findViewById(R$id.lv_taglist);
        this.f10504E.setVisibility(4);
        inflate.setFocusable(true);
        inflate.setFocusableInTouchMode(true);
        findViewById.setOnClickListener(new View$OnClickListenerC4374t());
        findViewById2.setTag(R$id.tv_input, editText);
        findViewById2.setOnClickListener(this.f10518T);
        if (this.f10521c) {
            findViewById2.performClick();
        }
        inflate.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4375u(findViewById, inflate));
        textView2.setOnClickListener(new View$OnClickListenerC4377v());
        textView3.setOnClickListener(new View$OnClickListenerC4351a(editText, e));
        if (this.f10527i != null) {
            textView4.setText(R$string.callend_edit_dialog_addspam);
            textView.setText(R$string.callend_edit_dialog_title);
            editText.setText(this.f10527i);
            textView3.setBackgroundResource(R$drawable.green_btn_selector);
            textView3.setEnabled(true);
            textView3.setText(R$string.callend_edit_dialog_confirm);
            textView2.setVisibility(this.f10543y ? 8 : 0);
            findViewById4.setVisibility(this.f10543y ? 8 : 0);
        } else {
            textView4.setText(R$string.callend_report_asspam);
            if (this.f10511L != EnumC4379w.DIRECT_ASK_ASK_SPAM && this.f10536r) {
                textView.setText(R$string.callend_report_another_title);
            } else if (this.f10511L == EnumC4379w.QUESTION_SUGGESTION_SPAM_FOR_DIRECT_ASK) {
                textView.setText(R$string.callend_unknown_title_dialogstyle);
            } else {
                textView.setText(R$string.callend_unknown_title);
                textView.setText(C14206w4.m2225a((int) R$string.callend_unknown_title_testing1));
                editText.setHint(this.f10511L != EnumC4379w.DIRECT_ASK_ASK_SPAM ? C14206w4.m2225a((int) R$string.callend_unknown_inline_testing1) : C14206w4.m2225a((int) R$string.callend_unknown_enline));
            }
            textView3.setBackgroundResource(R$drawable.call_end_disable_btn);
            textView3.setEnabled(false);
            textView3.setText(R$string.callend_report_normal);
            textView2.setVisibility(8);
            findViewById4.setVisibility(8);
        }
        editText.addTextChangedListener(new C4352b(textView3));
        String[] strArr = this.f10530l;
        if (strArr == null || strArr.length <= 0) {
            this.f10504E.setVisibility(8);
            ((LinearLayout.LayoutParams) findViewById3.getLayoutParams()).topMargin = C14217x3.m2201a(15.0f);
            m28952a(editText);
            m28940a(C14241a.EnumC14243b.EnterTag, (String) null, (String) null);
        } else {
            this.f10506G = new C12948m(this, strArr);
            this.f10504E.setAdapter((ListAdapter) this.f10506G);
            this.f10504E.setOnItemClickListener(new C4353c(editText));
            this.f10504E.setVisibility(0);
            ((LinearLayout.LayoutParams) findViewById3.getLayoutParams()).topMargin = C14217x3.m2201a(7.0f);
        }
        if ((this.f10536r && !C14217x3.m2160b(this.f10525g)) || (wVar = this.f10511L) == EnumC4379w.QUESTION_SPAM || wVar == EnumC4379w.QUESTION_SUGGESTION_SPAM || wVar == EnumC4379w.QUESTION_SUGGESTION_SPAM_FOR_DIRECT_ASK || wVar == EnumC4379w.DIRECT_ASK_ASK_SPAM) {
            findViewById5.setVisibility(8);
            return;
        }
        findViewById5.setVisibility(0);
        findViewById5.setOnClickListener(new View$OnClickListenerC4354d());
    }

    /* renamed from: e */
    public final boolean m28927e() {
        return this.f10501B != -1 && !TextUtils.isEmpty(this.f10500A) && C13891a.m3143s();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28925f() {
        /*
            r7 = this;
            r0 = r7
            monitor-enter(r0)
            boolean r0 = p459j.p460a.p582w0.C14017g4.m2835A()     // Catch: all -> 0x0091
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x001d
            boolean r0 = p459j.p460a.p582w0.C14017g4.m2831E()     // Catch: all -> 0x0091
            if (r0 == 0) goto L_0x0015
            goto L_0x001d
        L_0x0015:
            r0 = r7
            r1 = 0
            r0.f10529k = r1     // Catch: all -> 0x0091
            goto L_0x0022
        L_0x001d:
            r0 = r7
            r1 = 1
            r0.f10529k = r1     // Catch: all -> 0x0091
        L_0x0022:
            r0 = 3
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: all -> 0x0091
            r1 = r0
            r2 = 0
            java.lang.String r3 = "_e164"
            r1[r2] = r3     // Catch: all -> 0x0091
            r1 = r0
            r2 = 1
            java.lang.String r3 = "_type"
            r1[r2] = r3     // Catch: all -> 0x0091
            r1 = r0
            r2 = 2
            java.lang.String r3 = "_status"
            r1[r2] = r3     // Catch: all -> 0x0091
            java.lang.String[] r0 = p459j.p460a.p541n0.C13193p.m4437a(r0)     // Catch: all -> 0x0091
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: all -> 0x0091
            r2 = r1
            r3 = 0
            r4 = r7
            java.lang.String r4 = r4.f10531m     // Catch: all -> 0x0091
            r2[r3] = r4     // Catch: all -> 0x0091
            r2 = r1
            r3 = 1
            r4 = 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: all -> 0x0091
            r2[r3] = r4     // Catch: all -> 0x0091
            r2 = r1
            r3 = 2
            r4 = 2
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: all -> 0x0091
            r2[r3] = r4     // Catch: all -> 0x0091
            java.lang.Object[] r1 = p459j.p460a.p541n0.C13193p.m4438a(r1)     // Catch: all -> 0x0091
            r2 = 3
            j.a.n0.p$a[] r2 = new p459j.p460a.p541n0.C13193p.EnumC13194a[r2]     // Catch: all -> 0x0091
            r3 = r2
            r4 = 0
            j.a.n0.p$a r5 = p459j.p460a.p541n0.C13193p.EnumC13194a.EQUAL_TO     // Catch: all -> 0x0091
            r3[r4] = r5     // Catch: all -> 0x0091
            r3 = r2
            r4 = 1
            j.a.n0.p$a r5 = p459j.p460a.p541n0.C13193p.EnumC13194a.EQUAL_TO     // Catch: all -> 0x0091
            r3[r4] = r5     // Catch: all -> 0x0091
            r3 = r2
            r4 = 2
            j.a.n0.p$a r5 = p459j.p460a.p541n0.C13193p.EnumC13194a.NOT_EQUAL_TO     // Catch: all -> 0x0091
            r3[r4] = r5     // Catch: all -> 0x0091
            j.a.n0.p$a[] r2 = p459j.p460a.p541n0.C13193p.m4439a(r2)     // Catch: all -> 0x0091
            r3 = 0
            r4 = 0
            java.util.List r0 = p459j.p460a.p541n0.C13032a.m4748a(r0, r1, r2, r3, r4)     // Catch: all -> 0x0091
            r10 = r0
            r0 = r9
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0089
            r0 = r9
            r8 = r0
            r0 = r10
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x0091
            if (r0 != 0) goto L_0x0089
            r0 = 1
            r8 = r0
        L_0x0089:
            r0 = r7
            r1 = r8
            r0.f10528j = r1     // Catch: all -> 0x0091
            r0 = r7
            monitor-exit(r0)
            return
        L_0x0091:
            r10 = move-exception
            r0 = r7
            monitor-exit(r0)
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.ReportDialogActivity.m28925f():void");
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(17432576, 17432577);
    }

    /* renamed from: g */
    public final void m28923g() {
        synchronized (this) {
            this.f10525g = null;
            this.f10527i = null;
            this.f10540v = false;
            this.f10526h = 0;
            if (!C14217x3.m2160b(C14217x3.m2146e(this.f10523e, this.f10531m))) {
                this.f10540v = true;
            }
            List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164", "_status"), C13193p.m4438a(this.f10531m, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a != null && !a.isEmpty()) {
                this.f10525g = a.get(0).get_reason();
                this.f10526h = a.get(0).get_ccat().intValue();
            }
            List<TagRealmObject> a2 = C13198r.m4426a(C13193p.m4437a("_e164", "_type", "_status"), C13193p.m4438a(this.f10531m, 0, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a2 != null && !a2.isEmpty()) {
                this.f10527i = a2.get(0).get_name();
            }
        }
    }

    /* renamed from: h */
    public final void m28921h() {
        this.f10519a = C14037j3.m2731a().mo2703a((Action1) new C4368n());
    }

    /* renamed from: i */
    public final void m28919i() {
        C14037j3.m2731a().mo2704a(new C14148s0(0, -1));
        Messenger messenger = this.f10538t;
        if (messenger != null) {
            try {
                messenger.send(HandlerC12947l.m4941c());
            } catch (RemoteException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: j */
    public final void m28917j() {
        m28939a((Object) null);
    }

    /* renamed from: k */
    public final void m28915k() {
        String str;
        String str2;
        String str3;
        String str4;
        DataUserReport dataUserReport = this.f10509J;
        if (dataUserReport != null) {
            str3 = dataUserReport.m28475a();
            str4 = this.f10509J.m28459e();
            str2 = this.f10509J.m28463c();
            str = this.f10509J.m28467b();
        } else {
            str4 = null;
            str = null;
            str2 = null;
            str3 = null;
        }
        C14305v.f32041b.m1636a(this.f10500A, null, str3, str4, str2, str, this.f10533o, false, this.f10502C, this.f10501B, this.f10512N);
    }

    /* renamed from: l */
    public final void m28913l() {
        Subscription subscription = this.f10519a;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f10519a.unsubscribe();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 101 && i2 == -1) {
            String str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            TextView textView = this.f10520b;
            if (textView != null) {
                textView.setText(str);
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m28955a(getResources().getConfiguration());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m28919i();
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m28955a(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        setRequestedOrientation(3);
        super.onCreate(bundle);
        m28921h();
        this.f10523e = this;
        Intent intent = getIntent();
        if (intent != null) {
            this.f10524f = intent.getExtras();
        }
        if (this.f10524f == null) {
            finish();
        }
        this.f10542x = false;
        this.f10516R = this.f10524f.getBoolean("selfTracking", false);
        this.f10508I = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(this.f10508I);
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(0);
        getWindow().setLayout(C14217x3.m2201a(294.0f), -2);
        overridePendingTransition(17432576, 17432577);
        this.f10539u = this.f10524f.getBoolean("fromCallEnd", false);
        this.f10543y = this.f10524f.getBoolean("isUpdateSpam");
        this.f10510K = (C14241a.EnumC14244c) this.f10524f.getSerializable("userReportType");
        this.f10511L = (EnumC4379w) this.f10524f.getSerializable("reportDialogType");
        this.f10500A = this.f10524f.getString("smsReportConversationId", null);
        this.f10501B = this.f10524f.getInt("smsReportSource", -1);
        this.f10512N = this.f10524f.getInt("smsReportFilterType");
        m28932c();
        if (this.f10524f.getBoolean(NovaHomeBadger.TAG, false)) {
            this.f10531m = this.f10524f.getString("tagE164");
            this.f10535q = this.f10524f.getBoolean("tagFromNDP");
            this.f10532n = this.f10524f.getString("tagNumber");
            this.f10533o = this.f10524f.getString("smsReportSmsContent");
            this.f10536r = this.f10524f.getBoolean("tagAnswerNo");
            this.f10530l = this.f10524f.getStringArray("tagSuggest");
            this.f10538t = (Messenger) this.f10524f.getParcelable("tagHandler");
            this.f10521c = this.f10524f.getBoolean("isVoiceInput");
            this.f10524f.getBoolean("isHintShown");
            this.f10509J = DataUserReport.m28464b(this.f10524f.getString("dataUserReport"));
            Single.create(new C4370p()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4369o());
        } else if (this.f10524f.getBoolean("block", false)) {
            this.f10531m = this.f10524f.getString("blockE164");
            this.f10532n = this.f10524f.getString("blockNumber");
            this.f10534p = this.f10524f.getInt("blockCtype");
            this.f10537s = this.f10524f.getBoolean("blockIsforceblock");
            this.f10538t = (Messenger) this.f10524f.getParcelable("blockHandler");
            this.f10509J = DataUserReport.m28464b(this.f10524f.getString("dataUserReport"));
            int i = this.f10524f.getInt("block_default_selection", -1);
            this.f10544z = this.f10524f.getBoolean("isFromMainActionBlock");
            Single.create(new C4372r()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4371q(i));
        } else if (this.f10524f.getBoolean("shareblock", false)) {
            C13895d.m3122a(this);
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m28961a();
        super.onDestroy();
        m28913l();
        DataUserReport dataUserReport = this.f10509J;
        if (dataUserReport != null) {
            dataUserReport.m28457f();
            if (!this.f10515Q && !this.f10536r) {
                EnumC4379w wVar = EnumC4379w.DIRECT_ASK_ASK_SPAM;
                EnumC4379w wVar2 = this.f10511L;
                if (wVar == wVar2 || EnumC4379w.QUESTION_SUGGESTION_SPAM == wVar2) {
                    C12928g.m4999a(this.f10523e.getApplicationContext(), 1, this.f10532n, this.f10531m, "OTHER", 0);
                }
            }
        }
        C14241a aVar = this.f10517S;
        if (aVar != null) {
            aVar.m2082b();
            this.f10517S = null;
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(getIntent().getExtras());
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m28954a(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f10541w) {
            return true;
        }
        m28919i();
        finish();
        return true;
    }
}
