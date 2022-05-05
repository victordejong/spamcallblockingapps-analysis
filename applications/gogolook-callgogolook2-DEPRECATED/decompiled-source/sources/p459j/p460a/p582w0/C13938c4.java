package p459j.p460a.p582w0;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import okhttp3.Headers;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p507f0.AbstractC12383b;
import p459j.p460a.p530k.AsyncTaskC12839g;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14989s;
/* renamed from: j.a.w0.c4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/c4.class */
public class C13938c4 {

    /* renamed from: j.a.w0.c4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$a.class */
    public static final class DialogInterface$OnClickListenerC13939a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f31319a;

        public DialogInterface$OnClickListenerC13939a(DialogInterface.OnClickListener onClickListener) {
            this.f31319a = onClickListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            DialogInterface.OnClickListener onClickListener = this.f31319a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    /* renamed from: j.a.w0.c4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$b.class */
    public static final class DialogInterface$OnClickListenerC13940b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13951l f31320a;

        /* renamed from: b */
        public final /* synthetic */ int f31321b;

        /* renamed from: c */
        public final /* synthetic */ DialogInterface.OnClickListener f31322c;

        public DialogInterface$OnClickListenerC13940b(AbstractC13951l lVar, int i, DialogInterface.OnClickListener onClickListener) {
            this.f31320a = lVar;
            this.f31321b = i;
            this.f31322c = onClickListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            this.f31320a.startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), this.f31321b);
            DialogInterface.OnClickListener onClickListener = this.f31322c;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    /* renamed from: j.a.w0.c4$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$c.class */
    public static final class DialogInterface$OnClickListenerC13941c implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: j.a.w0.c4$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$d.class */
    public static final class DialogInterface$OnClickListenerC13942d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31323a;

        /* renamed from: b */
        public final /* synthetic */ LinkedHashMap f31324b;

        /* renamed from: c */
        public final /* synthetic */ List f31325c;

        /* renamed from: d */
        public final /* synthetic */ Spinner f31326d;

        /* renamed from: e */
        public final /* synthetic */ String f31327e;

        /* renamed from: j.a.w0.c4$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$d$a.class */
        public class C13943a extends AbstractC12383b {
            public C13943a() {
            }

            @Override // p459j.p460a.p507f0.AbstractC12383b
            /* renamed from: a */
            public void mo3002a(int i, String str, Headers headers) throws Exception {
                if (i == 200) {
                    DialogInterface$OnClickListenerC13942d dVar = DialogInterface$OnClickListenerC13942d.this;
                    C14189u3.m2264c().m2271a(DialogInterface$OnClickListenerC13942d.this.f31327e, ((Integer) dVar.f31324b.get(dVar.f31325c.get(((Integer) dVar.f31326d.getTag()).intValue()))).intValue());
                    C14687h.m861a(DialogInterface$OnClickListenerC13942d.this.f31323a, C14206w4.m2225a((int) R$string.thank_feedback), 1).m858c();
                    C11052i.m10328e().m10344a(DialogInterface$OnClickListenerC13942d.this.f31327e);
                    C14037j3.m2731a().mo2704a(new C14088n0());
                    if (DialogInterface$OnClickListenerC13942d.this.f31323a instanceof NumberDetailActivity) {
                        C14037j3.m2731a().mo2704a(new C14059l1(false));
                        return;
                    }
                    return;
                }
                C14687h.m861a(DialogInterface$OnClickListenerC13942d.this.f31323a, C14206w4.m2225a((int) R$string.error_code_whoscallcard), 1).m858c();
            }
        }

