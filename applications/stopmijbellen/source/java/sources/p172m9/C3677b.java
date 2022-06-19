package p172m9;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.impl.AdwHomeBadger;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import me.leolin.shortcutbadger.impl.DefaultBadger;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import me.leolin.shortcutbadger.impl.SonyHomeBadger;
import p183n9.C3796a;
import p183n9.C3797b;
import p183n9.C3798c;
import p183n9.C3799d;
import p183n9.C3800e;
import p183n9.C3802g;
import p183n9.C3803h;
import p183n9.C3804i;
/* renamed from: m9.b */
/* loaded from: classes2-dex2jar.jar:m9/b.class */
public final class C3677b {

    /* renamed from: a */
    public static final List<Class<? extends AbstractC3676a>> f12045a;

    /* renamed from: b */
    public static AbstractC3676a f12046b;

    /* renamed from: c */
    public static ComponentName f12047c;

    static {
        LinkedList linkedList = new LinkedList();
        f12045a = linkedList;
        linkedList.add(AdwHomeBadger.class);
        linkedList.add(ApexHomeBadger.class);
        linkedList.add(DefaultBadger.class);
        linkedList.add(NewHtcHomeBadger.class);
        linkedList.add(NovaHomeBadger.class);
        linkedList.add(SonyHomeBadger.class);
        linkedList.add(C3796a.class);
        linkedList.add(C3798c.class);
        linkedList.add(C3799d.class);
        linkedList.add(C3800e.class);
        linkedList.add(C3804i.class);
        linkedList.add(C3802g.class);
        linkedList.add(C3803h.class);
        linkedList.add(C3797b.class);
    }

    /* renamed from: a */
    public static void m1892a(Context context, int i) throws ShortcutBadgeException {
        boolean z;
        if (f12046b == null) {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                context.getPackageName();
                z = false;
            } else {
                f12047c = launchIntentForPackage.getComponent();
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
                    String str = resolveInfo.activityInfo.packageName;
                    Iterator<Class<? extends AbstractC3676a>> it2 = f12045a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        AbstractC3676a abstractC3676a = null;
                        try {
                            abstractC3676a = it2.next().newInstance();
                        } catch (Exception e) {
                        }
                        if (abstractC3676a != null && abstractC3676a.mo1786a().contains(str)) {
                            f12046b = abstractC3676a;
                            break;
                        }
                    }
                    if (f12046b != null) {
                        break;
                    }
                }
                if (f12046b == null) {
                    String str2 = Build.MANUFACTURER;
                    if (str2.equalsIgnoreCase("ZUK")) {
                        f12046b = new C3804i();
                    } else if (str2.equalsIgnoreCase("OPPO")) {
                        f12046b = new C3799d();
                    } else if (str2.equalsIgnoreCase("VIVO")) {
                        f12046b = new C3802g();
                    } else if (str2.equalsIgnoreCase("ZTE")) {
                        f12046b = new C3803h();
                    } else {
                        f12046b = new DefaultBadger();
                    }
                }
                z = true;
            }
            if (!z) {
                throw new ShortcutBadgeException("No default launcher available");
            }
        }
        try {
            f12046b.mo1785b(context, f12047c, i);
        } catch (Exception e2) {
            throw new ShortcutBadgeException("Unable to execute badge", e2);
        }
    }
}
