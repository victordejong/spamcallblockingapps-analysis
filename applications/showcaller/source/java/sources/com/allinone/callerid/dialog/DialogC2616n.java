package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.ShareAppInfo;
import com.allinone.callerid.p136b.C2241u;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.dialog.n */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/n.class */
public class DialogC2616n extends Dialog {

    /* renamed from: d */
    private Context f9085d;

    /* renamed from: e */
    private GridView f9086e;

    /* renamed from: f */
    private List<ShareAppInfo> f9087f;

    /* renamed from: g */
    private String f9088g;

    /* renamed from: h */
    private String f9089h;

    /* renamed from: i */
    private String f9090i;

    /* renamed from: j */
    private int f9091j;

    /* renamed from: k */
    private String f9092k;

    /* renamed from: com.allinone.callerid.dialog.n$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/n$a.class */
    class C2617a implements AdapterView.OnItemClickListener {
        C2617a() {
            DialogC2616n.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            try {
                C3810q.m24071b().m24070c("custom_share_total_click");
                String appPkgName = ((ShareAppInfo) DialogC2616n.this.f9087f.get(i)).getAppPkgName();
                boolean z = true;
                switch (appPkgName.hashCode()) {
                    case -1547699361:
                        if (appPkgName.equals("com.whatsapp")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1430093937:
                        if (appPkgName.equals("com.google.android.apps.messaging")) {
                            z = true;
                            break;
                        }
                        break;
                    case -695601689:
                        if (appPkgName.equals("com.android.mms")) {
                            z = true;
                            break;
                        }
                        break;
                    case 10619783:
                        if (appPkgName.equals("com.twitter.android")) {
                            z = true;
                            break;
                        }
                        break;
                    case 714499313:
                        if (appPkgName.equals("com.facebook.katana")) {
                            z = false;
                            break;
                        }
                        break;
                    case 908140028:
                        if (appPkgName.equals("com.facebook.orca")) {
                            z = true;
                            break;
                        }
                        break;
                }
                if (!z) {
                    C3810q.m24071b().m24070c("facebook_share_click");
                } else if (z) {
                    C3810q.m24071b().m24070c("twitter_share_click");
                } else if (z) {
                    C3810q.m24071b().m24070c("whatsapp_share_click");
                } else if (z) {
                    C3810q.m24071b().m24070c("facebook_messenger_share_click");
                } else if (z) {
                    C3810q.m24071b().m24070c("sms_share_click");
                } else if (z) {
                    C3810q.m24071b().m24070c("sms_share_click");
                }
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setComponent(new ComponentName(((ShareAppInfo) DialogC2616n.this.f9087f.get(i)).getAppPkgName(), ((ShareAppInfo) DialogC2616n.this.f9087f.get(i)).getAppLauncherClassName()));
                int i2 = DialogC2616n.this.f9091j;
                if (i2 == 0) {
                    intent.setType("text/plain");
                } else if (i2 == 1) {
                    intent.setType("image/*");
                    if (Build.VERSION.SDK_INT >= 24) {
                        intent.putExtra("android.intent.extra.STREAM", FileProvider.m33359e(DialogC2616n.this.getContext(), C3767h1.m24275M(DialogC2616n.this.f9085d), new File(DialogC2616n.this.f9092k)));
                    } else {
                        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(DialogC2616n.this.f9092k)));
                    }
                } else if (i2 == 2) {
                    intent.setType("audio/*");
                    if (Build.VERSION.SDK_INT >= 24) {
                        intent.putExtra("android.intent.extra.STREAM", FileProvider.m33359e(DialogC2616n.this.getContext(), C3767h1.m24275M(DialogC2616n.this.f9085d), new File(DialogC2616n.this.f9092k)));
                    } else {
                        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(DialogC2616n.this.f9092k)));
                    }
                }
                intent.putExtra("android.intent.extra.SUBJECT", DialogC2616n.this.f9089h);
                intent.putExtra("android.intent.extra.TEXT", DialogC2616n.this.f9090i);
                intent.setFlags(268435456);
                DialogC2616n.this.f9085d.startActivity(intent);
                DialogC2616n.this.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public DialogC2616n(Context context, int i, String str, String str2, String str3, int i2, String str4) {
        super(context, i);
        this.f9085d = context;
        this.f9088g = str;
        this.f9089h = str2;
        this.f9090i = str3;
        this.f9091j = i2;
        this.f9092k = str4;
    }

    /* renamed from: g */
    private void m27029g() {
        try {
            this.f9087f = new ArrayList();
            PackageManager packageManager = this.f9085d.getPackageManager();
            List<ResolveInfo> m27028h = m27028h(this.f9085d);
            if (m27028h != null) {
                for (ResolveInfo resolveInfo : m27028h) {
                    ShareAppInfo shareAppInfo = new ShareAppInfo();
                    if (!resolveInfo.activityInfo.packageName.equals("com.allinone.callerid")) {
                        shareAppInfo.setAppPkgName(resolveInfo.activityInfo.packageName);
                        shareAppInfo.setAppLauncherClassName(resolveInfo.activityInfo.name);
                        shareAppInfo.setAppName(resolveInfo.loadLabel(packageManager).toString());
                        shareAppInfo.setAppIcon(resolveInfo.loadIcon(packageManager));
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("tony", "packageName:" + resolveInfo.activityInfo.packageName);
                        }
                        String str = resolveInfo.activityInfo.packageName;
                        boolean z = true;
                        switch (str.hashCode()) {
                            case -1547699361:
                                if (str.equals("com.whatsapp")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case -1430093937:
                                if (str.equals("com.google.android.apps.messaging")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case -695601689:
                                if (str.equals("com.android.mms")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 10619783:
                                if (str.equals("com.twitter.android")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 714499313:
                                if (str.equals("com.facebook.katana")) {
                                    z = false;
                                    break;
                                }
                                break;
                            case 908140028:
                                if (str.equals("com.facebook.orca")) {
                                    z = true;
                                    break;
                                }
                                break;
                        }
                        if (!z) {
                            this.f9087f.add(0, shareAppInfo);
                        } else if (z) {
                            this.f9087f.add(0, shareAppInfo);
                        } else if (z) {
                            this.f9087f.add(0, shareAppInfo);
                        } else if (z) {
                            this.f9087f.add(0, shareAppInfo);
                        } else if (z) {
                            this.f9087f.add(0, shareAppInfo);
                        } else if (!z) {
                            this.f9087f.add(shareAppInfo);
                        } else {
                            this.f9087f.add(0, shareAppInfo);
                        }
                    }
                }
            }
            this.f9086e.setAdapter((ListAdapter) new C2241u(this.f9085d, this.f9087f));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    private List<ResolveInfo> m27028h(Context context) {
        new ArrayList();
        Intent intent = new Intent("android.intent.action.SEND", (Uri) null);
        intent.addCategory("android.intent.category.DEFAULT");
        int i = this.f9091j;
        if (i == 0) {
            intent.setType("text/plain");
        } else if (i == 1) {
            intent.setType("image/*");
        } else if (i == 2) {
            intent.setType("audio/*");
        }
        return context.getPackageManager().queryIntentActivities(intent, 0);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.sharelayout);
        this.f9086e = (GridView) findViewById(R$id.f7398lv);
        TextView textView = (TextView) findViewById(R$id.tv_share_title);
        textView.setText(this.f9088g);
        textView.setTypeface(C3739f1.m24359b());
        this.f9086e.setOnItemClickListener(new C2617a());
        m27029g();
    }
}
