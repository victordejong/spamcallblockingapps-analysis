package p081h.p160h.p174c;

import android.app.AlertDialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.Parcelable;
import android.os.Process;
import android.widget.ArrayAdapter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p081h.p160h.p174c.p175e.DialogC6320a;
/* renamed from: h.h.c.a */
/* loaded from: classes2-dex2jar.jar:h/h/c/a.class */
public class C6301a {

    /* renamed from: a */
    public Context f15607a;

    /* renamed from: b */
    public SharedPreferences f15608b;

    /* renamed from: c */
    public boolean f15609c = false;

    /* renamed from: d */
    public boolean f15610d = false;

    /* renamed from: h.h.c.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/c/a$a.class */
    public class DialogInterface$OnClickListenerC6302a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ArrayAdapter f15611a;

        /* renamed from: b */
        public final /* synthetic */ Context f15612b;

        public DialogInterface$OnClickListenerC6302a(ArrayAdapter arrayAdapter, Context context) {
            this.f15611a = arrayAdapter;
            this.f15612b = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C6301a.this.m23333b(this.f15612b, (String) this.f15611a.getItem(i));
            dialogInterface.dismiss();
        }
    }

    /* renamed from: h.h.c.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/c/a$b.class */
    public class C6303b implements DialogC6320a.AbstractC6326f {

        /* renamed from: a */
        public final /* synthetic */ Context f15614a;

        /* renamed from: b */
        public final /* synthetic */ String f15615b;

        public C6303b(Context context, String str) {
            this.f15614a = context;
            this.f15615b = str;
        }

        @Override // p081h.p160h.p174c.p175e.DialogC6320a.AbstractC6326f
        /* renamed from: a */
        public void mo23289a(ArrayList<ArrayList<String>> arrayList) {
            C6301a.this.m23338a(this.f15614a, this.f15615b);
        }
    }

    /* renamed from: h.h.c.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/c/a$c.class */
    public class AsyncTaskC6304c extends AsyncTask<String, Void, File> {

        /* renamed from: a */
        public ProgressDialog f15617a;

        /* renamed from: b */
        public final /* synthetic */ Context f15618b;

        public AsyncTaskC6304c(Context context) {
            this.f15618b = context;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0233 -> B:43:0x0211). Please submit an issue!!! */
        /* renamed from: a */
        public File doInBackground(String... strArr) {
            File file;
            String[] columnNames;
            Uri parse = Uri.parse(strArr[0]);
            Cursor query = this.f15618b.getContentResolver().query(parse, null, null, null, null);
            if (query != null) {
                try {
                    query.close();
                } catch (Exception e) {
                }
            }
            query = this.f15618b.getContentResolver().query(parse, null, null, null, "date desc");
            String str = "";
            if (query != null) {
                String str2 = "";
                for (int i = 0; i < query.getColumnNames().length; i++) {
                    str2 = str2 + columnNames[i] + ",";
                }
                String str3 = str2 + "\n";
                for (int i2 = 0; i2 < query.getCount() && i2 < 300; i2++) {
                    query.moveToPosition(i2);
                    for (int i3 = 0; i3 < query.getColumnCount(); i3++) {
                        str3 = str3 + query.getString(i3) + ",";
                    }
                    str3 = str3 + "\n";
                }
                query.close();
                str = str3;
            }
            if (Environment.getExternalStorageState().equals("mounted")) {
                try {
                    file = new File(this.f15618b.getExternalCacheDir().getAbsolutePath(), "/db_" + Build.MODEL + "_" + Build.MANUFACTURER + ".csv");
                } catch (Exception e2) {
                    file = new File(this.f15618b.getCacheDir().getAbsolutePath(), "/db_" + Build.MODEL + "_" + Build.MANUFACTURER + ".csv");
                }
            } else {
                file = new File(this.f15618b.getCacheDir().getAbsolutePath(), "/db_" + Build.MODEL + "_" + Build.MANUFACTURER + ".csv");
            }
            if (file.exists()) {
                file.delete();
            }
            try {
                file.createNewFile();
            } catch (IOException e3) {
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file.getAbsolutePath());
                fileOutputStream.write(str.getBytes());
                fileOutputStream.close();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            return file;
        }

        /* renamed from: a */
        public void onPostExecute(File file) {
            this.f15617a.dismiss();
            Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.EMAIL", C6311c.f15643b);
            intent.putExtra("android.intent.extra.SUBJECT", "[CallLog Report][" + ((Object) this.f15618b.getApplicationInfo().loadLabel(this.f15618b.getPackageManager())) + "][" + Build.MODEL + " - " + Build.MANUFACTURER + "]");
            intent.putExtra("android.intent.extra.TEXT", C6301a.m23329d(C6301a.this.f15607a));
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            StringBuilder sb = new StringBuilder();
            sb.append("file://");
            sb.append(file.getAbsolutePath());
            arrayList.add(Uri.parse(sb.toString()));
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            intent.setFlags(268435456);
            C6301a.this.f15607a.startActivity(intent);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            this.f15617a = new ProgressDialog(this.f15618b);
            this.f15617a.setMessage("Exporting...");
            this.f15617a.show();
        }
    }

    /* renamed from: d */
    public static String m23329d(Context context) {
        return "Device: " + Build.MODEL + "\nDisplay: " + Build.DISPLAY + "\nVersion: " + m23328e(context) + "\nAndroid API: " + Build.VERSION.SDK_INT;
    }

    /* renamed from: e */
    public static String m23328e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* renamed from: a */
    public void m23339a() {
        if (!this.f15610d) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public void mo3928a(Context context) {
        NotificationManager notificationManager;
        this.f15607a = context;
        this.f15608b = context.getSharedPreferences("share_pref", 0);
        this.f15610d = true;
        this.f15609c = this.f15608b.getBoolean("DevelopMode", true ^ C6311c.f15642a);
        if (Build.VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) this.f15607a.getSystemService("notification")) != null) {
            if (this.f15609c) {
                NotificationChannel notificationChannel = new NotificationChannel("develop_channel", "Develop Channel", 4);
                notificationChannel.setDescription("Notification channels for develop tools.");
                notificationChannel.setShowBadge(false);
                notificationManager.createNotificationChannel(notificationChannel);
                return;
            }
            notificationManager.deleteNotificationChannel("develop_channel");
        }
    }

    /* renamed from: a */
    public final void m23338a(Context context, String str) {
        new AsyncTaskC6304c(context).execute(str);
    }

    /* renamed from: a */
    public void m23336a(boolean z) {
        m23339a();
        this.f15609c = z;
        this.f15608b.edit().putBoolean("DevelopMode", this.f15609c).commit();
    }

    /* renamed from: b */
    public void m23334b(Context context) {
        m23339a();
        List<String> b = C6311c.m23312b();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367058);
        for (int i = 0; i < b.size(); i++) {
            arrayAdapter.add(b.get(i));
        }
        builder.setAdapter(arrayAdapter, new DialogInterface$OnClickListenerC6302a(arrayAdapter, context));
        builder.create().show();
    }

    /* renamed from: b */
    public final void m23333b(Context context, String str) {
        DialogC6320a aVar = new DialogC6320a(context);
        aVar.m23299a(str);
        aVar.m23302a(new C6303b(context, str));
        aVar.show();
    }

    /* renamed from: b */
    public boolean m23335b() {
        m23339a();
        return this.f15609c;
    }

    /* renamed from: c */
    public void m23331c() {
        m23339a();
        Process.killProcess(Process.myPid());
    }
}
