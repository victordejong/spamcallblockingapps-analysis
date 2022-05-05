package gogolook.callgogolook2.messaging.receiver;

import android.content.BroadcastReceiver;
import android.content.Intent;
import com.mopub.common.Constants;
import gogolook.callgogolook2.gson.CallAction;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lgogolook/callgogolook2/messaging/receiver/SmsActionsEntrypointReceiver;", "Landroid/content/BroadcastReceiver;", "()V", CallAction.DONE_TAG, "", "getNotificationType", "", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "onReceive", "", "context", "Landroid/content/Context;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/SmsActionsEntrypointReceiver.class */
public final class SmsActionsEntrypointReceiver extends BroadcastReceiver {

    /* renamed from: gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/SmsActionsEntrypointReceiver$a.class */
    public static final class C4660a {
        public C4660a() {
        }

        public /* synthetic */ C4660a(C15145g gVar) {
            this();
        }
    }

    static {
        new C4660a(null);
    }

    /* renamed from: a */
    public final int m27508a(Intent intent) {
        return intent.getBooleanExtra("extra.is.non.default.and.with.metaphor", false) ? 3 : 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0377  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r16, android.content.Intent r17) {
        /*
            Method dump skipped, instructions count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
