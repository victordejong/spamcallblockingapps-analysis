package p131c.p431l.p432a.p442b.p444b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.netqin.p525cm.antiharass.p527ui.activity.MainActivity;
import p012b.p042i.p043h.C0857h;
import p131c.p431l.p432a.p468n.C6858p;
import p131c.p431l.p432a.p468n.p469s.p471b.C6863a;
/* renamed from: c.l.a.b.b.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/b/a.class */
public class C6725a {
    /* renamed from: a */
    public static Intent m19981a(Context context, Intent intent, int i) {
        intent.setClass(context, MainActivity.class);
        intent.putExtra("tab_default", i);
        intent.putExtra("block_notification", true);
        return intent;
    }

    /* renamed from: a */
    public static void m19982a(Context context, int i, boolean z, String str, int i2) {
        String str2;
        String str3;
        Intent intent = new Intent();
        if (z) {
            str2 = context.getString(2131558468, C6858p.m19551a(str));
            str3 = context.getString(2131558466);
        } else {
            str3 = context.getString(2131558469, "" + i);
            str2 = context.getString(2131558467);
        }
        m19981a(context, intent, 0);
        intent.addFlags(536870912);
        PendingIntent activity = PendingIntent.getActivity(context, 77, intent, 268435456);
        C0857h.C0861d dVar = new C0857h.C0861d(context, C6863a.f21054a);
        dVar.m35748a(activity);
        dVar.m35737b(str3);
        dVar.m35744a((CharSequence) str2);
        dVar.m35733c(str3 + str2);
        dVar.m35749a(System.currentTimeMillis());
        dVar.m35734c(2131165510);
        C6863a.m19522a(dVar.m35753a(), context, intent, str3, str2, activity, 16, i2);
    }
}
