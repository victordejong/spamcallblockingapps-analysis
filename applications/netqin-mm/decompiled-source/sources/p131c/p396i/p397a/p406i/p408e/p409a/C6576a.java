package p131c.p396i.p397a.p406i.p408e.p409a;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import java.io.Serializable;
import p012b.p072q.p073a.C1134a;
import p131c.p396i.p397a.C6489a;
/* renamed from: c.i.a.i.e.a.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/e/a/a.class */
public class C6576a {
    /* renamed from: a */
    public static void m20460a(BroadcastReceiver broadcastReceiver) {
        C1134a.m34598a(C6489a.m20718b()).m34600a(broadcastReceiver);
    }

    /* renamed from: a */
    public static void m20459a(BroadcastReceiver broadcastReceiver, String... strArr) {
        C1134a a = C1134a.m34598a(C6489a.m20718b());
        IntentFilter intentFilter = new IntentFilter();
        for (String str : strArr) {
            intentFilter.addAction(str);
        }
        a.m34599a(broadcastReceiver, intentFilter);
    }

    /* renamed from: a */
    public static void m20458a(String str, Serializable serializable) {
        Intent intent = new Intent(str);
        intent.putExtra("content", serializable);
        C1134a.m34598a(C6489a.m20718b()).m34597a(intent);
    }
}