        public DialogInterface$OnClickListenerC13942d(Context context, LinkedHashMap linkedHashMap, List list, Spinner spinner, String str) {
            this.f31323a = context;
            this.f31324b = linkedHashMap;
            this.f31325c = list;
            this.f31326d = spinner;
            this.f31327e = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                if (C14217x3.m2137h(this.f31323a)) {
                    C14217x3.m2181a(new AsyncTaskC12839g(this.f31323a, this.f31327e, Integer.toString(((Integer) this.f31324b.get(this.f31325c.get(((Integer) this.f31326d.getTag()).intValue()))).intValue()), "", true, new C13943a()));
                } else {
                    C14687h.m861a(this.f31323a, C14206w4.m2225a((int) R$string.error_code_nointernet), 1).m858c();
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: j.a.w0.c4$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$e.class */
    public static final class C13944e implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ Spinner f31329a;

        /* renamed from: b */
        public final /* synthetic */ DialogC14618f f31330b;

        public C13944e(Spinner spinner, DialogC14618f fVar) {
            this.f31329a = spinner;
            this.f31330b = fVar;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f31329a.setTag(Integer.valueOf(i));
            if (i != 0) {
                this.f31330b.f32631a.setEnabled(true);
            } else {
                this.f31330b.f32631a.setEnabled(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: j.a.w0.c4$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$f.class */
    public static final class DialogInterface$OnClickListenerC13945f implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.w0.c4$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$g.class */
    public static final class DialogInterface$OnClickListenerC13946g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31331a;

        public DialogInterface$OnClickListenerC13946g(Context context) {
            this.f31331a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(C14206w4.m2225a((int) R$string.reimder_xiaomi_dialog_url)));
                this.f31331a.startActivity(intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: j.a.w0.c4$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$h.class */
    public static final class DialogInterface$OnClickListenerC13947h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31332a;

        /* renamed from: b */
        public final /* synthetic */ String f31333b;

        /* renamed from: c */
        public final /* synthetic */ boolean f31334c;

        public DialogInterface$OnClickListenerC13947h(Context context, String str, boolean z) {
            this.f31332a = context;
            this.f31333b = str;
            this.f31334c = z;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13938c4.m3003b(this.f31332a, Uri.parse(this.f31333b));
            if (this.f31334c) {
                C13915b3.m3055b("has_shown_special_device_intro_tutorial", true);
            }
        }
    }

    /* renamed from: j.a.w0.c4$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$i.class */
    public static final class DialogInterface$OnClickListenerC13948i implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31335a;

        /* renamed from: b */
        public final /* synthetic */ String f31336b;

        public DialogInterface$OnClickListenerC13948i(Context context, String str) {
            this.f31335a = context;
            this.f31336b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13938c4.m3003b(this.f31335a, Uri.parse(this.f31336b));
        }
    }

    /* renamed from: j.a.w0.c4$j */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$j.class */
    public static final class DialogInterface$OnClickListenerC13949j implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f31337a;

        public DialogInterface$OnClickListenerC13949j(DialogInterface.OnClickListener onClickListener) {
            this.f31337a = onClickListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogInterface.OnClickListener onClickListener = this.f31337a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    /* renamed from: j.a.w0.c4$k */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$k.class */
    public static final class C13950k implements AbstractC13951l {

        /* renamed from: a */
        public final /* synthetic */ Fragment f31338a;

        public C13950k(Fragment fragment) {
            this.f31338a = fragment;
        }

        @Override // p459j.p460a.p582w0.C13938c4.AbstractC13951l
        /* renamed from: a */
        public Activity mo3001a() {
            return this.f31338a.getActivity();
        }

        @Override // p459j.p460a.p582w0.C13938c4.AbstractC13951l
        public void startActivityForResult(Intent intent, int i) {
            this.f31338a.startActivityForResult(intent, i);
        }
    }

    /* renamed from: j.a.w0.c4$l */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/c4$l.class */
    public interface AbstractC13951l {
        /* renamed from: a */
        Activity mo3001a();

        void startActivityForResult(Intent intent, int i);
    }

    /* renamed from: a */
    public static DialogC14618f m3007a(Context context, String str, String str2, String str3, DialogInterface.OnClickListener onClickListener, String str4, DialogInterface.OnClickListener onClickListener2) {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(new ContextThemeWrapper(context, 2131952205));
        if (!TextUtils.isEmpty(str)) {
            fVar.m976c(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            fVar.m979b(str2);
        }
        if (!TextUtils.isEmpty(str3) && onClickListener != null) {
            fVar.m978b(str3, onClickListener);
        }
        if (!TextUtils.isEmpty(str4) && onClickListener2 != null) {
            fVar.m984a(str4, onClickListener2);
        }
        DialogC14618f a = fVar.m989a();
        if (!(context instanceof Activity)) {
            a.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            C13878a3.m3244a(a);
        } else {
            a.show();
        }
        return a;
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m3005a(C11507b.C11508a aVar) {
        boolean z = true;
        aVar.m9447a("has_set_dialog_for_new_user", true);
        aVar.m9447a("isVasSmsPopup", C14320y3.m1590f() != 2);
        if (C14320y3.m1590f() != 0) {
            z = false;
        }
        aVar.m9447a("isStrangerSmsPopup", z);
        return null;
    }

    /* renamed from: a */
    public static void m3013a() {
        if (C14217x3.m2207A() && !C13915b3.m3062a("has_set_dialog_for_new_user", false)) {
            C13978e.f31386a.m9457a(C13997f.f31413a);
        }
    }

    /* renamed from: a */
    public static void m3012a(@NonNull Context context) {
        if (!C13915b3.m3062a("has_shown_special_device_intro_tutorial", false)) {
            DialogC14618f fVar = new DialogC14618f(context);
            fVar.setTitle(C14206w4.m2225a((int) R$string.intro_caller_disclosure_special_title));
            fVar.m998b(C14206w4.m2225a((int) R$string.intro_caller_disclosure_special_content));
            fVar.m997b(C14206w4.m2225a((int) R$string.intro_caller_disclosure_special_button), new DialogInterface$OnClickListenerC13946g(context));
            fVar.m1002a(C14206w4.m2225a((int) R$string.close), (DialogInterface.OnClickListener) null);
            fVar.show();
            C13915b3.m3055b("has_shown_special_device_intro_tutorial", true);
        }
    }

    /* renamed from: a */
    public static void m3010a(Context context, String str) {
        if (C14189u3.m2264c().m2272a(str)) {
            LinkedHashMap<String, Integer> b = C14189u3.m2264c().m2267b();
            ArrayList arrayList = new ArrayList();
            arrayList.add(C14206w4.m2225a((int) R$string.select_content));
            for (String str2 : b.keySet()) {
                arrayList.add(str2);
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, (int) R$layout.my_block_simple_spinner_dropdown_item, arrayList.toArray(new String[arrayList.size()]));
            View inflate = ((Activity) context).getLayoutInflater().inflate(R$layout.report_telecom_view, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.tv_msg);
            Spinner spinner = (Spinner) inflate.findViewById(R$id.sp_type);
            ((EditText) inflate.findViewById(R$id.et_others)).setVisibility(8);
            if (Build.VERSION.SDK_INT < 14) {
                textView.setTextColor(-1);
            }
            spinner.setAdapter((SpinnerAdapter) arrayAdapter);
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(context);
            fVar.m976c(String.format(C14206w4.m2225a((int) R$string.telecom_report_title), str));
            fVar.m986a(inflate);
            fVar.m978b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC13942d(context, b, arrayList, spinner, str));
            fVar.m984a(C14206w4.m2225a((int) R$string.cancel), new DialogInterface$OnClickListenerC13941c());
            DialogC14618f a = fVar.m989a();
            a.show();
            a.f32631a.setEnabled(false);
            spinner.setOnItemSelectedListener(new C13944e(spinner, a));
        }
    }

    /* renamed from: a */
    public static void m3008a(@NonNull Context context, String str, String str2) {
        try {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(context);
            fVar.m979b(str);
            fVar.m983a(true);
            fVar.m978b(str2, new DialogInterface$OnClickListenerC13945f());
            fVar.m989a().show();
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: a */
    public static void m3006a(@NonNull Fragment fragment, int i, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener) {
        m3004a(new C13950k(fragment), i, str, onClickListener);
    }

    /* renamed from: a */
    public static void m3004a(@NonNull AbstractC13951l lVar, int i, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener) {
        Activity a = lVar.mo3001a();
        if (C14217x3.m2196a(a)) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(a);
            fVar.m979b(str);
            fVar.m983a(false);
            fVar.m978b(C14206w4.m2225a((int) R$string.textsearch_dialogue_gps_y), new DialogInterface$OnClickListenerC13940b(lVar, i, onClickListener));
            fVar.m984a(C14206w4.m2225a((int) R$string.textsearch_dialogue_gps_n), new DialogInterface$OnClickListenerC13939a(onClickListener));
            fVar.m989a().show();
        }
    }

    /* renamed from: a */
    public static boolean m3009a(@NonNull Context context, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener, @Nullable DialogInterface.OnKeyListener onKeyListener) {
        boolean equalsIgnoreCase = "onboarding_tutorial".equalsIgnoreCase(str);
        boolean equalsIgnoreCase2 = "onboarding_tutorial".equalsIgnoreCase(str);
        boolean equalsIgnoreCase3 = "onboarding_tutorial".equalsIgnoreCase(str);
        if (equalsIgnoreCase && C13915b3.m3062a("has_shown_special_device_intro_tutorial", false)) {
            return false;
        }
        String b = C13892b.m3135b(str);
        if (TextUtils.isEmpty(b)) {
            return false;
        }
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.setCancelable(!equalsIgnoreCase2);
        fVar.setTitle(C14206w4.m2225a((int) R$string.intro_caller_disclosure_special_title));
        fVar.m998b(C14206w4.m2225a((int) R$string.intro_caller_disclosure_special_content));
        if (equalsIgnoreCase3) {
            fVar.m997b(C14206w4.m2225a((int) R$string.intro_caller_special_button_go), new DialogInterface$OnClickListenerC13947h(context, b, equalsIgnoreCase));
        } else {
            fVar.m997b(C14206w4.m2225a((int) R$string.intro_caller_special_button_go), new DialogInterface$OnClickListenerC13948i(context, b));
            fVar.m1002a(C14206w4.m2225a((int) R$string.intro_caller_special_button_cannotwork), new DialogInterface$OnClickListenerC13949j(onClickListener));
            if (onKeyListener != null) {
                fVar.setOnKeyListener(onKeyListener);
            }
        }
        fVar.show();
        return true;
    }

    /* renamed from: b */
    public static void m3003b(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            C14217x3.m2156c(context, intent);
        } catch (Exception e) {
        }
    }
}
