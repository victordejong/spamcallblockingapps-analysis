package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.RemoteInput;
import gogolook.callgogolook2.messaging.datamodel.action.InsertNewMessageAction;
import gogolook.callgogolook2.messaging.datamodel.action.MarkAsSeenAction;
import gogolook.callgogolook2.messaging.datamodel.action.UpdateMessageNotificationAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14308w;
/* renamed from: j.a.c0.c.s */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/s.class */
public class C11558s {
    /* renamed from: a */
    public static String m9169a(Intent intent, String str) {
        Bundle resultsFromIntent;
        CharSequence charSequence;
        String stringExtra = intent.getStringExtra(str);
        return (stringExtra != null || (resultsFromIntent = RemoteInput.getResultsFromIntent(intent)) == null || (charSequence = resultsFromIntent.getCharSequence(str)) == null) ? stringExtra : charSequence.toString();
    }

    /* renamed from: a */
    public static void m9170a(@NonNull Context context, @NonNull Intent intent) {
        Bundle extras;
        if ("android.intent.action.RESPOND_VIA_MESSAGE".equals(intent.getAction()) && (extras = intent.getExtras()) != null) {
            String stringExtra = intent.getStringExtra("conversation_id");
            String stringExtra2 = intent.getStringExtra("self_id");
            boolean booleanExtra = intent.getBooleanExtra("requires_mms", false);
            String a = m9169a(intent, "android.intent.extra.TEXT");
            String a2 = m9169a(intent, "android.intent.extra.SUBJECT");
            int i = extras.getInt("subscription", -1);
            Uri data = intent.getData();
            String d = data != null ? C11834j.m8081d(data) : null;
            if ((!TextUtils.isEmpty(d) || !TextUtils.isEmpty(stringExtra)) && !TextUtils.isEmpty(a)) {
                if (TextUtils.isEmpty(stringExtra)) {
                    InsertNewMessageAction.m27709a(i, d, a, a2);
                    UpdateMessageNotificationAction.m27651b((String) null);
                } else {
                    InsertNewMessageAction.m27708a(booleanExtra ? MessageData.m27617a(stringExtra, stringExtra2, a, a2) : MessageData.m27618a(stringExtra, stringExtra2, a));
                    MarkAsSeenAction.m27696b(stringExtra);
                }
                if (!C14217x3.m2160b(stringExtra)) {
                    String c = C14308w.m1622c(stringExtra);
                    C14308w wVar = C14308w.f32062d;
                    wVar.m1624a(c, "type", 1);
                    wVar.m1625a(c, 0);
                }
            }
        }
    }
}
