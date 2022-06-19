package p1727n3.p1834m0.p1835c0.p1836p.p1838b;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
/* renamed from: n3.m0.c0.p.b.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/b.class */
public class C26712b implements AbstractC26682b {

    /* renamed from: d */
    public static final String f74782d = AbstractC26839p.m1295e("CommandHandler");

    /* renamed from: a */
    public final Context f74783a;

    /* renamed from: b */
    public final Map<String, AbstractC26682b> f74784b = new HashMap();

    /* renamed from: c */
    public final Object f74785c = new Object();

    public C26712b(Context context) {
        this.f74783a = context;
    }

    /* renamed from: a */
    public static Intent m1414a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: c */
    public static Intent m1413c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: d */
    public static Intent m1412d(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        synchronized (this.f74785c) {
            AbstractC26682b remove = this.f74784b.remove(str);
            if (remove != null) {
                remove.mo1376b(str, z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02e7  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1411e(android.content.Intent r10, int r11, p1727n3.p1834m0.p1835c0.p1836p.p1838b.C26715e r12) {
        /*
            Method dump skipped, instructions count: 1548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.p1836p.p1838b.C26712b.m1411e(android.content.Intent, int, n3.m0.c0.p.b.e):void");
    }
}
