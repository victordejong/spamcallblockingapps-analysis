package com.callerid.block.util;

import android.content.Context;
import com.callerid.block.p040h.p041a.p042b.C0962a;
/* renamed from: com.callerid.block.util.j0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/j0.class */
public class C1185j0 {
    /* renamed from: b */
    public static void m9820b(Context context, int i) {
        C0962a.m10447a(new a(context, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m9819c(int i) {
        String str;
        C1186k kVar;
        if (i == 4) {
            C1227w.m9527a("testrecommend", "未接挂断----->4");
            kVar = C1186k.m9816c();
            str = C1214s0.f5069f;
        } else if (i == 5) {
            C1227w.m9527a("testrecommend", "来电已接后的挂断----->5");
            kVar = C1186k.m9816c();
            str = C1214s0.f5067d;
        } else if (i == 6) {
            C1227w.m9527a("testrecommend", "去电挂断---->6");
            kVar = C1186k.m9816c();
            str = C1214s0.f5068e;
        } else {
            return;
        }
        kVar.m9812g(str);
    }
}
