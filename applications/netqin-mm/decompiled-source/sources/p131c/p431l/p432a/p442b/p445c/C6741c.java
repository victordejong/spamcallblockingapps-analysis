package p131c.p431l.p432a.p442b.p445c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
/* renamed from: c.l.a.b.c.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/c.class */
public class C6741c {
    /* renamed from: a */
    public static void m19914a(Context context, String str) {
        context.sendBroadcast(new Intent(str));
    }

    /* renamed from: a */
    public static void m19912a(String str, Activity activity) {
        Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + str));
        intent.addFlags(268435456);
        if (intent.resolveActivity(activity.getPackageManager()) != null) {
            activity.startActivity(intent);
        }
    }

    /* renamed from: a */
    public static boolean m19913a(BlackWhiteListModel blackWhiteListModel, int i, C6727b bVar) {
        boolean z = false;
        boolean z2 = false;
        int i2 = -1;
        if (1 == i) {
            if (bVar.m19937f(blackWhiteListModel.getAddress())) {
                i2 = bVar.m19963a(blackWhiteListModel.getAddress());
            }
            if (i2 > 0) {
                z2 = true;
            }
            return z2;
        }
        if (bVar.m19945d(blackWhiteListModel.getAddress())) {
            i2 = bVar.m19963a(blackWhiteListModel.getAddress());
        }
        if (i2 > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m19911b(BlackWhiteListModel blackWhiteListModel, int i, C6727b bVar) {
        return 1 == i ? bVar.m19937f(blackWhiteListModel.getAddress()) : bVar.m19945d(blackWhiteListModel.getAddress());
    }
}
