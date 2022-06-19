package com.truecaller.p183ui.dialogs;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Toast;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19254q;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.AbstractC12813s2;
import p193e.p194a.p849h4.AbstractC14920n;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u0017J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078��@��X\u0081.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR(\u0010\u0018\u001a\u00020\u000f8��@��X\u0081.¢\u0006\u0018\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/ui/dialogs/QMTracingActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/h4/n;", "d", "Le/a/h4/n;", "getNotificationManager$truecaller_googlePlayRelease", "()Le/a/h4/n;", "setNotificationManager$truecaller_googlePlayRelease", "(Le/a/h4/n;)V", "notificationManager", "Ls1/w/f;", "e", "Ls1/w/f;", "getUiCoroutinesContext$truecaller_googlePlayRelease", "()Ls1/w/f;", "setUiCoroutinesContext$truecaller_googlePlayRelease", "(Ls1/w/f;)V", "getUiCoroutinesContext$truecaller_googlePlayRelease$annotations", "()V", "uiCoroutinesContext", "Ljava/text/SimpleDateFormat;", "f", "Ljava/text/SimpleDateFormat;", "dateFormat", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.dialogs.QMTracingActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QMTracingActivity.class */
public final class QMTracingActivity extends AbstractC12813s2 {

    /* renamed from: g */
    public static final /* synthetic */ int f15820g = 0;
    @Inject

    /* renamed from: d */
    public AbstractC14920n f15821d;
    @Inject

    /* renamed from: e */
    public f f15822e;

    /* renamed from: f */
    public final SimpleDateFormat f15823f = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US);

    @e(c = "com.truecaller.ui.dialogs.QMTracingActivity$onCreate$1", f = "QMTracingActivity.kt", l = {61}, m = "invokeSuspend")
    /* renamed from: com.truecaller.ui.dialogs.QMTracingActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QMTracingActivity$a.class */
    public static final class C4688a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f15824e;

        /* renamed from: g */
        public final /* synthetic */ Context f15826g;

        /* renamed from: h */
        public final /* synthetic */ String f15827h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4688a(Context context, String str, d dVar) {
            super(2, dVar);
            QMTracingActivity.this = r5;
            this.f15826g = context;
            this.f15827h = str;
        }

        /* renamed from: i */
        public final d<s> m34506i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4688a(this.f15826g, this.f15827h, dVar);
        }

        /* renamed from: k */
        public final Object m34505k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4688a(this.f15826g, this.f15827h, dVar).m34504s(s.a);
        }

        /* renamed from: s */
        public final Object m34504s(Object obj) {
            CharSequence charSequence;
            a aVar = a.a;
            int i = this.f15824e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Context context = this.f15826g;
                String str = this.f15827h;
                this.f15824e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C19254q(str, context, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Uri uri = (Uri) obj;
            if (uri == null) {
                charSequence = "Unable to move trace file to Downloads folder";
            } else {
                QMTracingActivity qMTracingActivity = QMTracingActivity.this;
                Context context2 = this.f15826g;
                int i2 = QMTracingActivity.f15820g;
                Objects.requireNonNull(qMTracingActivity);
                context2.startActivity(new Intent("android.intent.action.SEND").putExtra("android.intent.extra.STREAM", uri).setType("application/binary").setFlags(268435456));
                charSequence = "Trace saved to Downloads folder";
            }
            Toast.makeText(this.f15826g, charSequence, 1).show();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.ui.dialogs.QMTracingActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QMTracingActivity$b.class */
    public static final class C4689b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f15828a;

        public C4689b(EditText editText) {
            this.f15828a = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            EditText editText = this.f15828a;
            l.d(editText, "samplingEditText");
            editText.setEnabled(z);
        }
    }

    /* renamed from: com.truecaller.ui.dialogs.QMTracingActivity$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/dialogs/QMTracingActivity$c.class */
    public static final class View$OnClickListenerC4690c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ CheckBox f15830b;

        /* renamed from: c */
        public final /* synthetic */ EditText f15831c;

        public View$OnClickListenerC4690c(CheckBox checkBox, EditText editText) {
            QMTracingActivity.this = r4;
            this.f15830b = checkBox;
            this.f15831c = editText;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.ui.dialogs.QMTracingActivity, java.lang.Object, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ?? r0 = QMTracingActivity.this;
            CheckBox checkBox = this.f15830b;
            l.d(checkBox, "samplingCheckBox");
            boolean isChecked = checkBox.isChecked();
            EditText editText = this.f15831c;
            l.d(editText, "samplingEditText");
            int parseInt = Integer.parseInt(editText.getText().toString());
            int i = QMTracingActivity.f15820g;
            Objects.requireNonNull(r0);
            StringBuilder sb = new StringBuilder();
            File externalFilesDir = r0.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            sb.append(externalFilesDir != null ? externalFilesDir.getPath() : null);
            sb.append(File.separator);
            String str = Build.MANUFACTURER;
            l.d(str, "Build.MANUFACTURER");
            sb.append(C12864a2.m22561d(str));
            sb.append(StringConstant.DASH);
            String str2 = Build.MODEL;
            l.d(str2, "Build.MODEL");
            sb.append(C12864a2.m22561d(str2));
            sb.append(StringConstant.DASH);
            sb.append(r0.f15823f.format(new Date()));
            sb.append(".trace");
            String sb2 = sb.toString();
            FileDescriptor fd = new FileOutputStream(new File(sb2)).getFD();
            l.d(fd, "File(path).outputStream().fd");
            Class<?> cls = Class.forName("dalvik.system.VMDebug");
            try {
                cls.getMethod("allowHiddenApiReflectionFrom", Class.class).invoke(null, r0.getClass());
            } catch (Exception e) {
                e.getMessage();
            }
            Class<?> cls2 = Integer.TYPE;
            Class<?> cls3 = Boolean.TYPE;
            cls.getMethod("startMethodTracing", String.class, FileDescriptor.class, cls2, cls2, cls3, cls2, cls3).invoke(null, sb2, fd, 8192, 0, Boolean.valueOf(isChecked), Integer.valueOf(parseInt), Boolean.TRUE);
            PendingIntent activity = PendingIntent.getActivity(r0, C2752R.C2754id.req_code_qa_stop_method_tracing, new Intent((Context) r0, QMTracingActivity.class).setFlags(268435456).putExtra("path", sb2), 201326592);
            AbstractC14920n abstractC14920n = r0.f15821d;
            if (abstractC14920n == null) {
                l.l("notificationManager");
                throw null;
            }
            C26450q c26450q = new C26450q((Context) r0, abstractC14920n.mo19422d());
            c26450q.m1855n("Method trace running...");
            c26450q.m1856m("Tap to stop");
            c26450q.f74137R.icon = 2131236603;
            c26450q.f74152l = 2;
            c26450q.f74147g = activity;
            c26450q.m1853p(2, true);
            c26450q.m1853p(16, true);
            Notification m1865d = c26450q.m1865d();
            AbstractC14920n abstractC14920n2 = r0.f15821d;
            if (abstractC14920n2 == null) {
                l.l("notificationManager");
                throw null;
            }
            l.d(m1865d, "it");
            abstractC14920n2.mo19419g(C2752R.C2754id.qa_method_tracing_notification_id, m1865d);
            Toast.makeText((Context) r0, "Method trace started", 1).show();
            r0.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        QMTracingActivity.super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("path");
        if (stringExtra == null) {
            setContentView((int) C2752R.layout.dialog_qa_tracing);
            CheckBox checkBox = (CheckBox) findViewById((int) C2752R.C2754id.sampling_check_box);
            EditText editText = (EditText) findViewById((int) C2752R.C2754id.sampling_interval_text);
            checkBox.setOnCheckedChangeListener(new C4689b(editText));
            findViewById((int) C2752R.C2754id.start_button).setOnClickListener(new View$OnClickListenerC4690c(checkBox, editText));
            return;
        }
        Debug.stopMethodTracing();
        Context applicationContext = getApplicationContext();
        if (applicationContext == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        h1 h1Var = h1.a;
        f fVar = this.f15822e;
        if (fVar == null) {
            l.l("uiCoroutinesContext");
            throw null;
        }
        s1.a.a.a.v0.f.d.w2(h1Var, fVar, (j0) null, new C4688a(applicationContext, stringExtra, null), 2, (Object) null);
        finish();
    }
}
