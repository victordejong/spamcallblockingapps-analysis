package p193e.p194a.p1275v.p1309p;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import s1.z.c.l;
/* renamed from: e.a.v.p.n */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/n.class */
public final class C20940n {

    /* renamed from: a */
    public static final C20940n f58889a = new C20940n();

    /* renamed from: c */
    public static /* synthetic */ Intent m10485c(C20940n c20940n, Context context, Contact contact, SourceType sourceType, boolean z, boolean z2, Boolean bool, String str, int i) {
        if ((i & 32) != 0) {
            bool = null;
        }
        if ((i & 64) != 0) {
            str = null;
        }
        return c20940n.m10487a(context, contact, sourceType, z, z2, bool, str);
    }

    /* renamed from: a */
    public final Intent m10487a(Context context, Contact contact, SourceType sourceType, boolean z, boolean z2, Boolean bool, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(sourceType, "source");
        Intent intent = new Intent(context, DetailsViewActivity.class);
        intent.putExtra("ARG_CONTACT", contact);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", z);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", z2);
        if (bool != null) {
            intent.putExtra("SHOULD_FORCE_SEARCH", bool.booleanValue());
        }
        if (str != null) {
            intent.putExtra("INCOMING_CALL_CONTEXT_ID", str);
        }
        return intent;
    }

    /* renamed from: b */
    public final Intent m10486b(Context context, String str, String str2, String str3, String str4, String str5, SourceType sourceType, boolean z, boolean z2, int i, Long l, Boolean bool, Boolean bool2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sourceType, "source");
        Intent intent = new Intent(context, DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", str);
        intent.putExtra("NAME", str2);
        intent.putExtra("NORMALIZED_NUMBER", str3);
        intent.putExtra("RAW_NUMBER", str4);
        intent.putExtra("COUNTRY_CODE", str5);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", z);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", z2);
        intent.putExtra("SEARCH_TYPE", i);
        if (l != null) {
            intent.putExtra("CONVERSATION_ID", l.longValue());
        }
        if (bool != null) {
            intent.putExtra("IS_HIDDEN_NUMBER", bool.booleanValue());
        }
        if (bool2 != null) {
            intent.putExtra("IS_BUSINESS_IM", bool2.booleanValue());
        }
        return intent;
    }

    /* renamed from: e */
    public final void m10483e(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intentWithExtras");
        context.startActivity(intent);
    }
}
