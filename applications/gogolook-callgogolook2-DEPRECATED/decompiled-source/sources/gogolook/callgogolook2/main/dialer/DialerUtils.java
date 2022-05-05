package gogolook.callgogolook2.main.dialer;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import androidx.core.content.p004pm.ShortcutInfoCompat;
import androidx.core.content.p004pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u0014B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerUtils;", "", "()V", "ACTION_SHORTCUT_CALLBACK", "", "DYNAMIC_SHORTCUT_ID", "PIN_SHORTCUT_PREFIX", "createShortcutCallback", "Landroid/content/IntentSender;", "context", "Landroid/content/Context;", "createShortcutInfo", "Landroidx/core/content/pm/ShortcutInfoCompat;", "id", "initDynamicShortcut", "", "registerShortcutReceiver", "receiver", "Lgogolook/callgogolook2/main/dialer/DialerUtils$ShortcutReceiver;", "requestPinShortcut", "ShortcutReceiver", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerUtils.class */
public final class DialerUtils {

    /* renamed from: a */
    public static final DialerUtils f11135a = new DialerUtils();

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\u0004H&¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerUtils$ShortcutReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "onShortcutAdded", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerUtils$ShortcutReceiver.class */
    public static abstract class ShortcutReceiver extends BroadcastReceiver {
        /* renamed from: a */
        public abstract void mo26075a();

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C15149k.m384a((Object) "whoscall_shortcut_callback", (Object) (intent != null ? intent.getAction() : null))) {
                mo26075a();
            }
        }
    }

    /* renamed from: a */
    public static final void m27820a(Context context, ShortcutReceiver shortcutReceiver) {
        C15149k.m377b(context, "context");
        C15149k.m377b(shortcutReceiver, "receiver");
        context.registerReceiver(shortcutReceiver, new IntentFilter("whoscall_shortcut_callback"));
    }

    /* renamed from: b */
    public static final void m27818b(Context context) {
        Object obj;
        C15149k.m377b(context, "context");
        List<ShortcutInfoCompat> dynamicShortcuts = ShortcutManagerCompat.getDynamicShortcuts(context);
        C15149k.m383a((Object) dynamicShortcuts, "ShortcutManagerCompat.getDynamicShortcuts(context)");
        Iterator<T> it = dynamicShortcuts.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) obj;
            C15149k.m383a((Object) shortcutInfoCompat, "it");
            if (C15149k.m384a((Object) shortcutInfoCompat.getId(), (Object) "whoscall_dialer_shortcut")) {
                break;
            }
        }
        if (((ShortcutInfoCompat) obj) == null) {
            ShortcutManagerCompat.addDynamicShortcuts(context, Collections.singletonList(f11135a.m27819a(context, "whoscall_dialer_shortcut")));
        }
    }

    /* renamed from: c */
    public static final void m27817c(Context context) {
        C15149k.m377b(context, "context");
        if (ShortcutManagerCompat.isRequestPinShortcutSupported(context)) {
            DialerUtils dialerUtils = f11135a;
            ShortcutManagerCompat.requestPinShortcut(context, dialerUtils.m27819a(context, "dialer-" + System.currentTimeMillis()), f11135a.m27821a(context));
        }
    }

    /* renamed from: a */
    public final IntentSender m27821a(Context context) {
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent("whoscall_shortcut_callback").setPackage(context.getPackageName()), 134217728);
        C15149k.m383a((Object) broadcast, "PendingIntent\n          …tent.FLAG_UPDATE_CURRENT)");
        IntentSender intentSender = broadcast.getIntentSender();
        C15149k.m383a((Object) intentSender, "PendingIntent\n          …            .intentSender");
        return intentSender;
    }

    /* renamed from: a */
    public final ShortcutInfoCompat m27819a(Context context, String str) {
        Intent intent = new Intent(context, DialerActivity.class);
        intent.setAction("android.intent.action.DIAL");
        intent.addFlags(335544320);
        intent.putExtra("is_from_dialer_shortcut", true);
        ShortcutInfoCompat build = new ShortcutInfoCompat.Builder(context, str).setShortLabel(context.getString(R$string.whoscall_shortcut_name)).setLongLabel(context.getString(R$string.whoscall_shortcut_name)).setIcon(IconCompat.createWithResource(context, R$drawable.icon_dialer_shortcut)).setIntent(intent).build();
        C15149k.m383a((Object) build, "ShortcutInfoCompat.Build…\n                .build()");
        return build;
    }
}
