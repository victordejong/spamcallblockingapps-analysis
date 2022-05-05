package p459j.p460a.p564s;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.p587d5.C13975b;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15159u;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u000eH\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R*\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@BX\u0087\u000e¢\u0006\u0012\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/developmode/OfflineDbDevTool;", "", "()V", "SET_OFFLINE_DB_OUTDATED_DEBUG", "", C13032a.f29462d, "", "enableOfflineDbOutdatedDebugMode", "enableOfflineDbOutdatedDebugMode$annotations", "getEnableOfflineDbOutdatedDebugMode", "()Z", "setEnableOfflineDbOutdatedDebugMode", "(Z)V", "getOfflineDbOutdatedDebugVersion", "", "currentVersion", "openOfflineDbOutdatedTool", "", "context", "Landroid/content/Context;", "setOfflineDbOutdatedDebugVersion", "version", "ViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.b0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/b0.class */
public final class C13419b0 {

    /* renamed from: j.a.s.b0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/b0$a.class */
    public static final class C13420a {

        /* renamed from: a */
        public final LinearLayout f30161a;

        /* renamed from: b */
        public final CheckBox f30162b;

        /* renamed from: c */
        public final EditText f30163c;

        /* renamed from: d */
        public final EditText f30164d;

        public C13420a(Context context) {
            C15149k.m377b(context, "context");
            this.f30162b = new CheckBox(context);
            TextView textView = new TextView(context);
            textView.setTextSize(12.0f);
            textView.setText("Current version:");
            EditText editText = new EditText(context);
            editText.setTextSize(14.0f);
            editText.setHint("Enter a current version");
            editText.setInputType(2);
            this.f30163c = editText;
            TextView textView2 = new TextView(context);
            textView2.setTextSize(12.0f);
            textView2.setText("Next version:");
            EditText editText2 = new EditText(context);
            editText2.setTextSize(14.0f);
            editText2.setHint("Enter a next version");
            editText2.setInputType(2);
            this.f30164d = editText2;
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.addView(this.f30162b);
            linearLayout.addView(textView);
            linearLayout.addView(this.f30163c);
            linearLayout.addView(textView2);
            linearLayout.addView(this.f30164d);
            this.f30161a = linearLayout;
        }

        /* renamed from: a */
        public final EditText m4053a() {
            return this.f30163c;
        }

        /* renamed from: b */
        public final CheckBox m4052b() {
            return this.f30162b;
        }

        /* renamed from: c */
        public final EditText m4051c() {
            return this.f30164d;
        }

        /* renamed from: d */
        public final LinearLayout m4050d() {
            return this.f30161a;
        }
    }

    /* renamed from: j.a.s.b0$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/b0$b.class */
    public static final class C13421b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ C15159u f30165a;

        public C13421b(C15159u uVar) {
            this.f30165a = uVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30165a.f33147a = z;
        }
    }

    /* renamed from: j.a.s.b0$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/b0$c.class */
    public static final class DialogInterface$OnClickListenerC13422c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13422c f30166a = new DialogInterface$OnClickListenerC13422c();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
        }
    }

    /* renamed from: j.a.s.b0$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/b0$d.class */
    public static final class DialogInterface$OnClickListenerC13423d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C15162x f30167a;

        /* renamed from: b */
        public final /* synthetic */ C13420a f30168b;

        /* renamed from: c */
        public final /* synthetic */ C15162x f30169c;

        /* renamed from: d */
        public final /* synthetic */ C15159u f30170d;

        public DialogInterface$OnClickListenerC13423d(C15162x xVar, C13420a aVar, C15162x xVar2, C15159u uVar) {
            this.f30167a = xVar;
            this.f30168b = aVar;
            this.f30169c = xVar2;
            this.f30170d = uVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f30167a.f33150a = Integer.parseInt(this.f30168b.m4053a().getText().toString());
            this.f30169c.f33150a = Integer.parseInt(this.f30168b.m4051c().getText().toString());
            C13419b0.m4055b(true, this.f30167a.f33150a);
            C13419b0.m4055b(false, this.f30169c.f33150a);
            C13419b0.m4054c(this.f30170d.f33147a);
        }
    }

    static {
        new C13419b0();
    }

    /* renamed from: a */
    public static final void m4059a(Context context) {
        C15149k.m377b(context, "context");
        C13420a aVar = new C13420a(context);
        C15159u uVar = new C15159u();
        uVar.f33147a = m4060a();
        aVar.m4052b().setChecked(uVar.f33147a);
        aVar.m4052b().setOnCheckedChangeListener(new C13421b(uVar));
        C15162x xVar = new C15162x();
        xVar.f33150a = m4056b(true);
        C15162x xVar2 = new C15162x();
        xVar2.f33150a = m4056b(false);
        aVar.m4053a().setText(String.valueOf(xVar.f33150a));
        aVar.m4051c().setText(String.valueOf(xVar2.f33150a));
        new AlertDialog.Builder(context).setView(aVar.m4050d()).setNegativeButton(R$string.cancel, DialogInterface$OnClickListenerC13422c.f30166a).setPositiveButton(R$string.save, new DialogInterface$OnClickListenerC13423d(xVar, aVar, xVar2, uVar)).show();
    }

    /* renamed from: a */
    public static final boolean m4060a() {
        return C13975b.f31383a.m9462a("enable_offline_db_outdated_debug_mode", (Boolean) false);
    }

    /* renamed from: b */
    public static final int m4056b(boolean z) {
        return C13975b.f31383a.m9461a(z ? "enable_offline_db_outdated_debug_mode_current_version" : "enable_offline_db_outdated_debug_mode_next_version", (Integer) 0);
    }

    /* renamed from: b */
    public static final void m4055b(boolean z, int i) {
        C13975b.f31383a.m9459a(z ? "enable_offline_db_outdated_debug_mode_current_version" : "enable_offline_db_outdated_debug_mode_next_version", (String) Integer.valueOf(i));
    }

    /* renamed from: c */
    public static final void m4054c(boolean z) {
        C13975b.f31383a.m9459a("enable_offline_db_outdated_debug_mode", (String) Boolean.valueOf(z));
    }
}
