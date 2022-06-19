package p193e.p194a.p1114o5;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.util.Iterator;
import java.util.List;
import p1727n3.p1734b.p1735a.g$a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.o5.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/r1.class */
public abstract class AbstractC19096r1 {

    /* renamed from: e.a.o5.r1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/r1$a.class */
    public static final class C19097a extends AbstractC19096r1 {

        /* renamed from: a */
        public final String f53312a;

        /* renamed from: b */
        public final String[] f53313b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19097a(String str, String... strArr) {
            super(null);
            l.e(str, "type");
            l.e(strArr, "values");
            this.f53312a = str;
            this.f53313b = strArr;
        }

        @Override // p193e.p194a.p1114o5.AbstractC19096r1
        /* renamed from: a */
        public void mo14117a(Context context) {
            l.e(context, AnalyticsConstants.CONTEXT);
            g$a g_a = new g$a(context);
            g_a.f70854a.f154d = this.f53312a;
            g_a.m3665d(this.f53313b, null);
            g_a.m3660i(2131887910, null);
            g_a.f70854a.f163m = false;
            g_a.m3652q();
        }
    }

    /* renamed from: e.a.o5.r1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/r1$b.class */
    public static final class C19098b extends AbstractC19096r1 {

        /* renamed from: a */
        public static final C19098b f53314a = new C19098b();

        public C19098b() {
            super(null);
        }

        @Override // p193e.p194a.p1114o5.AbstractC19096r1
        /* renamed from: a */
        public void mo14117a(Context context) {
            l.e(context, AnalyticsConstants.CONTEXT);
            try {
                context.startActivity(new Intent("android.settings.SHOW_REGULATORY_INFO"));
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    /* renamed from: e.a.o5.r1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/r1$c.class */
    public static final class C19099c extends AbstractC19096r1 {

        /* renamed from: a */
        public final String f53315a;

        /* renamed from: b */
        public final String f53316b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19099c(String str, String str2) {
            super(null);
            l.e(str, "code");
            l.e(str2, "rawInput");
            this.f53315a = str;
            this.f53316b = str2;
        }

        @Override // p193e.p194a.p1114o5.AbstractC19096r1
        /* renamed from: a */
        public void mo14117a(Context context) {
            Object obj;
            l.e(context, AnalyticsConstants.CONTEXT);
            try {
                context.sendBroadcast(new Intent("android.provider.Telephony.SECRET_CODE", Uri.parse("android_secret_code://" + this.f53315a)));
            } catch (SecurityException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                try {
                    Intent intent = new Intent("android.intent.action.DIAL");
                    intent.setData(Uri.parse("tel:" + this.f53316b));
                    int i = Build.VERSION.SDK_INT >= 24 ? 1048576 : 0;
                    List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, i);
                    l.d(queryIntentActivities, "context.packageManager.q…tActivities(intent, flag)");
                    Iterator<T> it = queryIntentActivities.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        ResolveInfo resolveInfo = (ResolveInfo) obj;
                        boolean z = true;
                        if (i == 0) {
                            z = (resolveInfo.activityInfo.applicationInfo.flags & 1) != 0;
                        }
                        if (z) {
                            break;
                        }
                    }
                    ResolveInfo resolveInfo2 = (ResolveInfo) obj;
                    if (resolveInfo2 == null) {
                        return;
                    }
                    ActivityInfo activityInfo = resolveInfo2.activityInfo;
                    intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                    context.startActivity(intent);
                } catch (Exception e2) {
                    AssertionUtil.reportThrowableButNeverCrash(e2);
                }
            }
        }
    }

    public AbstractC19096r1(f fVar) {
    }

    /* renamed from: a */
    public abstract void mo14117a(Context context);
}
