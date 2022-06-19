package p193e.p194a.p1053m0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.d0.j;
import s1.u.i;
import s1.u.z;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.m0.p0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/p0.class */
public final class C18118p0 implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final Context f51034a;

    /* renamed from: e.a.m0.p0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/p0$a.class */
    public static final class C18119a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C18119a f51035b = new C18119a();

        public C18119a() {
            super(1);
        }

        /* renamed from: d */
        public Object m15480d(Object obj) {
            s1.z.c.l.e((String) obj, "it");
            return "?";
        }
    }

    public C18118p0(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f51034a = context;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        s1.z.c.l.e(abstractC8448a, "provider");
        s1.z.c.l.e(c8456a, "helper");
        s1.z.c.l.e(uri, "uri");
        List<String> queryParameters = uri.getQueryParameters("number");
        if (queryParameters == null || queryParameters.isEmpty()) {
            Cursor query = abstractC8448a.m28528m().query("msg_participants_with_contact_info", strArr, str, strArr2, null, null, str2);
            if (query != null) {
                query.setNotificationUri(this.f51034a.getContentResolver(), c8456a.f26174j);
            }
            return query;
        }
        String O = i.O(queryParameters, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C18119a.f51035b, 31);
        StringBuilder sb = new StringBuilder();
        String format = String.format("\n    SELECT\n        _id AS _id,\n        type AS type,\n        raw_destination AS raw_destination,\n        national_destination AS national_destination,\n        normalized_destination AS normalized_destination,\n        country_code AS country_code,\n        aggregated_contact_id AS aggregated_contact_id,\n        tc_id AS tc_id,\n        filter_action AS filter_action,\n        is_top_spammer AS is_top_spammer,\n        top_spam_score AS top_spam_score,\n        name AS name,\n        image_url AS image_url,\n        source AS source,\n        badges AS badges,\n        company_name AS company_name,\n        phonebook_id AS phonebook_id,\n        spam_score AS spam_score,\n        spam_type AS spam_type,\n        tc_im_peer_id AS tc_im_peer_id,\n        search_time AS search_time,\n        premium_level AS premium_level,\n        cache_control AS cache_control,\n        im_business_state AS im_business_state,\n        im_business_feature_flags AS im_business_feature_flags,\n        pb_numbers_count AS pb_numbers_count\n    FROM msg_participants_with_contact_info\n    WHERE normalized_destination IN (%s)\n        OR tc_im_peer_id IN (%s)\n", Arrays.copyOf(new Object[]{O, O}, 2));
        s1.z.c.l.d(format, "java.lang.String.format(format, *args)");
        sb.append(format);
        sb.append(" UNION ");
        String format2 = String.format(C18121q0.f51038a, Arrays.copyOf(new Object[]{O, O, O}, 3));
        s1.z.c.l.d(format2, "java.lang.String.format(format, *args)");
        sb.append(format2);
        sb.append(" UNION ");
        String format3 = String.format(C18121q0.f51039b, Arrays.copyOf(new Object[]{O}, 1));
        s1.z.c.l.d(format3, "java.lang.String.format(format, *args)");
        sb.append(format3);
        boolean z = true;
        if (str2 != null) {
            z = str2.length() == 0;
        }
        if (!z) {
            sb.append(" ORDER BY ");
            sb.append(str2);
        }
        String sb2 = sb.toString();
        s1.z.c.l.d(sb2, "StringBuilder().apply(builderAction).toString()");
        s1.d0.i j = j.j(0, 6);
        ArrayList arrayList = new ArrayList();
        z it = j.iterator();
        while (it.hasNext()) {
            it.a();
            i.b(arrayList, queryParameters);
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return abstractC8448a.m28528m().rawQuery(sb2, (String[]) array);
    }
}
