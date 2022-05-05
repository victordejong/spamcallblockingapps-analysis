package p459j.p460a.p582w0;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.View;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p075cs.CustomerServiceActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p546o.p547f.C13286c;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.DialogC14597a;
import p459j.p460a.p613z0.DialogC14625g;
/* renamed from: j.a.w0.a4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a4.class */
public class C13884a4 {

    /* renamed from: a */
    public static final SparseIntArray f31183a = new SparseIntArray();

    /* renamed from: j.a.w0.a4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$a.class */
    public static final class DialogInterface$OnCancelListenerC13885a implements DialogInterface.OnCancelListener {
        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            C14289m.m1846j(0);
        }
    }

    /* renamed from: j.a.w0.a4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$b.class */
    public static final class DialogInterface$OnClickListenerC13886b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int[] f31184a;

        /* renamed from: b */
        public final /* synthetic */ String[] f31185b;

        /* renamed from: c */
        public final /* synthetic */ Bundle f31186c;

        /* renamed from: d */
        public final /* synthetic */ Context f31187d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC13890d f31188e;

        /* renamed from: f */
        public final /* synthetic */ DialogC14625g f31189f;

        /* renamed from: j.a.w0.a4$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$b$a.class */
        public class DialogInterface$OnClickListenerC13887a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC13887a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogInterface$OnClickListenerC13886b bVar = DialogInterface$OnClickListenerC13886b.this;
                C13884a4.m3179b(bVar.f31187d, true, bVar.f31186c, bVar.f31188e);
            }
        }

        /* renamed from: j.a.w0.a4$b$b */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$b$b.class */
        public class DialogInterface$OnKeyListenerC13888b implements DialogInterface.OnKeyListener {
            public DialogInterface$OnKeyListenerC13888b() {
            }

            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return false;
                }
                dialogInterface.dismiss();
                DialogInterface$OnClickListenerC13886b bVar = DialogInterface$OnClickListenerC13886b.this;
                C13884a4.m3180b(bVar.f31187d, bVar.f31186c, bVar.f31188e);
                return true;
            }
        }

        public DialogInterface$OnClickListenerC13886b(int[] iArr, String[] strArr, Bundle bundle, Context context, AbstractC13890d dVar, DialogC14625g gVar) {
            this.f31184a = iArr;
            this.f31185b = strArr;
            this.f31186c = bundle;
            this.f31187d = context;
            this.f31188e = dVar;
            this.f31189f = gVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f31184a[i];
            String[] strArr = this.f31185b;
            if (i < strArr.length) {
                this.f31186c.putString("title_postfix", strArr[i]);
            }
            boolean z = true;
            boolean z2 = true;
            if (i2 != 0) {
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    Context context = this.f31187d;
                    if (i2 == 3) {
                        z = false;
                    }
                    C13884a4.m3179b(context, z, this.f31186c, this.f31188e);
                } else if (i2 == 4 || i2 == 5) {
                    this.f31186c.putString("title_postfix", this.f31185b[i]);
                    Bundle bundle = this.f31186c;
                    if (i2 != 5) {
                        z2 = false;
                    }
                    bundle.putBoolean("need_num_verified", z2);
                    C13884a4.m3175c(this.f31187d, false, this.f31186c, this.f31188e);
                }
            } else if (C13892b.m3132c("csnopopup_tutorial")) {
                C13938c4.m3009a(this.f31187d, "csnopopup_tutorial", new DialogInterface$OnClickListenerC13887a(), new DialogInterface$OnKeyListenerC13888b());
            } else {
                C13884a4.m3179b(this.f31187d, true, this.f31186c, this.f31188e);
            }
            C14289m.m1846j(C13884a4.f31183a.get(i2));
            this.f31189f.dismiss();
        }
    }

    /* renamed from: j.a.w0.a4$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$c.class */
    public static final class RunnableC13889c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f31192a;

        /* renamed from: b */
        public final /* synthetic */ Context f31193b;

        /* renamed from: c */
        public final /* synthetic */ Bundle f31194c;

        /* renamed from: d */
        public final /* synthetic */ ProgressDialog f31195d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC13890d f31196e;

        public RunnableC13889c(boolean z, Context context, Bundle bundle, ProgressDialog progressDialog, AbstractC13890d dVar) {
            this.f31192a = z;
            this.f31193b = context;
            this.f31194c = bundle;
            this.f31195d = progressDialog;
            this.f31196e = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            if (this.f31192a) {
                try {
                    String a = LogManager.m28585a(this.f31193b, new File(C14217x3.m2117p(this.f31193b)));
                    if (a != null) {
                        arrayList.add(C6298e.m23351a(this.f31193b, "gogolook.callgogolook2.provider", a));
                    }
                } catch (Throwable th) {
                    C14080m2.m2612a(th);
                }
            }
            C13884a4.m3177b(arrayList, this.f31193b, C13884a4.m3178b(this.f31194c.getString("title_postfix")), this.f31194c.getBoolean("need_num_verified", false), this.f31194c.getString("more_info"));
            this.f31195d.dismiss();
            AbstractC13890d dVar = this.f31196e;
            if (dVar != null) {
                dVar.mo3169a(4);
            }
        }
    }

    /* renamed from: j.a.w0.a4$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a4$d.class */
    public interface AbstractC13890d {
        /* renamed from: a */
        void mo3169a(int i);
    }

    static {
        f31183a.put(0, 1);
        f31183a.put(1, 2);
        f31183a.put(2, 3);
        f31183a.put(3, 6);
        f31183a.put(4, 5);
        f31183a.put(5, 4);
    }

    /* renamed from: a */
    public static String m3190a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m3189a(int i, Object... objArr) {
        return C14206w4.m2224a(i, objArr);
    }

    /* renamed from: a */
    public static void m3188a(Context context) {
        Bitmap drawingCache;
        if (context instanceof Activity) {
            String g = m3171g();
            View decorView = ((Activity) context).getWindow().getDecorView();
            decorView.setDrawingCacheEnabled(true);
            int i = 0;
            while (true) {
                drawingCache = decorView.getDrawingCache();
                if (drawingCache != null || i >= 3) {
                    break;
                }
                System.gc();
                i++;
            }
            if (drawingCache != null) {
                File file = new File(g);
                if (file.exists()) {
                    file.delete();
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    drawingCache.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            decorView.setDrawingCacheEnabled(false);
            return;
        }
        throw new IllegalArgumentException("the context has to be activity");
    }

    /* renamed from: a */
    public static void m3187a(Context context, int i, Bundle bundle, AbstractC13890d dVar) {
        int i2 = 3;
        if (C13286c.hasFaqContent(C14017g4.m2810n())) {
            if (!bundle.containsKey("step")) {
                if (i <= 1) {
                    i2 = 1;
                }
                bundle.putInt("step", i2);
            }
            C14217x3.m2156c(context, new Intent(context, CustomerServiceActivity.class).putExtras(bundle));
        } else if (i == 1) {
            m3180b(context, bundle, dVar);
        } else if (i == 2) {
            m3179b(context, bundle.getBoolean("with_extra_info", false), bundle, dVar);
        } else if (i == 3) {
            m3175c(context, bundle.getBoolean("with_extra_info", false), bundle, dVar);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m3184a(AbstractC13890d dVar, Context context, Bundle bundle, DialogInterface dialogInterface, int i) {
        if (dVar != null) {
            dVar.mo3169a(3);
        }
        m3175c(context, true, bundle, dVar);
    }

    /* renamed from: b */
    public static String m3178b(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Whoscall - ");
        sb.append(m3190a((int) R$string.aboutus_page_email));
        if (str != null) {
            str2 = "  " + str;
        } else {
            str2 = "";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: b */
    public static void m3180b(Context context, Bundle bundle, AbstractC13890d dVar) {
        DialogC14625g gVar = new DialogC14625g(context);
        gVar.setCanceledOnTouchOutside(true);
        gVar.setOnCancelListener(new DialogInterface$OnCancelListenerC13885a());
        String[] strArr = C13891a.m3145q() ? new String[]{C14206w4.m2225a((int) R$string.aboutus_option_advance), C14206w4.m2225a((int) R$string.aboutus_option_search), C14206w4.m2225a((int) R$string.aboutus_option_incallscreen), C14206w4.m2225a((int) R$string.aboutus_option_other), C14206w4.m2225a((int) R$string.aboutus_option_suggestion), C14206w4.m2225a((int) R$string.aboutus_option_infoerror)} : new String[]{C14206w4.m2225a((int) R$string.aboutus_option_advance), C14206w4.m2225a((int) R$string.aboutus_option_incallscreen), C14206w4.m2225a((int) R$string.aboutus_option_other), C14206w4.m2225a((int) R$string.aboutus_option_suggestion), C14206w4.m2225a((int) R$string.aboutus_option_infoerror)};
        int[] iArr = C13891a.m3145q() ? new int[]{0, 1, 2, 3, 4, 5} : new int[]{0, 2, 3, 4, 5};
        gVar.m971a(strArr);
        gVar.m974a(new DialogInterface$OnClickListenerC13886b(iArr, strArr, bundle, context, dVar, gVar));
        gVar.show();
    }

    /* renamed from: b */
    public static void m3179b(final Context context, boolean z, final Bundle bundle, final AbstractC13890d dVar) {
        DialogC14597a aVar = new DialogC14597a(context);
        aVar.m1045a(R$string.aboutus_option_advance_content_v2);
        aVar.m1038b(context.getString(R$string.aboutus_option_advance_confirm), new DialogInterface.OnClickListener() { // from class: j.a.w0.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C13884a4.m3184a(C13884a4.AbstractC13890d.this, context, bundle, dialogInterface, i);
            }
        });
        aVar.m1041a(context.getString(R$string.cancel), null);
        aVar.m1040a(false);
        aVar.show();
    }

    /* renamed from: b */
    public static void m3177b(ArrayList<Uri> arrayList, Context context, String str, boolean z, String str2) {
        String[] strArr = new String[1];
        if (C14017g4.m2831E()) {
            strArr[0] = "whoscallkr@gogolook.com";
        } else if (C14017g4.m2830F()) {
            strArr[0] = "support@gogolook.zendesk.com";
        } else {
            strArr[0] = "service@gogolook.com";
        }
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType("plain/text");
        intent.putExtra("android.intent.extra.EMAIL", strArr);
        StringBuffer stringBuffer = new StringBuffer(1024);
        if (z) {
            String d = C14137r4.m2374d();
            stringBuffer.append(TextUtils.isEmpty(d) ? m3190a((int) R$string.aboutus_option_infoerror_mail_reminder2) : m3189a(R$string.aboutus_option_infoerror_mail_reminder1, d));
        }
        stringBuffer.append("\n\n\n\n\n");
        stringBuffer.append(m3190a((int) R$string.mail_title));
        stringBuffer.append("\n");
        if (!C14217x3.m2160b(str2)) {
            stringBuffer.append(str2);
            stringBuffer.append("\n");
        }
        stringBuffer.append(m3172f());
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", stringBuffer.toString());
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList2 = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str3 = resolveInfo.activityInfo.packageName;
            if (str3.contains("mail") || str3.contains("com.google.android.gm")) {
                Intent intent2 = (Intent) intent.clone();
                intent2.setPackage(str3);
                arrayList2.add(intent2);
            }
        }
        if (arrayList2.size() == 0) {
            for (ResolveInfo resolveInfo2 : queryIntentActivities) {
                String str4 = resolveInfo2.activityInfo.packageName;
                Intent intent3 = (Intent) intent.clone();
                intent3.setPackage(str4);
                arrayList2.add(intent3);
            }
        }
        Intent createChooser = Intent.createChooser((Intent) arrayList2.remove(0), m3190a((int) R$string.aboutus_page_email));
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
        context.startActivity(createChooser);
    }

    /* renamed from: b */
    public static boolean m3181b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* renamed from: c */
    public static void m3175c(Context context, boolean z, Bundle bundle, AbstractC13890d dVar) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setMessage(m3190a((int) R$string.commit_waiting));
        progressDialog.setCancelable(false);
        progressDialog.show();
        new Thread(new RunnableC13889c(z, context, bundle, progressDialog, dVar)).start();
    }

    /* renamed from: c */
    public static boolean m3176c() {
        return new File("/system/app/Superuser.apk").exists();
    }

    /* renamed from: d */
    public static boolean m3174d() {
        for (String str : new String[]{"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m3173e() {
        Process process = null;
        try {
            Process exec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            process = exec;
            if (new BufferedReader(new InputStreamReader(exec.getInputStream())).readLine() != null) {
                if (exec == null) {
                    return true;
                }
                exec.destroy();
                return true;
            } else if (exec == null) {
                return false;
            } else {
                exec.destroy();
                return false;
            }
        } catch (Throwable th) {
            if (process == null) {
                return false;
            }
            process.destroy();
            return false;
        }
    }

    /* renamed from: f */
    public static String m3172f() {
        String str;
        StringBuilder sb = new StringBuilder();
        Context o = MyApplication.m29013o();
        sb.append("Device: ");
        sb.append(C14017g4.m2818f());
        sb.append("\nDisplay: " + C14017g4.m2822b());
        sb.append("\nWhoscall Version: ");
        sb.append(C14017g4.m2806r());
        sb.append("\nWhoscall VersionCode: ");
        sb.append(C14017g4.m2807q());
        List asList = Arrays.asList(C13915b3.m3056b("VersionCodeRecord", "").split(","));
        int size = asList.size() - 1;
        String str2 = "";
        while (true) {
            if (size < 0) {
                str = "";
                break;
            }
            if (!((String) asList.get(size)).equals("")) {
                if (!str2.equals("")) {
                    str = (String) asList.get(size);
                    break;
                }
                str2 = (String) asList.get(size);
            }
            size--;
        }
        sb.append("\nWhoscall Pre-version: ");
        sb.append(str);
        sb.append("\nAndroid API: ");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("\nDevice ID: ");
        sb.append(C14017g4.m2820d());
        sb.append("\nUser ID: ");
        sb.append(C14217x3.m2120o());
        sb.append("\nGmail Account: ");
        sb.append(C14092n3.m2584a("gmailAccount", ""));
        sb.append("\nFacebook Account: ");
        sb.append(C14092n3.m2584a("fbAccount", ""));
        String upperCase = C14017g4.m2810n().toUpperCase(Locale.US);
        sb.append("\nUser Country: ");
        sb.append(upperCase);
        String upperCase2 = C14017g4.m2808p().toUpperCase(Locale.US);
        String upperCase3 = C14017g4.m2813k().toUpperCase(Locale.US);
        String upperCase4 = C14017g4.m2809o().toUpperCase(Locale.US);
        if (!upperCase.equals(upperCase2)) {
            sb.append("\nSim Country: ");
            sb.append(upperCase2);
            sb.append("\nNetwork Country: ");
            sb.append(upperCase3);
            sb.append("\nLocal Country: ");
            sb.append(upperCase4);
        }
        sb.append("\nUser Operator : ");
        sb.append(C14017g4.m2811m());
        sb.append("\nis premium subscribed: ");
        sb.append(C14021h2.m2779g());
        sb.append("\nis Ad free subscribed: ");
        sb.append(AdUtils.m28800i());
        sb.append("\nis offline db subscribed: ");
        sb.append(C14063l4.m2695G());
        sb.append("\nis spam hammer subscribed: ");
        sb.append(C14073m.m2625c());
        sb.append("\nis Roaming: ");
        sb.append(C14108o4.m2487c(o));
        sb.append("\nis Rooted: ");
        sb.append(m3170h());
        sb.append("\nis Using InCallScreen: ");
        sb.append(CallUtils.m26527q());
        sb.append("\nis Device can use InCallScreen: ");
        sb.append(CallUtils.m26546d());
        sb.append("\nis Default Phone App set to Whoscall: ");
        sb.append(CallUtils.m26536h());
        sb.append("\nis Default SMS App set to Whoscall: ");
        sb.append(C12810o.m5236i());
        sb.append("\nis Default Caller ID App set to Whoscall: ");
        sb.append(CallUtils.m26528p());
        sb.append("\nis Can draw over other apps: ");
        sb.append(C13878a3.m3250a());
        sb.append("\nis Power save mode: ");
        sb.append(C13878a3.m3259C());
        sb.append("\nis Ignoring Battery Optimization: ");
        sb.append(C13878a3.m3261A());
        sb.append("\nis Background data restricted: ");
        sb.append(C13878a3.m3193y());
        sb.append("\nhas Notification access permission: ");
        sb.append(C13878a3.m3215e(o));
        sb.append("\nNetwork type: ");
        sb.append(C14217x3.m2148e());
        sb.append("\nDND mode: ");
        sb.append(C14188u2.m2277b(o));
        return sb.toString();
    }

    /* renamed from: g */
    public static String m3171g() {
        return MyApplication.m29013o().getCacheDir().toString() + File.separator + "csreport.png";
    }

    /* renamed from: h */
    public static boolean m3170h() {
        return m3181b() || m3176c() || m3174d() || m3173e();
    }
}
