package p459j.p460a.p546o;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.format.Formatter;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.MDialogActivity;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.view.widget.LabeledEditText;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p546o.C13273e;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14028i2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14966w;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
import zendesk.support.CustomField;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\t\u0018�� S2\u00020\u0001:\u0001SB\u0005¢\u0006\u0002\u0010\u0002J\b\u00103\u001a\u00020\rH\u0016J\b\u00104\u001a\u00020\rH\u0002J\b\u00105\u001a\u00020\rH\u0002J\u0006\u00106\u001a\u00020.J\"\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\b\u0010;\u001a\u0004\u0018\u00010<H\u0016J&\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010B2\b\u0010C\u001a\u0004\u0018\u00010DH\u0016J\b\u0010E\u001a\u000208H\u0002J\b\u0010F\u001a\u000208H\u0002J-\u0010G\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u000e\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0I2\u0006\u0010J\u001a\u00020KH\u0016¢\u0006\u0002\u0010LJ\u001a\u0010M\u001a\u0002082\u0006\u0010N\u001a\u00020>2\b\u0010C\u001a\u0004\u0018\u00010DH\u0016J\b\u0010O\u001a\u000208H\u0002J\b\u0010P\u001a\u000208H\u0002J\u000e\u0010Q\u001a\u0002082\u0006\u0010R\u001a\u00020\u0004R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006R\u001b\u0010\f\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\b\u001a\u0004\b\u000e\u0010\u000fR-\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00130\u0012j\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0013`\u0014¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\b\u001a\u0004\b\u0018\u0010\u000fR\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\b\u001a\u0004\b \u0010!R\u001c\u0010#\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u000f\"\u0004\b)\u0010&R\u001c\u0010*\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010\u000f\"\u0004\b,\u0010&R\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006T"}, m815d2 = {"Lgogolook/callgogolook2/cs/ReportFragment;", "Lgogolook/callgogolook2/cs/CustomerServiceFragment;", "()V", "categoryId", "", "getCategoryId", "()I", "categoryId$delegate", "Lkotlin/Lazy;", "categoryIdx", "getCategoryIdx", "categoryIdx$delegate", "categoryName", "", "getCategoryName", "()Ljava/lang/String;", "categoryName$delegate", "files", "Ljava/util/HashMap;", "Ljava/io/File;", "Lkotlin/collections/HashMap;", "getFiles", "()Ljava/util/HashMap;", "moreInfo", "getMoreInfo", "moreInfo$delegate", "onFocusChangeListener", "Landroid/view/View$OnFocusChangeListener;", "getOnFocusChangeListener", "()Landroid/view/View$OnFocusChangeListener;", "progressDialog", "Lgogolook/callgogolook2/view/MProgressDialog;", "getProgressDialog", "()Lgogolook/callgogolook2/view/MProgressDialog;", "progressDialog$delegate", "reportedComment", "getReportedComment", "setReportedComment", "(Ljava/lang/String;)V", "reportedEmail", "getReportedEmail", "setReportedEmail", "reportedName", "getReportedName", "setReportedName", "wasFocused", "", "getWasFocused", "()Z", "setWasFocused", "(Z)V", "getTitle", "getUserEmail", "getUserName", "needConfirmBeforeExiting", "onActivityResult", "", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onReportStart", "onReportStop", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onViewCreated", "view", "report", "showErrorToast", "trackEvent", "action", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.d */
/* loaded from: classes2-dex2jar.jar:j/a/o/d.class */
public final class C13253d extends AbstractC13251c {

    /* renamed from: n */
    public static final /* synthetic */ AbstractC14906i[] f29848n;

    /* renamed from: d */
    public boolean f29850d;

    /* renamed from: j */
    public String f29856j;

    /* renamed from: k */
    public String f29857k;

    /* renamed from: l */
    public String f29858l;

    /* renamed from: m */
    public HashMap f29859m;

    /* renamed from: c */
    public final HashMap<String, File> f29849c = new HashMap<>();

    /* renamed from: e */
    public final AbstractC14974f f29851e = C14975g.m662a(new C13255b());

    /* renamed from: f */
    public final AbstractC14974f f29852f = C14975g.m662a(new C13257d());

    /* renamed from: g */
    public final AbstractC14974f f29853g = C14975g.m662a(new C13258e());

    /* renamed from: h */
    public final AbstractC14974f f29854h = C14975g.m662a(new C13268o());

    /* renamed from: i */
    public final View.OnFocusChangeListener f29855i = new View$OnFocusChangeListenerC13263j();

    /* renamed from: j.a.o.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$a.class */
    public static final class C13254a {
        public C13254a() {
        }

        public /* synthetic */ C13254a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.o.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$b.class */
    public static final class C13255b extends AbstractC15150l implements AbstractC15107a<Integer> {
        public C13255b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            Bundle arguments = C13253d.this.getArguments();
            if (arguments != null) {
                return arguments.getInt("category_id");
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$c.class */
    public static final class C13256c extends AbstractC15150l implements AbstractC15107a<Integer> {
        public C13256c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            Bundle arguments = C13253d.this.getArguments();
            if (arguments != null) {
                return arguments.getInt("category_index");
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$d.class */
    public static final class C13257d extends AbstractC15150l implements AbstractC15107a<String> {
        public C13257d() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            Bundle arguments = C13253d.this.getArguments();
            if (arguments != null) {
                String string = arguments.getString("category_name");
                if (string == null) {
                    string = "";
                }
                return string;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$e.class */
    public static final class C13258e extends AbstractC15150l implements AbstractC15107a<String> {
        public C13258e() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            Bundle arguments = C13253d.this.getArguments();
            if (arguments != null) {
                String string = arguments.getString("more_info");
                if (string == null) {
                    string = "";
                }
                return string;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$f */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$f.class */
    public static final class View$OnClickListenerC13259f implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ View f29865b;

        public View$OnClickListenerC13259f(View view) {
            this.f29865b = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            File remove;
            View view2 = this.f29865b;
            C15149k.m383a((Object) view2, "view");
            Object tag = view2.getTag();
            Object obj = tag;
            if (!(tag instanceof String)) {
                obj = null;
            }
            String str = (String) obj;
            if (!(str == null || (remove = C13253d.this.m4358N().remove(str)) == null)) {
                remove.delete();
            }
            ((LinearLayout) C13253d.this.m4345b(R$id.ll_attachments)).removeView(this.f29865b);
            LinearLayout linearLayout = (LinearLayout) C13253d.this.m4345b(R$id.ll_attachments);
            C15149k.m383a((Object) linearLayout, "ll_attachments");
            if (linearLayout.getChildCount() < 5) {
                TextView textView = (TextView) C13253d.this.m4345b(R$id.tv_attach);
                C15149k.m383a((Object) textView, "tv_attach");
                textView.setEnabled(true);
            }
        }
    }

    /* renamed from: j.a.o.d$g */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$g.class */
    public static final class C13260g<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ Intent f29867b;

        public C13260g(Intent intent) {
            this.f29867b = intent;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super File> singleSubscriber) {
            Context context = C13253d.this.getContext();
            if (context != null) {
                C15149k.m383a((Object) context, "context!!");
                File b = C14028i2.m2752b(context, "cs_tmp");
                Context context2 = C13253d.this.getContext();
                if (context2 != null) {
                    C15149k.m383a((Object) context2, "context!!");
                    Uri data = this.f29867b.getData();
                    C15149k.m383a((Object) data, "data.data");
                    C14028i2.m2754a(context2, data, b);
                    singleSubscriber.onSuccess(b);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$h */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$h.class */
    public static final class C13261h<T> implements Action1<File> {

        /* renamed from: b */
        public final /* synthetic */ View f29869b;

        public C13261h(View view) {
            this.f29869b = view;
        }

        /* renamed from: a */
        public final void call(File file) {
            HashMap<String, File> N = C13253d.this.m4358N();
            C15149k.m383a((Object) file, "it");
            String name = file.getName();
            C15149k.m383a((Object) name, "it.name");
            N.put(name, file);
            View view = this.f29869b;
            C15149k.m383a((Object) view, "view");
            TextView textView = (TextView) view.findViewById(R$id.tv_image_size);
            C15149k.m383a((Object) textView, "view.tv_image_size");
            textView.setText(Formatter.formatFileSize(C13253d.this.getContext(), file.length()));
            View view2 = this.f29869b;
            C15149k.m383a((Object) view2, "view");
            ImageView imageView = (ImageView) view2.findViewById(R$id.iv_action);
            C15149k.m383a((Object) imageView, "view.iv_action");
            imageView.setVisibility(0);
            View view3 = this.f29869b;
            C15149k.m383a((Object) view3, "view");
            ProgressBar progressBar = (ProgressBar) view3.findViewById(R$id.iv_progress);
            C15149k.m383a((Object) progressBar, "view.iv_progress");
            progressBar.setVisibility(8);
            View view4 = this.f29869b;
            C15149k.m383a((Object) view4, "view");
            view4.setTag(file.getName());
            LinearLayout linearLayout = (LinearLayout) C13253d.this.m4345b(R$id.ll_attachments);
            C15149k.m383a((Object) linearLayout, "ll_attachments");
            if (linearLayout.getChildCount() >= 5) {
                TextView textView2 = (TextView) C13253d.this.m4345b(R$id.tv_attach);
                C15149k.m383a((Object) textView2, "tv_attach");
                textView2.setEnabled(false);
            }
        }
    }

    /* renamed from: j.a.o.d$i */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$i.class */
    public static final class C13262i<T> implements Action1<Throwable> {
        public C13262i() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C14687h.m862a(C13253d.this.getContext(), (int) R$string.card_detail_photo_error_toast, 0).m858c();
        }
    }

    /* renamed from: j.a.o.d$j */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$j.class */
    public static final class View$OnFocusChangeListenerC13263j implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC13263j() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (z) {
                C13253d.this.m4341d(true);
                View view2 = view;
                if (!(view instanceof LabeledEditText)) {
                    view2 = null;
                }
                LabeledEditText labeledEditText = (LabeledEditText) view2;
                if (labeledEditText != null) {
                    labeledEditText.m25696b(false);
                }
            }
        }
    }

    /* renamed from: j.a.o.d$k */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$k.class */
    public static final class DialogInterface$OnClickListenerC13264k implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC13264k() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13878a3.m3248a((Activity) C13253d.this.getActivity());
        }
    }

    /* renamed from: j.a.o.d$l */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$l.class */
    public static final class View$OnClickListenerC13265l implements View.OnClickListener {
        public View$OnClickListenerC13265l() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context = C13253d.this.getContext();
            IBinder iBinder = null;
            if (context != null) {
                Object systemService = context.getSystemService("input_method");
                if (systemService != null) {
                    InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                    FragmentActivity activity = C13253d.this.getActivity();
                    if (activity != null) {
                        C15149k.m383a((Object) activity, "activity!!");
                        View currentFocus = activity.getCurrentFocus();
                        if (currentFocus != null) {
                            iBinder = currentFocus.getWindowToken();
                        }
                        inputMethodManager.hideSoftInputFromWindow(iBinder, 0);
                        return;
                    }
                    C15149k.m378b();
                    throw null;
                }
                throw new C14986p("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.d$m */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$m.class */
    public static final class View$OnClickListenerC13266m implements View.OnClickListener {
        public View$OnClickListenerC13266m() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LabeledEditText labeledEditText;
            if (C14966w.m724a((CharSequence) ((LabeledEditText) C13253d.this.m4345b(R$id.let_email)).m25695c())) {
                TextView textView = (TextView) C13253d.this.m4345b(R$id.tv_email_hint);
                C15149k.m383a((Object) textView, "tv_email_hint");
                textView.setVisibility(8);
                LabeledEditText labeledEditText2 = (LabeledEditText) C13253d.this.m4345b(R$id.let_email);
                String string = C13253d.this.getString(R$string.drawer_help_user_report_email_must_fill);
                C15149k.m383a((Object) string, "getString(R.string.drawe…r_report_email_must_fill)");
                labeledEditText2.m25691d(string);
                ((LabeledEditText) C13253d.this.m4345b(R$id.let_email)).m25696b(true);
                labeledEditText = (LabeledEditText) C13253d.this.m4345b(R$id.let_email);
            } else if (!Patterns.EMAIL_ADDRESS.matcher(((LabeledEditText) C13253d.this.m4345b(R$id.let_email)).m25695c()).matches()) {
                TextView textView2 = (TextView) C13253d.this.m4345b(R$id.tv_email_hint);
                C15149k.m383a((Object) textView2, "tv_email_hint");
                textView2.setVisibility(8);
                LabeledEditText labeledEditText3 = (LabeledEditText) C13253d.this.m4345b(R$id.let_email);
                String string2 = C13253d.this.getString(R$string.drawer_help_user_report_email_format_error);
                C15149k.m383a((Object) string2, "getString(R.string.drawe…eport_email_format_error)");
                labeledEditText3.m25691d(string2);
                ((LabeledEditText) C13253d.this.m4345b(R$id.let_email)).m25696b(true);
                labeledEditText = (LabeledEditText) C13253d.this.m4345b(R$id.let_email);
            } else {
                labeledEditText = null;
            }
            if (C14966w.m724a((CharSequence) ((LabeledEditText) C13253d.this.m4345b(R$id.let_comment)).m25695c())) {
                ((LabeledEditText) C13253d.this.m4345b(R$id.let_comment)).m25696b(true);
                labeledEditText = (LabeledEditText) C13253d.this.m4345b(R$id.let_comment);
            }
            if (labeledEditText != null) {
                FragmentActivity activity = C13253d.this.getActivity();
                if (activity != null) {
                    C15149k.m383a((Object) activity, "activity!!");
                    View currentFocus = activity.getCurrentFocus();
                    if (currentFocus != null) {
                        currentFocus.clearFocus();
                    }
                    ((ScrollView) C13253d.this.m4345b(R$id.sv_container)).smoothScrollTo(0, labeledEditText.getTop());
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            if (labeledEditText == null) {
                C13253d.this.m4348X();
            }
        }
    }

    /* renamed from: j.a.o.d$n */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$n.class */
    public static final class View$OnClickListenerC13267n implements View.OnClickListener {
        public View$OnClickListenerC13267n() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!C13878a3.m3195w()) {
                C13253d.this.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 1);
            } else {
                C13008c.m4818a((Activity) null, C13253d.this, 2);
            }
        }
    }

    /* renamed from: j.a.o.d$o */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$o.class */
    public static final class C13268o extends AbstractC15150l implements AbstractC15107a<DialogC14628h> {
        public C13268o() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final DialogC14628h invoke() {
            DialogC14628h hVar = new DialogC14628h(C13253d.this.getContext(), (int) R$string.wait);
            hVar.setCancelable(false);
            return hVar;
        }
    }

    /* renamed from: j.a.o.d$p */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$p.class */
    public static final class C13269p<T> implements Single.OnSubscribe<T> {
        public C13269p() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super C13273e.C13274a> singleSubscriber) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            C13273e.m4334a(o);
            File file = new File(LogManager.m28585a(C13253d.this.getContext(), new File(C14217x3.m2117p(C13253d.this.getContext()))));
            String name = file.getName();
            C15149k.m383a((Object) name, "file.name");
            singleSubscriber.onSuccess(new C13273e.C13274a(name, "application/zip", file));
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "", "it", "Lgogolook/callgogolook2/cs/ZendeskManager$Attachment;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.o.d$q */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$q.class */
    public static final class C13270q<T> implements Action1<C13273e.C13274a> {

        /* renamed from: b */
        public final /* synthetic */ List f29879b;

        /* renamed from: c */
        public final /* synthetic */ String f29880c;

        /* renamed from: d */
        public final /* synthetic */ String f29881d;

        /* renamed from: e */
        public final /* synthetic */ List f29882e;

        /* renamed from: f */
        public final /* synthetic */ List f29883f;

        /* renamed from: j.a.o.d$q$a */
        /* loaded from: classes2-dex2jar.jar:j/a/o/d$q$a.class */
        public static final class C13271a implements C13273e.AbstractC13275b {
            public C13271a() {
            }

            @Override // p459j.p460a.p546o.C13273e.AbstractC13275b
            /* renamed from: a */
            public void mo4328a(String str) {
                C15149k.m377b(str, "reason");
                C13253d.this.m4343c(5);
                C13253d.this.m4349W();
                C13253d.this.m4347Y();
            }

            @Override // p459j.p460a.p546o.C13273e.AbstractC13275b
            public void onSuccess() {
                C13253d.this.m4343c(1);
                C14092n3.m2583b("cs_user_email", C13253d.this.m4355Q());
                C14092n3.m2583b("cs_user_name", C13253d.this.m4354R());
                C13253d.this.m4349W();
                C14217x3.m2156c(MyApplication.m29013o(), new Intent(MyApplication.m29013o(), MDialogActivity.class).putExtra("title", C14206w4.m2225a((int) R$string.drawer_help_user_report_confirm_title)).putExtra("message", C14206w4.m2225a((int) R$string.drawer_help_user_report_confirm_content)).putExtra("positive", C14206w4.m2225a((int) R$string.got_it)).setFlags(1350598656));
                FragmentActivity activity = C13253d.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }

        public C13270q(List list, String str, String str2, List list2, List list3) {
            this.f29879b = list;
            this.f29880c = str;
            this.f29881d = str2;
            this.f29882e = list2;
            this.f29883f = list3;
        }

        /* renamed from: a */
        public final void call(C13273e.C13274a aVar) {
            List list = this.f29879b;
            C15149k.m383a((Object) aVar, "it");
            list.add(aVar);
            String R = C13253d.this.m4354R();
            if (R == null) {
                R = "";
            }
            String Q = C13253d.this.m4355Q();
            if (Q == null) {
                Q = "";
            }
            C13273e.m4332a(R, Q, this.f29880c, this.f29881d, this.f29882e, this.f29883f, this.f29879b, new C13271a());
        }
    }

    /* renamed from: j.a.o.d$r */
    /* loaded from: classes2-dex2jar.jar:j/a/o/d$r.class */
    public static final class C13272r<T> implements Action1<Throwable> {
        public C13272r() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            C13253d.this.m4349W();
            C13253d.this.m4347Y();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13253d.class), "categoryId", "getCategoryId()I");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C13253d.class), "categoryIdx", "getCategoryIdx()I");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C13253d.class), "categoryName", "getCategoryName()Ljava/lang/String;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C13253d.class), "moreInfo", "getMoreInfo()Ljava/lang/String;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(C13253d.class), "progressDialog", "getProgressDialog()Lgogolook/callgogolook2/view/MProgressDialog;");
        C15131a0.m412a(sVar5);
        f29848n = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5};
        new C13254a(null);
    }

    public C13253d() {
        C14975g.m662a(new C13256c());
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: J */
    public void mo4362J() {
        HashMap hashMap = this.f29859m;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: K */
    public String mo4361K() {
        String string = getString(R$string.drawer_help_report_title);
        C15149k.m383a((Object) string, "getString(R.string.drawer_help_report_title)");
        return string;
    }

    /* renamed from: L */
    public final int m4360L() {
        AbstractC14974f fVar = this.f29851e;
        AbstractC14906i iVar = f29848n[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: M */
    public final String m4359M() {
        AbstractC14974f fVar = this.f29852f;
        AbstractC14906i iVar = f29848n[2];
        return (String) fVar.getValue();
    }

    /* renamed from: N */
    public final HashMap<String, File> m4358N() {
        return this.f29849c;
    }

    /* renamed from: O */
    public final String m4357O() {
        AbstractC14974f fVar = this.f29853g;
        AbstractC14906i iVar = f29848n[3];
        return (String) fVar.getValue();
    }

    /* renamed from: P */
    public final DialogC14628h m4356P() {
        AbstractC14974f fVar = this.f29854h;
        AbstractC14906i iVar = f29848n[4];
        return (DialogC14628h) fVar.getValue();
    }

    /* renamed from: Q */
    public final String m4355Q() {
        return this.f29857k;
    }

    /* renamed from: R */
    public final String m4354R() {
        return this.f29856j;
    }

    /* renamed from: S */
    public final String m4353S() {
        return C14092n3.m2584a("cs_user_email", C14092n3.m2584a("gmailAccount", ""));
    }

    /* renamed from: T */
    public final String m4352T() {
        return C14092n3.m2584a("cs_user_name", "");
    }

    /* renamed from: U */
    public final boolean m4351U() {
        boolean z = true;
        if (this.f29849c.size() <= 0) {
            if (this.f29850d) {
                z = true;
                if (!(!C14966w.m724a((CharSequence) ((LabeledEditText) m4345b(R$id.let_comment)).m25695c()))) {
                    z = true;
                    if (!(!C14966w.m724a((CharSequence) ((LabeledEditText) m4345b(R$id.let_email)).m25695c()))) {
                        if (!C14966w.m724a((CharSequence) ((LabeledEditText) m4345b(R$id.let_name)).m25695c())) {
                            z = true;
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: V */
    public final void m4350V() {
        m4356P().show();
        TextView textView = (TextView) m4345b(R$id.tv_submit);
        if (textView != null) {
            textView.setEnabled(false);
        }
    }

    /* renamed from: W */
    public final void m4349W() {
        C14217x3.m2194a(m4356P());
        TextView textView = (TextView) m4345b(R$id.tv_submit);
        if (textView != null) {
            textView.setEnabled(true);
        }
    }

    /* renamed from: X */
    public final void m4348X() {
        m4350V();
        this.f29858l = ((LabeledEditText) m4345b(R$id.let_comment)).m25695c();
        this.f29856j = ((LabeledEditText) m4345b(R$id.let_name)).m25695c();
        this.f29857k = ((LabeledEditText) m4345b(R$id.let_email)).m25695c();
        StringBuilder sb = new StringBuilder();
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        sb.append(g.m23335b() ? "(Test) " : "");
        sb.append("Whoscall - ");
        sb.append(m4359M());
        String sb2 = sb.toString();
        String str = this.f29858l + "\n\n" + m4357O() + "\n\nVerified Phone Number: " + C14137r4.m2374d() + '\n' + C13884a4.m3172f();
        ArrayList arrayList = new ArrayList();
        C13565v g2 = C13565v.m3921g();
        C15149k.m383a((Object) g2, "DevelopMode.getInstance()");
        if (g2.m23335b()) {
            arrayList.add("test");
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new CustomField(360008685574L, this.f29856j));
        arrayList2.add(new CustomField(360008459573L, Build.BRAND));
        arrayList2.add(new CustomField(360008459613L, Build.MODEL));
        arrayList2.add(new CustomField(360008459773L, C14017g4.m2806r()));
        arrayList2.add(new CustomField(360008459793L, String.valueOf(C14017g4.m2807q())));
        arrayList2.add(new CustomField(360008540654L, String.valueOf(Build.VERSION.SDK_INT)));
        arrayList2.add(new CustomField(360008540674L, C14017g4.m2810n()));
        arrayList2.add(new CustomField(360008540694L, C14017g4.m2811m()));
        Collection<File> values = this.f29849c.values();
        C15149k.m383a((Object) values, "files.values");
        ArrayList arrayList3 = new ArrayList(C15022n.m555a(values, 10));
        for (File file : values) {
            C15149k.m383a((Object) file, "it");
            String name = file.getName();
            C15149k.m383a((Object) name, "it.name");
            arrayList3.add(new C13273e.C13274a(name, "image/jpeg", file));
        }
        Single.create(new C13269p()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13270q(C15029u.m526d((Collection) arrayList3), sb2, str, arrayList, arrayList2), new C13272r());
    }

    /* renamed from: Y */
    public final void m4347Y() {
        if (getActivity() != null) {
            C14687h.m862a(MyApplication.m29013o(), (int) R$string.drawer_help_user_report_report_error, 0).m858c();
        }
    }

    /* renamed from: b */
    public View m4345b(int i) {
        if (this.f29859m == null) {
            this.f29859m = new HashMap();
        }
        View view = (View) this.f29859m.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f29859m.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c */
    public final void m4343c(int i) {
        int L = m4360L();
        String str = this.f29858l;
        boolean z = false;
        boolean z2 = str == null || C14966w.m724a((CharSequence) str);
        String str2 = this.f29857k;
        boolean z3 = str2 == null || C14966w.m724a((CharSequence) str2);
        String str3 = this.f29856j;
        if (str3 == null || C14966w.m724a((CharSequence) str3)) {
            z = true;
        }
        C14289m.m1907a(L, i, !z2, !z3, !z, this.f29849c.size());
    }

    /* renamed from: d */
    public final void m4341d(boolean z) {
        this.f29850d = z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2 && intent != null) {
            View inflate = getLayoutInflater().inflate(R$layout.item_cs_attached_image, (ViewGroup) ((LinearLayout) m4345b(R$id.ll_attachments)), false);
            C15149k.m383a((Object) inflate, "view");
            ((ImageView) inflate.findViewById(R$id.iv_action)).setOnClickListener(new View$OnClickListenerC13259f(inflate));
            ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_action);
            C15149k.m383a((Object) imageView, "view.iv_action");
            imageView.setVisibility(8);
            ProgressBar progressBar = (ProgressBar) inflate.findViewById(R$id.iv_progress);
            C15149k.m383a((Object) progressBar, "view.iv_progress");
            progressBar.setVisibility(0);
            ((LinearLayout) m4345b(R$id.ll_attachments)).addView(inflate);
            Single.create(new C13260g(intent)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13261h(inflate), new C13262i());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        return layoutInflater.inflate(R$layout.fragment_cs_report, viewGroup, false);
    }

    @Override // p459j.p460a.p546o.AbstractC13251c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo4362J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C15149k.m377b(strArr, "permissions");
        C15149k.m377b(iArr, "grantResults");
        if (i != 1) {
            return;
        }
        if (C13878a3.m3195w()) {
            ((TextView) m4345b(R$id.tv_attach)).performClick();
        } else if (C13878a3.m3219d((Activity) getActivity())) {
            DialogC14618f fVar = new DialogC14618f(getContext());
            fVar.setTitle(R$string.permission_title_storage);
            fVar.m995c(R$string.permission_content_storage);
            fVar.m999b(R$string.permission_button_storage, new DialogInterface$OnClickListenerC13264k());
            fVar.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        ((LinearLayout) m4345b(R$id.ll_container)).setOnClickListener(new View$OnClickListenerC13265l());
        ((LabeledEditText) m4345b(R$id.let_comment)).m25702a(this.f29855i);
        ((LabeledEditText) m4345b(R$id.let_email)).m25702a(this.f29855i);
        ((LabeledEditText) m4345b(R$id.let_email)).m25693c(m4353S());
        ((LabeledEditText) m4345b(R$id.let_name)).m25693c(m4352T());
        ((TextView) m4345b(R$id.tv_submit)).setOnClickListener(new View$OnClickListenerC13266m());
        ((TextView) m4345b(R$id.tv_attach)).setOnClickListener(new View$OnClickListenerC13267n());
    }
}
