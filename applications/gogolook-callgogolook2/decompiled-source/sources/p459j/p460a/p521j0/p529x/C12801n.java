package p459j.p460a.p521j0.p529x;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.google.i18n.phonenumbers.PhoneNumberMatch;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.UnlockActivity;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p613z0.DialogC14618f;
import p660rx.functions.Action1;
/* renamed from: j.a.j0.x.n */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/n.class */
public class C12801n {

    /* renamed from: j.a.j0.x.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$a.class */
    public static final class C12802a extends ClickableSpan {

        /* renamed from: a */
        public final /* synthetic */ String f28903a;

        /* renamed from: b */
        public final /* synthetic */ int f28904b;

        /* renamed from: c */
        public final /* synthetic */ int f28905c;

        public C12802a(String str, int i, int i2) {
            this.f28903a = str;
            this.f28904b = i;
            this.f28905c = i2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(PhoneNumberUtil.RFC3966_PREFIX + this.f28903a.substring(this.f28904b, this.f28905c)));
            intent.addFlags(268435456);
            UnlockActivity.m28892a(intent);
            SmsDialogActivity.m27054P();
        }
    }

    /* renamed from: j.a.j0.x.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$b.class */
    public static final class DialogInterface$OnClickListenerC12803b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f28906a;

        public DialogInterface$OnClickListenerC12803b(String str) {
            this.f28906a = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C12801n.m5278a(this.f28906a);
        }
    }

    /* renamed from: j.a.j0.x.n$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$c.class */
    public static final class DialogInterface$OnClickListenerC12804c implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.j0.x.n$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$d.class */
    public static final class DialogInterface$OnClickListenerC12805d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f28907a;

        /* renamed from: b */
        public final /* synthetic */ String f28908b;

        /* renamed from: c */
        public final /* synthetic */ DialogC14618f f28909c;

        /* renamed from: d */
        public final /* synthetic */ Action1 f28910d;

        public DialogInterface$OnClickListenerC12805d(Context context, String str, DialogC14618f fVar, Action1 action1) {
            this.f28907a = context;
            this.f28908b = str;
            this.f28909c = fVar;
            this.f28910d = action1;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13915b3.m3055b("sms_checker_warning", true);
            C12801n.m5275c(this.f28907a, this.f28908b, this.f28909c, this.f28910d);
        }
    }

    /* renamed from: j.a.j0.x.n$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$e.class */
    public static final class C12806e extends ClickableSpan {

        /* renamed from: a */
        public final /* synthetic */ View.OnClickListener f28911a;

        /* renamed from: b */
        public final /* synthetic */ boolean f28912b;

        /* renamed from: c */
        public final /* synthetic */ Context f28913c;

        /* renamed from: d */
        public final /* synthetic */ String f28914d;

        /* renamed from: e */
        public final /* synthetic */ Action1 f28915e;

        /* renamed from: j.a.j0.x.n$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$e$a.class */
        public class DialogInterface$OnClickListenerC12807a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12807a(C12806e eVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        /* renamed from: j.a.j0.x.n$e$b */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$e$b.class */
        public class DialogInterface$OnClickListenerC12808b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC12808b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C12801n.m5278a(C12806e.this.f28914d);
            }
        }

        public C12806e(View.OnClickListener onClickListener, boolean z, Context context, String str, Action1 action1) {
            this.f28911a = onClickListener;
            this.f28912b = z;
            this.f28913c = context;
            this.f28914d = str;
            this.f28915e = action1;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.f28911a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            if (this.f28912b) {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f28913c);
                int a = C14131q4.m2411a(this.f28914d);
                int i = R$string.confirm;
                if (2 == a) {
                    fVar.m976c(C14206w4.m2225a((int) R$string.smsdialog_apkconfirm_title));
                    fVar.m979b(C14206w4.m2225a((int) R$string.smsdialog_apkconfirm_content));
                } else if (C14017g4.m2830F()) {
                    fVar.m976c(C14206w4.m2225a((int) R$string.url_check_safe_title_tw));
                    View inflate = LayoutInflater.from(this.f28913c).inflate(R$layout.share_alert, (ViewGroup) null);
                    ((CheckBox) inflate.findViewById(R$id.cb_understand)).setVisibility(8);
                    ((TextView) inflate.findViewById(R$id.tv_law)).setText(C14206w4.m2225a((int) R$string.url_check_lv0_content_tw));
                    fVar.m986a(inflate);
                    i = R$string.url_check_btn_tolink;
                } else {
                    fVar.m976c(C14206w4.m2225a((int) R$string.smsdialog_urlconfirm_title));
                    fVar.m979b(String.format(C14206w4.m2225a((int) R$string.smsdialog_urlconfirm_content), this.f28914d));
                }
                fVar.m978b(C14206w4.m2225a(i), new DialogInterface$OnClickListenerC12808b());
                fVar.m984a(C14206w4.m2225a((int) R$string.cancel), new DialogInterface$OnClickListenerC12807a(this));
                C12801n.m5275c(this.f28913c, this.f28914d, fVar.m989a(), this.f28915e);
            }
        }
    }

    /* renamed from: j.a.j0.x.n$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/n$f.class */
    public static final class C12809f implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ Context f28917a;

        /* renamed from: b */
        public final /* synthetic */ String f28918b;

        /* renamed from: c */
        public final /* synthetic */ DialogC14618f f28919c;

        /* renamed from: d */
        public final /* synthetic */ Action1 f28920d;

        public C12809f(Context context, String str, DialogC14618f fVar, Action1 action1) {
            this.f28917a = context;
            this.f28918b = str;
            this.f28919c = fVar;
            this.f28920d = action1;
        }

        /* renamed from: a */
        public void call(Integer num) {
            if (num.intValue() == -2) {
                C12801n.m5274d(this.f28917a, this.f28918b, this.f28919c, this.f28920d);
            } else if (num.intValue() == -1) {
                this.f28919c.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                C13878a3.m3244a(this.f28919c);
            } else {
                C12801n.m5277b(this.f28917a, this.f28918b, num.intValue());
            }
            Action1 action1 = this.f28920d;
            if (action1 != null) {
                action1.call(num);
            }
        }
    }

    /* renamed from: a */
    public static void m5281a(Context context, String str, @Nullable String str2, TextView textView, @Nullable Action1<Integer> action1, @Nullable View.OnClickListener onClickListener, boolean z) {
        m5280a(context, str, str2, textView, action1, null, onClickListener, null, z);
    }

    /* renamed from: a */
    public static void m5280a(Context context, String str, @Nullable String str2, TextView textView, @Nullable Action1<Integer> action1, @Nullable Integer num, @Nullable View.OnClickListener onClickListener, @Nullable ClickableSpan clickableSpan, boolean z) {
        Integer num2;
        if (C14131q4.m2411a(str) == 0) {
            textView.setText(str);
            return;
        }
        List<String> e = C14131q4.m2404e(str);
        if (C14217x3.m2173a(e)) {
            textView.setText(str);
            return;
        }
        SpannableString spannableString = new SpannableString(str);
        m5279a(spannableString, str, str2, textView);
        HashMap hashMap = new HashMap();
        for (String str3 : e) {
            Integer num3 = (Integer) hashMap.get(str3);
            Integer num4 = num3;
            if (num3 == null) {
                num4 = 0;
            }
            while (true) {
                num2 = num4;
                if (num4.intValue() != -1) {
                    num2 = Integer.valueOf(str.indexOf(str3, num4.intValue()));
                    if (num2.intValue() != -1) {
                        int intValue = num2.intValue() + str3.length();
                        spannableString.setSpan(clickableSpan != null ? clickableSpan : new C12806e(onClickListener, z, context, str3, action1), num2.intValue(), intValue, 33);
                        spannableString.setSpan(new UnderlineSpan(), num2.intValue(), intValue, 33);
                        if (str2 != null) {
                            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(str2)), num2.intValue(), intValue, 33);
                        }
                        textView.setText(spannableString);
                        num4 = Integer.valueOf(intValue);
                    }
                }
            }
            hashMap.put(str3, num2);
            textView.setMovementMethod(new LinkMovementMethod());
        }
    }

    /* renamed from: a */
    public static void m5279a(SpannableString spannableString, String str, @Nullable String str2, TextView textView) {
        try {
            for (PhoneNumberMatch phoneNumberMatch : PhoneNumberUtil.getInstance().findNumbers(str, C14017g4.m2810n().toUpperCase(Locale.US))) {
                int start = phoneNumberMatch.start();
                int end = phoneNumberMatch.end();
                spannableString.setSpan(new C12802a(str, start, end), start, end, 33);
                spannableString.setSpan(new UnderlineSpan(), start, end, 33);
                if (str2 != null) {
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(str2)), start, end, 33);
                }
                textView.setText(spannableString);
                textView.setMovementMethod(new LinkMovementMethod());
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m5278a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        if (str.startsWith("http")) {
            intent.setData(Uri.parse(str));
        } else {
            intent.setData(Uri.parse("http://" + str));
        }
        intent.setFlags(268435456);
        UnlockActivity.m28892a(intent);
        SmsDialogActivity.m27054P();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00db  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5277b(android.content.Context r6, java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p529x.C12801n.m5277b(android.content.Context, java.lang.String, int):void");
    }

    /* renamed from: c */
    public static void m5275c(Context context, String str, DialogC14618f fVar, @Nullable Action1<Integer> action1) {
        C14005a.m2883a(str, new C12809f(context, str, fVar, action1), (C14005a.C14007b) null);
    }

    /* renamed from: d */
    public static void m5274d(Context context, String str, DialogC14618f fVar, Action1<Integer> action1) {
        DialogC14618f.C14624f fVar2 = new DialogC14618f.C14624f(new ContextThemeWrapper(context, 2131952205));
        View inflate = LayoutInflater.from(context).inflate(R$layout.block_attention, (ViewGroup) null);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R$id.cb_understand);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_attention);
        ((TextView) inflate.findViewById(R$id.tv_hint)).setVisibility(0);
        textView.setText(C14206w4.m2225a((int) R$string.url_check_agreement_content));
        checkBox.setText(C14206w4.m2225a((int) R$string.url_check_agreement_checkbox));
        try {
            checkBox.setButtonDrawable(Resources.getSystem().getIdentifier("btn_check_holo_light", "drawable", IJSExecutor.JS_FUNCTION_GROUP));
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        checkBox.setVisibility(8);
        fVar2.m986a(inflate);
        fVar2.m983a(false);
        fVar2.m983a(true);
        fVar2.m976c(C14206w4.m2225a((int) R$string.url_check_agreement_title));
        fVar2.m978b(C14206w4.m2225a((int) R$string.smsdialog_urlscan_first_alwaysbtn), new DialogInterface$OnClickListenerC12805d(context, str, fVar, action1));
        fVar2.m984a(C14206w4.m2225a((int) R$string.later), new DialogInterface$OnClickListenerC12804c());
        DialogC14618f a = fVar2.m989a();
        a.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        C13878a3.m3244a(a);
        a.f32631a.setEnabled(true);
    }
}
