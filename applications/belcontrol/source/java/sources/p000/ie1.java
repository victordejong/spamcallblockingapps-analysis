package p000;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import android.widget.Toast;
import com.kedlin.cca.core.CCAService;
import com.kedlin.cca.core.CallControlFileProvider;
import java.io.File;
import java.util.ArrayList;
import p000.fa1;
/* renamed from: ie1 */
/* loaded from: classes3-dex2jar.jar:ie1.class */
public class ie1 {

    /* renamed from: a */
    public static final String f6772a = "ie1";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.app.Application] */
    /* renamed from: a */
    public static void m1585a(Activity activity, String str, String str2) {
        String str3;
        Intent intent;
        try {
            if (!TextUtils.isEmpty(str)) {
                Intent intent2 = new Intent("android.intent.action.INSERT_OR_EDIT");
                intent2.setType("vnd.android.cursor.item/contact");
                intent2.putExtra("phone", str);
                intent = intent2;
            } else {
                intent = new Intent("android.intent.action.INSERT");
                intent.setType("vnd.android.cursor.dir/contact");
            }
            if (!TextUtils.isEmpty(str2)) {
                intent.putExtra("name", str2);
            }
            intent.putExtra("finishActivityOnSaveCompleted", true);
            if (activity != null) {
                activity.startActivity(intent);
                return;
            }
            intent.addFlags(268435456);
            fa1.m1840j().getBaseContext().startActivity(intent);
        } catch (Exception e) {
            if (activity == null) {
                activity = fa1.m1840j();
                str3 = fa1.m1840j().getString(2131821308);
            } else {
                str3 = activity.getString(2131821308);
            }
            Toast.makeText(activity, str3, 0).show();
            j91.m1495u(e);
        }
    }

    /* renamed from: b */
    public static void m1584b(Activity activity, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.EDIT");
            intent.setDataAndType(uri, "vnd.android.cursor.item/contact");
            intent.putExtra("finishActivityOnSaveCompleted", true);
            activity.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(activity, activity.getString(2131821300), 0).show();
            j91.m1495u(e);
        }
    }

    /* renamed from: c */
    public static void m1583c(Activity activity, String str, String str2, Uri uri) {
        m1582d(activity, null, str, str2, uri);
    }

    /* renamed from: d */
    public static void m1582d(Activity activity, String str, String str2, String str3, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        if (!TextUtils.isEmpty(str)) {
            intent.setData(Uri.fromParts("mailto", str, null));
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
        }
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str3);
        if (uri != null) {
            fa1.m1839k();
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.setType("message/rfc822");
        activity.startActivity(Intent.createChooser(intent, ""));
    }

    /* renamed from: e */
    public static void m1581e(Activity activity, String str, String str2, String str3, String[] strArr, String[] strArr2) {
        String str4;
        String str5;
        String str6;
        File[] listFiles;
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        if (!TextUtils.isEmpty(str)) {
            intent.setData(Uri.fromParts("mailto", str, null));
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
        }
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            String str7 = str3;
            int i = 0;
            while (true) {
                str4 = str7;
                if (i >= length) {
                    break;
                }
                String str8 = strArr[i];
                File[] listFiles2 = new File(String.valueOf(fa1.m1840j().getFilesDir() + "/" + str8)).listFiles();
                if (listFiles2 == null || listFiles2.length <= 0) {
                    int i2 = length;
                    File file = new File(String.valueOf(activity.getExternalFilesDir(null) + "/" + str8));
                    str5 = str7;
                    length = i2;
                    if (file.exists()) {
                        str5 = str7;
                        length = i2;
                        if (file.length() > 0) {
                            str5 = str7 + file.getName() + "<EOP>" + ka1.m1416h(file) + "<EOB>";
                            length = i2;
                        }
                    }
                } else {
                    int length2 = listFiles2.length;
                    int i3 = 0;
                    while (i3 < length2) {
                        File file2 = listFiles2[i3];
                        if (file2 == null || !file2.isDirectory()) {
                            int i4 = length;
                            str6 = str7;
                            length = i4;
                            if (file2.exists()) {
                                str6 = str7;
                                length = i4;
                                if (file2.length() > 0) {
                                    str6 = str7 + file2.getName() + "<EOP>" + ka1.m1416h(file2) + "<EOB>";
                                    length = i4;
                                }
                            }
                        } else {
                            for (File file3 : new File(file2.getPath()).listFiles()) {
                                if (file3.exists() && file3.length() > 0) {
                                    str7 = str7 + file3.getName() + "<EOP>" + ka1.m1416h(file3) + "<EOB>";
                                }
                            }
                            str6 = str7;
                        }
                        i3++;
                        str7 = str6;
                    }
                    str5 = str7;
                }
                i++;
                str7 = str5;
            }
        } else {
            str4 = str3;
        }
        intent.putExtra("android.intent.extra.TEXT", str4);
        if (strArr2 != null && strArr2.length > 0) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (String str9 : strArr2) {
                File m4402i = CallControlFileProvider.m4402i(str9);
                if (m4402i != null && m4402i.exists() && m4402i.length() > 0) {
                    arrayList.add(CallControlFileProvider.m4403h(m4402i));
                }
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        }
        intent.setType("message/rfc822");
        activity.startActivity(Intent.createChooser(intent, ""));
    }

    /* renamed from: f */
    public static boolean m1580f() {
        try {
            fa1.m1840j().getPackageManager().getApplicationInfo("com.android.vending", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: g */
    public static void m1579g(Context context, i91 i91Var) {
        try {
            Intent intent = new Intent(context.getApplicationContext(), CCAService.class);
            intent.addCategory(CCAService.f3664l);
            fa1.m1851O(context, intent);
            Intent intent2 = new Intent("android.intent.action.CALL");
            StringBuilder sb = new StringBuilder();
            sb.append("tel:");
            sb.append(Uri.encode(i91Var.m1594t() ? i91Var.toString() : i91Var.m1605i()));
            intent2.setData(Uri.parse(sb.toString()));
            intent2.putExtra("finishActivityOnSaveCompleted", true);
            if (!(context instanceof Activity)) {
                intent2.addFlags(268435456);
            }
            context.startActivity(intent2);
        } catch (Exception e) {
            Toast.makeText(context, context.getString(2131821296), 0).show();
            j91.m1504l(f6772a, "", e);
        }
    }

    /* renamed from: h */
    public static void m1578h(Context context, String str) {
        m1579g(context, fa1.C1420e.m1800o(str));
    }

    /* renamed from: i */
    public static void m1577i(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.putExtra("finishActivityOnSaveCompleted", true);
            if (activity == null) {
                fa1.m1840j().startActivity(intent);
            } else {
                activity.startActivity(intent);
            }
        } catch (Exception e) {
            if (activity != null) {
                Toast.makeText(activity, activity.getString(2131821300), 0).show();
            }
            j91.m1504l(f6772a, "", e);
        }
    }

    /* renamed from: j */
    public static void m1576j(Activity activity) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", activity.getString(2131822190));
        intent.putExtra("android.intent.extra.TEXT", activity.getString(2131822189));
        activity.startActivity(Intent.createChooser(intent, activity.getString(2131822320)));
    }

    /* renamed from: k */
    public static void m1575k(Context context, Uri uri) {
        if (context == null || uri == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.putExtra("finishActivityOnSaveCompleted", true);
        context.startActivity(intent);
    }
}
