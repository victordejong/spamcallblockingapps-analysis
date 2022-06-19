package p193e.p194a.p1114o5;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import e.m.f.a.o;
import java.util.Map;
import java.util.regex.Pattern;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.d0;
import s1.z.c.l;
@Deprecated
/* renamed from: e.a.o5.e1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/e1.class */
public final class C19017e1 {

    /* renamed from: a */
    public static final ThreadLocal<o> f53142a = new C19018a();

    /* renamed from: b */
    public static String f53143b = "";

    /* renamed from: c */
    public static final Pattern f53144c = Pattern.compile("[+0-9.\\p{Space}()\\p{Pd}*#]*[0-9*#][+0-9.\\p{Space}()\\p{Pd}*#,;]*");

    /* renamed from: e.a.o5.e1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/e1$a.class */
    public class C19018a extends ThreadLocal<o> {
        @Override // java.lang.ThreadLocal
        public o get() {
            o oVar = (o) super.get();
            oVar.a = false;
            oVar.b = 0;
            oVar.c = false;
            oVar.d = 0L;
            oVar.e = false;
            oVar.f = "";
            oVar.g = false;
            oVar.h = false;
            oVar.i = false;
            oVar.j = 1;
            oVar.k = false;
            oVar.l = "";
            oVar.a();
            oVar.o = false;
            oVar.p = "";
            return oVar;
        }

        @Override // java.lang.ThreadLocal
        public o initialValue() {
            return new o();
        }
    }

    /* renamed from: a */
    public static String m14255a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (sb.length() == 0 && charAt == '+') {
                sb.append(charAt);
            } else if (charAt == ',' || charAt == ';' || charAt == '#') {
                sb.append(charAt);
            } else if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                int length2 = str.length();
                if (length2 != 0) {
                    char[] charArray = str.toCharArray();
                    for (int i2 = 0; i2 < length2; i2++) {
                        char c = charArray[i2];
                        Map<String, C8638c> map = C8638c.f26492d;
                        l.e(context, AnalyticsConstants.CONTEXT);
                        if (C8638c.f26495g == null) {
                            synchronized (d0.a(C8638c.class)) {
                                if (C8638c.f26495g == null) {
                                    C8638c.f26495g = C10480a.m26063I(null, 1);
                                }
                            }
                        }
                        C8638c c8638c = C8638c.f26495g;
                        l.c(c8638c);
                        charArray[i2] = c8638c.m28166d(c);
                    }
                    str = new String(charArray);
                }
                return m14255a(str, context);
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static boolean m14254b(String str) {
        return str != null && f53144c.matcher(str).matches();
    }

    /* renamed from: c */
    public static void m14253c(Context context, String str) {
        if (C8574c0.m28354e(str)) {
            Participant m35455d = Participant.m35455d(str, ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12296m(), "-1");
            Intent intent = new Intent(context, ConversationActivity.class);
            intent.putExtra("participants", new Participant[]{m35455d});
            intent.addFlags(335544320);
            context.startActivity(intent);
        }
    }
}
