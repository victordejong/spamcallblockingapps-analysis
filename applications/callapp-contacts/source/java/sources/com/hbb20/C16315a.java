package com.hbb20;

import android.content.Context;
import android.util.Log;
import com.hbb20.C16330h;
import com.hbb20.CountryCodePicker;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.text.Collator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.hbb20.a */
/* loaded from: classes4-dex2jar.jar:com/hbb20/a.class */
public final class C16315a implements Comparable<C16315a> {

    /* renamed from: A */
    private static String f57677A = "787";

    /* renamed from: B */
    private static String f57678B = "721";

    /* renamed from: C */
    private static String f57679C = "649";

    /* renamed from: D */
    private static String f57680D = "868";

    /* renamed from: E */
    private static String f57681E = "784";

    /* renamed from: F */
    private static String f57682F = "284";

    /* renamed from: G */
    private static String f57683G = "340";

    /* renamed from: H */
    private static String f57684H = "1624";

    /* renamed from: a */
    static int f57685a = -99;

    /* renamed from: b */
    static String f57686b = "Class Country";

    /* renamed from: c */
    static CountryCodePicker.EnumC16310e f57687c;

    /* renamed from: d */
    static String f57688d;

    /* renamed from: e */
    static String f57689e;

    /* renamed from: f */
    static String f57690f;

    /* renamed from: g */
    static List<C16315a> f57691g;

    /* renamed from: m */
    private static String f57692m = "268";

    /* renamed from: n */
    private static String f57693n = "264";

    /* renamed from: o */
    private static String f57694o = "246";

    /* renamed from: p */
    private static String f57695p = "441";

    /* renamed from: q */
    private static String f57696q = "242";

    /* renamed from: r */
    private static String f57697r = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/";

    /* renamed from: s */
    private static String f57698s = "767";

    /* renamed from: t */
    private static String f57699t = "809/829/849";

    /* renamed from: u */
    private static String f57700u = "473";

    /* renamed from: v */
    private static String f57701v = "876";

    /* renamed from: w */
    private static String f57702w = "869";

    /* renamed from: x */
    private static String f57703x = "345";

    /* renamed from: y */
    private static String f57704y = "758";

    /* renamed from: z */
    private static String f57705z = "664";

    /* renamed from: h */
    String f57706h;

    /* renamed from: i */
    public String f57707i;

    /* renamed from: j */
    String f57708j;

    /* renamed from: k */
    String f57709k;

    /* renamed from: l */
    int f57710l;

    public C16315a() {
        this.f57710l = f57685a;
    }

    public C16315a(String str, String str2, String str3, int i) {
        this.f57710l = f57685a;
        this.f57706h = str.toUpperCase(Locale.ROOT);
        this.f57707i = str2;
        this.f57708j = str3;
        this.f57710l = i;
    }

    /* renamed from: a */
    public static C16315a m7415a(Context context, CountryCodePicker.EnumC16310e enumC16310e, String str) {
        for (C16315a c16315a : m7398d(context, enumC16310e)) {
            if (c16315a.f57706h.equalsIgnoreCase(str)) {
                return c16315a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C16315a m7414a(Context context, CountryCodePicker.EnumC16310e enumC16310e, List<C16315a> list, int i) {
        return m7405b(context, enumC16310e, list, String.valueOf(i));
    }

    /* renamed from: a */
    public static C16315a m7413a(Context context, CountryCodePicker.EnumC16310e enumC16310e, List<C16315a> list, String str) {
        C16316b c16316b;
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return null;
        }
        int i = 0;
        if (trim.charAt(0) == '+') {
            i = 1;
        }
        for (int i2 = i; i2 <= trim.length(); i2++) {
            String substring = trim.substring(i, i2);
            try {
                c16316b = C16316b.m7396a(Integer.parseInt(substring));
            } catch (Exception e) {
                c16316b = null;
            }
            if (c16316b != null) {
                int length = i + substring.length();
                return trim.length() >= c16316b.f57713b + length ? c16316b.m7395a(context, enumC16310e, trim.substring(length, c16316b.f57713b + length)) : m7415a(context, enumC16310e, c16316b.f57712a);
            }
            C16315a m7405b = m7405b(context, enumC16310e, list, substring);
            if (m7405b != null) {
                return m7405b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C16315a m7411a(Context context, List<C16315a> list, CountryCodePicker.EnumC16310e enumC16310e, String str) {
        if (list == null || list.size() == 0) {
            return m7415a(context, enumC16310e, str);
        }
        for (C16315a c16315a : list) {
            if (c16315a.f57706h.equalsIgnoreCase(str)) {
                return c16315a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C16315a m7409a(String str) {
        for (C16315a c16315a : m7402c()) {
            if (c16315a.f57707i.equals(str)) {
                return c16315a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m7416a(Context context, CountryCodePicker.EnumC16310e enumC16310e) {
        String str;
        CountryCodePicker.EnumC16310e enumC16310e2 = f57687c;
        if (enumC16310e2 == null || enumC16310e2 != enumC16310e || (str = f57688d) == null || str.length() == 0) {
            m7397e(context, enumC16310e);
        }
        return f57688d;
    }

    /* renamed from: a */
    public static String m7410a(C16315a c16315a) {
        String lowerCase = c16315a.m7399d().toLowerCase();
        lowerCase.hashCode();
        boolean z = true;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    z = false;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    z = true;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    z = true;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    z = true;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    z = true;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    z = true;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    z = true;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    z = true;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    z = true;
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    z = true;
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    z = true;
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    z = true;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    z = true;
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    z = true;
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    z = true;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    z = true;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    z = true;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    z = true;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    z = true;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    z = true;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    z = true;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    z = true;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    z = true;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    z = true;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    z = true;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    z = true;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    z = true;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    z = true;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    z = true;
                    break;
                }
                break;
            case 3151:
                if (lowerCase.equals("bq")) {
                    z = true;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals("br")) {
                    z = true;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    z = true;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    z = true;
                    break;
                }
                break;
            case 3156:
                if (lowerCase.equals("bv")) {
                    z = true;
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    z = true;
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    z = true;
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    z = true;
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    z = true;
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    z = true;
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    z = true;
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    z = true;
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    z = true;
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    z = true;
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    z = true;
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    z = true;
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    z = true;
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    z = true;
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals("cn")) {
                    z = true;
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    z = true;
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    z = true;
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    z = true;
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    z = true;
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    z = true;
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    z = true;
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    z = true;
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    z = true;
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    z = true;
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    z = true;
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    z = true;
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    z = true;
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    z = true;
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    z = true;
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    z = true;
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    z = true;
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    z = true;
                    break;
                }
                break;
            case 3235:
                if (lowerCase.equals("eh")) {
                    z = true;
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    z = true;
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    z = true;
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    z = true;
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    z = true;
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    z = true;
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    z = true;
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    z = true;
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    z = true;
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    z = true;
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    z = true;
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    z = true;
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    z = true;
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    z = true;
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    z = true;
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    z = true;
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    z = true;
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    z = true;
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    z = true;
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    z = true;
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    z = true;
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    z = true;
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    z = true;
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    z = true;
                    break;
                }
                break;
            case 3308:
                if (lowerCase.equals("gs")) {
                    z = true;
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    z = true;
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    z = true;
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    z = true;
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    z = true;
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    z = true;
                    break;
                }
                break;
            case 3333:
                if (lowerCase.equals("hm")) {
                    z = true;
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    z = true;
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    z = true;
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    z = true;
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    z = true;
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    z = true;
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    z = true;
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    z = true;
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    z = true;
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    z = true;
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    z = true;
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    z = true;
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    z = true;
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    z = true;
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    z = true;
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    z = true;
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    z = true;
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    z = true;
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    z = true;
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    z = true;
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    z = true;
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    z = true;
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    z = true;
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    z = true;
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    z = true;
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    z = true;
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    z = true;
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    z = true;
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    z = true;
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    z = true;
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    z = true;
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    z = true;
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    z = true;
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    z = true;
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    z = true;
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    z = true;
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    z = true;
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    z = true;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    z = true;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    z = true;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    z = true;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    z = true;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    z = true;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    z = true;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    z = true;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    z = true;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    z = true;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    z = true;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    z = true;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    z = true;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    z = true;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    z = true;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    z = true;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    z = true;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    z = true;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    z = true;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    z = true;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    z = true;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    z = true;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    z = true;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    z = true;
                    break;
                }
                break;
            case 3500:
                if (lowerCase.equals("my")) {
                    z = true;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    z = true;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    z = true;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    z = true;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    z = true;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    z = true;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    z = true;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    z = true;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    z = true;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    z = true;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    z = true;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    z = true;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    z = true;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    z = true;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    z = true;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    z = true;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    z = true;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    z = true;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    z = true;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    z = true;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    z = true;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    z = true;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    z = true;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    z = true;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    z = true;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    z = true;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    z = true;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    z = true;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    z = true;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    z = true;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    z = true;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    z = true;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    z = true;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    z = true;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    z = true;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    z = true;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    z = true;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    z = true;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    z = true;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    z = true;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    z = true;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    z = true;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    z = true;
                    break;
                }
                break;
            case 3671:
                if (lowerCase.equals("sj")) {
                    z = true;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    z = true;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    z = true;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    z = true;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    z = true;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    z = true;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    z = true;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    z = true;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    z = true;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals("sv")) {
                    z = true;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    z = true;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    z = true;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    z = true;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    z = true;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    z = true;
                    break;
                }
                break;
            case 3698:
                if (lowerCase.equals("tf")) {
                    z = true;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    z = true;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    z = true;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    z = true;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    z = true;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    z = true;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    z = true;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    z = true;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals("to")) {
                    z = true;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    z = true;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals("tt")) {
                    z = true;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    z = true;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    z = true;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    z = true;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    z = true;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    z = true;
                    break;
                }
                break;
            case 3736:
                if (lowerCase.equals("um")) {
                    z = true;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    z = true;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    z = true;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    z = true;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    z = true;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    z = true;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    z = true;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    z = true;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    z = true;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    z = true;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    z = true;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    z = true;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    z = true;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    z = true;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    z = true;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    z = true;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    z = true;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    z = true;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case JsonReaderKt.END_OBJ /* 125 */:
                return "����";
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                return "����";
            case f33015xd24c0733:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            case true:
                return "����";
            default:
                return StringUtils.SPACE;
        }
    }

    /* renamed from: a */
    public static List<C16315a> m7412a(Context context, CountryCodePicker countryCodePicker) {
        countryCodePicker.m7446c();
        return (countryCodePicker.f57629af == null || countryCodePicker.f57629af.size() <= 0) ? m7398d(context, countryCodePicker.m7459a()) : countryCodePicker.f57629af;
    }

    /* renamed from: a */
    private static boolean m7408a(String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            return false;
        }
        try {
            return str2.toLowerCase(Locale.ROOT).contains(str3);
        } catch (Exception e) {
            Log.w("CCPCountry", str + ":" + str2 + " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:" + str3);
            return false;
        }
    }

    /* renamed from: b */
    private static int m7404b(C16315a c16315a) {
        String lowerCase = c16315a.m7399d().toLowerCase();
        lowerCase.hashCode();
        boolean z = true;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    z = false;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    z = true;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    z = true;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    z = true;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    z = true;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    z = true;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    z = true;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    z = true;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    z = true;
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    z = true;
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    z = true;
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    z = true;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    z = true;
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    z = true;
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    z = true;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    z = true;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    z = true;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    z = true;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    z = true;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    z = true;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    z = true;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    z = true;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    z = true;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    z = true;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    z = true;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    z = true;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    z = true;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    z = true;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    z = true;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals("br")) {
                    z = true;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    z = true;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    z = true;
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    z = true;
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    z = true;
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    z = true;
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    z = true;
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    z = true;
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    z = true;
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    z = true;
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    z = true;
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    z = true;
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    z = true;
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    z = true;
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    z = true;
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    z = true;
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals("cn")) {
                    z = true;
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    z = true;
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    z = true;
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    z = true;
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    z = true;
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    z = true;
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    z = true;
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    z = true;
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    z = true;
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    z = true;
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    z = true;
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    z = true;
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    z = true;
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    z = true;
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    z = true;
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    z = true;
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    z = true;
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    z = true;
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    z = true;
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    z = true;
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    z = true;
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    z = true;
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    z = true;
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    z = true;
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    z = true;
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    z = true;
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    z = true;
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    z = true;
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    z = true;
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    z = true;
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    z = true;
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    z = true;
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    z = true;
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    z = true;
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    z = true;
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    z = true;
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    z = true;
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    z = true;
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    z = true;
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    z = true;
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    z = true;
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    z = true;
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    z = true;
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    z = true;
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    z = true;
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    z = true;
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    z = true;
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    z = true;
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    z = true;
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    z = true;
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    z = true;
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    z = true;
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    z = true;
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    z = true;
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    z = true;
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    z = true;
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    z = true;
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    z = true;
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    z = true;
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    z = true;
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    z = true;
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    z = true;
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    z = true;
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    z = true;
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    z = true;
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    z = true;
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    z = true;
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    z = true;
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    z = true;
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    z = true;
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    z = true;
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    z = true;
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    z = true;
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    z = true;
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    z = true;
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    z = true;
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    z = true;
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    z = true;
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    z = true;
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    z = true;
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    z = true;
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    z = true;
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    z = true;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    z = true;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    z = true;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    z = true;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    z = true;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    z = true;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    z = true;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    z = true;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    z = true;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    z = true;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    z = true;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    z = true;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    z = true;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    z = true;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    z = true;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    z = true;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    z = true;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    z = true;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    z = true;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    z = true;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    z = true;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    z = true;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    z = true;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    z = true;
                    break;
                }
                break;
            case 3500:
                if (lowerCase.equals("my")) {
                    z = true;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    z = true;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    z = true;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    z = true;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    z = true;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    z = true;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    z = true;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    z = true;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    z = true;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    z = true;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    z = true;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    z = true;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    z = true;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    z = true;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    z = true;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    z = true;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    z = true;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    z = true;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    z = true;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    z = true;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    z = true;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    z = true;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    z = true;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    z = true;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    z = true;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    z = true;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    z = true;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    z = true;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    z = true;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    z = true;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    z = true;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    z = true;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    z = true;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    z = true;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    z = true;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    z = true;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    z = true;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    z = true;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    z = true;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    z = true;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    z = true;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    z = true;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    z = true;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    z = true;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    z = true;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    z = true;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    z = true;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    z = true;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    z = true;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    z = true;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    z = true;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals("sv")) {
                    z = true;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    z = true;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    z = true;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    z = true;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    z = true;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    z = true;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    z = true;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    z = true;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    z = true;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    z = true;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    z = true;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    z = true;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    z = true;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals("to")) {
                    z = true;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    z = true;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals("tt")) {
                    z = true;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    z = true;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    z = true;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    z = true;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    z = true;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    z = true;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    z = true;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    z = true;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    z = true;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    z = true;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    z = true;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    z = true;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    z = true;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    z = true;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    z = true;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    z = true;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    z = true;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    z = true;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    z = true;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    z = true;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    z = true;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    z = true;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    z = true;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return C16330h.C16335e.flag_andorra;
            case true:
                return C16330h.C16335e.flag_uae;
            case true:
                return C16330h.C16335e.flag_afghanistan;
            case true:
                return C16330h.C16335e.flag_antigua_and_barbuda;
            case true:
                return C16330h.C16335e.flag_anguilla;
            case true:
                return C16330h.C16335e.flag_albania;
            case true:
                return C16330h.C16335e.flag_armenia;
            case true:
                return C16330h.C16335e.flag_angola;
            case true:
                return C16330h.C16335e.flag_antarctica;
            case true:
                return C16330h.C16335e.flag_argentina;
            case true:
                return C16330h.C16335e.flag_american_samoa;
            case true:
                return C16330h.C16335e.flag_austria;
            case true:
                return C16330h.C16335e.flag_australia;
            case true:
                return C16330h.C16335e.flag_aruba;
            case true:
                return C16330h.C16335e.flag_aland;
            case true:
                return C16330h.C16335e.flag_azerbaijan;
            case true:
                return C16330h.C16335e.flag_bosnia;
            case true:
                return C16330h.C16335e.flag_barbados;
            case true:
                return C16330h.C16335e.flag_bangladesh;
            case true:
                return C16330h.C16335e.flag_belgium;
            case true:
                return C16330h.C16335e.flag_burkina_faso;
            case true:
                return C16330h.C16335e.flag_bulgaria;
            case true:
                return C16330h.C16335e.flag_bahrain;
            case true:
                return C16330h.C16335e.flag_burundi;
            case true:
                return C16330h.C16335e.flag_benin;
            case true:
                return C16330h.C16335e.flag_saint_barthelemy;
            case true:
                return C16330h.C16335e.flag_bermuda;
            case true:
                return C16330h.C16335e.flag_brunei;
            case true:
                return C16330h.C16335e.flag_bolivia;
            case true:
                return C16330h.C16335e.flag_brazil;
            case true:
                return C16330h.C16335e.flag_bahamas;
            case true:
                return C16330h.C16335e.flag_bhutan;
            case true:
                return C16330h.C16335e.flag_botswana;
            case true:
                return C16330h.C16335e.flag_belarus;
            case true:
                return C16330h.C16335e.flag_belize;
            case true:
                return C16330h.C16335e.flag_canada;
            case true:
                return C16330h.C16335e.flag_cocos;
            case true:
                return C16330h.C16335e.flag_democratic_republic_of_the_congo;
            case true:
                return C16330h.C16335e.flag_central_african_republic;
            case true:
                return C16330h.C16335e.flag_republic_of_the_congo;
            case true:
                return C16330h.C16335e.flag_switzerland;
            case true:
                return C16330h.C16335e.flag_cote_divoire;
            case true:
                return C16330h.C16335e.flag_cook_islands;
            case true:
                return C16330h.C16335e.flag_chile;
            case true:
                return C16330h.C16335e.flag_cameroon;
            case true:
                return C16330h.C16335e.flag_china;
            case true:
                return C16330h.C16335e.flag_colombia;
            case true:
                return C16330h.C16335e.flag_costa_rica;
            case true:
                return C16330h.C16335e.flag_cuba;
            case true:
                return C16330h.C16335e.flag_cape_verde;
            case true:
                return C16330h.C16335e.flag_curacao;
            case true:
                return C16330h.C16335e.flag_christmas_island;
            case true:
                return C16330h.C16335e.flag_cyprus;
            case true:
                return C16330h.C16335e.flag_czech_republic;
            case true:
                return C16330h.C16335e.flag_germany;
            case true:
                return C16330h.C16335e.flag_djibouti;
            case true:
                return C16330h.C16335e.flag_denmark;
            case true:
                return C16330h.C16335e.flag_dominica;
            case true:
                return C16330h.C16335e.flag_dominican_republic;
            case true:
                return C16330h.C16335e.flag_algeria;
            case true:
                return C16330h.C16335e.flag_ecuador;
            case true:
                return C16330h.C16335e.flag_estonia;
            case true:
                return C16330h.C16335e.flag_egypt;
            case true:
                return C16330h.C16335e.flag_eritrea;
            case true:
                return C16330h.C16335e.flag_spain;
            case true:
                return C16330h.C16335e.flag_ethiopia;
            case true:
                return C16330h.C16335e.flag_finland;
            case true:
                return C16330h.C16335e.flag_fiji;
            case true:
                return C16330h.C16335e.flag_falkland_islands;
            case true:
                return C16330h.C16335e.flag_micronesia;
            case true:
                return C16330h.C16335e.flag_faroe_islands;
            case true:
                return C16330h.C16335e.flag_france;
            case true:
                return C16330h.C16335e.flag_gabon;
            case true:
                return C16330h.C16335e.flag_united_kingdom;
            case true:
                return C16330h.C16335e.flag_grenada;
            case true:
                return C16330h.C16335e.flag_georgia;
            case true:
                return C16330h.C16335e.flag_guyane;
            case true:
                return C16330h.C16335e.flag_guernsey;
            case true:
                return C16330h.C16335e.flag_ghana;
            case true:
                return C16330h.C16335e.flag_gibraltar;
            case true:
                return C16330h.C16335e.flag_greenland;
            case true:
                return C16330h.C16335e.flag_gambia;
            case true:
                return C16330h.C16335e.flag_guinea;
            case true:
                return C16330h.C16335e.flag_guadeloupe;
            case true:
                return C16330h.C16335e.flag_equatorial_guinea;
            case true:
                return C16330h.C16335e.flag_greece;
            case true:
                return C16330h.C16335e.flag_guatemala;
            case true:
                return C16330h.C16335e.flag_guam;
            case true:
                return C16330h.C16335e.flag_guinea_bissau;
            case true:
                return C16330h.C16335e.flag_guyana;
            case true:
                return C16330h.C16335e.flag_hong_kong;
            case true:
                return C16330h.C16335e.flag_honduras;
            case true:
                return C16330h.C16335e.flag_croatia;
            case true:
                return C16330h.C16335e.flag_haiti;
            case true:
                return C16330h.C16335e.flag_hungary;
            case true:
                return C16330h.C16335e.flag_indonesia;
            case true:
                return C16330h.C16335e.flag_ireland;
            case true:
                return C16330h.C16335e.flag_israel;
            case true:
                return C16330h.C16335e.flag_isleof_man;
            case true:
                return C16330h.C16335e.flag_india;
            case true:
                return C16330h.C16335e.flag_british_indian_ocean_territory;
            case true:
                return C16330h.C16335e.flag_iraq_new;
            case true:
                return C16330h.C16335e.flag_iran;
            case true:
                return C16330h.C16335e.flag_iceland;
            case true:
                return C16330h.C16335e.flag_italy;
            case true:
                return C16330h.C16335e.flag_jersey;
            case true:
                return C16330h.C16335e.flag_jamaica;
            case true:
                return C16330h.C16335e.flag_jordan;
            case true:
                return C16330h.C16335e.flag_japan;
            case true:
                return C16330h.C16335e.flag_kenya;
            case true:
                return C16330h.C16335e.flag_kyrgyzstan;
            case true:
                return C16330h.C16335e.flag_cambodia;
            case true:
                return C16330h.C16335e.flag_kiribati;
            case true:
                return C16330h.C16335e.flag_comoros;
            case true:
                return C16330h.C16335e.flag_saint_kitts_and_nevis;
            case true:
                return C16330h.C16335e.flag_north_korea;
            case true:
                return C16330h.C16335e.flag_south_korea;
            case true:
                return C16330h.C16335e.flag_kuwait;
            case true:
                return C16330h.C16335e.flag_cayman_islands;
            case true:
                return C16330h.C16335e.flag_kazakhstan;
            case true:
                return C16330h.C16335e.flag_laos;
            case true:
                return C16330h.C16335e.flag_lebanon;
            case true:
                return C16330h.C16335e.flag_saint_lucia;
            case true:
                return C16330h.C16335e.flag_liechtenstein;
            case true:
                return C16330h.C16335e.flag_sri_lanka;
            case JsonReaderKt.END_OBJ /* 125 */:
                return C16330h.C16335e.flag_liberia;
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                return C16330h.C16335e.flag_lesotho;
            case true:
                return C16330h.C16335e.flag_lithuania;
            case true:
                return C16330h.C16335e.flag_luxembourg;
            case true:
                return C16330h.C16335e.flag_latvia;
            case true:
                return C16330h.C16335e.flag_libya;
            case true:
                return C16330h.C16335e.flag_morocco;
            case true:
                return C16330h.C16335e.flag_monaco;
            case true:
                return C16330h.C16335e.flag_moldova;
            case true:
                return C16330h.C16335e.flag_of_montenegro;
            case true:
                return C16330h.C16335e.flag_saint_martin;
            case true:
                return C16330h.C16335e.flag_madagascar;
            case true:
                return C16330h.C16335e.flag_marshall_islands;
            case true:
                return C16330h.C16335e.flag_macedonia;
            case true:
                return C16330h.C16335e.flag_mali;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                return C16330h.C16335e.flag_myanmar;
            case true:
                return C16330h.C16335e.flag_mongolia;
            case true:
                return C16330h.C16335e.flag_macao;
            case true:
                return C16330h.C16335e.flag_northern_mariana_islands;
            case true:
                return C16330h.C16335e.flag_martinique;
            case true:
                return C16330h.C16335e.flag_mauritania;
            case true:
                return C16330h.C16335e.flag_montserrat;
            case true:
                return C16330h.C16335e.flag_malta;
            case true:
                return C16330h.C16335e.flag_mauritius;
            case true:
                return C16330h.C16335e.flag_maldives;
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                return C16330h.C16335e.flag_malawi;
            case true:
                return C16330h.C16335e.flag_mexico;
            case true:
                return C16330h.C16335e.flag_malaysia;
            case true:
                return C16330h.C16335e.flag_mozambique;
            case true:
                return C16330h.C16335e.flag_namibia;
            case true:
                return C16330h.C16335e.flag_new_caledonia;
            case true:
                return C16330h.C16335e.flag_niger;
            case true:
                return C16330h.C16335e.flag_norfolk_island;
            case true:
                return C16330h.C16335e.flag_nigeria;
            case true:
                return C16330h.C16335e.flag_nicaragua;
            case true:
                return C16330h.C16335e.flag_netherlands;
            case true:
                return C16330h.C16335e.flag_norway;
            case true:
                return C16330h.C16335e.flag_nepal;
            case true:
                return C16330h.C16335e.flag_nauru;
            case true:
                return C16330h.C16335e.flag_niue;
            case true:
                return C16330h.C16335e.flag_new_zealand;
            case true:
                return C16330h.C16335e.flag_oman;
            case true:
                return C16330h.C16335e.flag_panama;
            case true:
                return C16330h.C16335e.flag_peru;
            case true:
                return C16330h.C16335e.flag_french_polynesia;
            case true:
                return C16330h.C16335e.flag_papua_new_guinea;
            case true:
                return C16330h.C16335e.flag_philippines;
            case true:
                return C16330h.C16335e.flag_pakistan;
            case true:
                return C16330h.C16335e.flag_poland;
            case true:
                return C16330h.C16335e.flag_saint_pierre;
            case true:
                return C16330h.C16335e.flag_pitcairn_islands;
            case true:
                return C16330h.C16335e.flag_puerto_rico;
            case true:
                return C16330h.C16335e.flag_palestine;
            case true:
                return C16330h.C16335e.flag_portugal;
            case true:
                return C16330h.C16335e.flag_palau;
            case true:
                return C16330h.C16335e.flag_paraguay;
            case true:
                return C16330h.C16335e.flag_qatar;
            case true:
                return C16330h.C16335e.flag_martinique;
            case true:
                return C16330h.C16335e.flag_romania;
            case true:
                return C16330h.C16335e.flag_serbia;
            case true:
                return C16330h.C16335e.flag_russian_federation;
            case true:
                return C16330h.C16335e.flag_rwanda;
            case true:
                return C16330h.C16335e.flag_saudi_arabia;
            case true:
                return C16330h.C16335e.flag_soloman_islands;
            case true:
                return C16330h.C16335e.flag_seychelles;
            case true:
                return C16330h.C16335e.flag_sudan;
            case true:
                return C16330h.C16335e.flag_sweden;
            case true:
                return C16330h.C16335e.flag_singapore;
            case true:
                return C16330h.C16335e.flag_saint_helena;
            case true:
                return C16330h.C16335e.flag_slovenia;
            case true:
                return C16330h.C16335e.flag_slovakia;
            case true:
                return C16330h.C16335e.flag_sierra_leone;
            case true:
                return C16330h.C16335e.flag_san_marino;
            case true:
                return C16330h.C16335e.flag_senegal;
            case true:
                return C16330h.C16335e.flag_somalia;
            case true:
                return C16330h.C16335e.flag_suriname;
            case true:
                return C16330h.C16335e.flag_south_sudan;
            case true:
                return C16330h.C16335e.flag_sao_tome_and_principe;
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
                return C16330h.C16335e.flag_el_salvador;
            case LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE:
                return C16330h.C16335e.flag_sint_maarten;
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                return C16330h.C16335e.flag_syria;
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
                return C16330h.C16335e.flag_swaziland;
            case LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE:
                return C16330h.C16335e.flag_turks_and_caicos_islands;
            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                return C16330h.C16335e.flag_chad;
            case f33015xd24c0733:
                return C16330h.C16335e.flag_togo;
            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                return C16330h.C16335e.flag_thailand;
            case LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:
                return C16330h.C16335e.flag_tajikistan;
            case LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:
                return C16330h.C16335e.flag_tokelau;
            case true:
                return C16330h.C16335e.flag_timor_leste;
            case true:
                return C16330h.C16335e.flag_turkmenistan;
            case true:
                return C16330h.C16335e.flag_tunisia;
            case true:
                return C16330h.C16335e.flag_tonga;
            case true:
                return C16330h.C16335e.flag_turkey;
            case true:
                return C16330h.C16335e.flag_trinidad_and_tobago;
            case true:
                return C16330h.C16335e.flag_tuvalu;
            case true:
                return C16330h.C16335e.flag_taiwan;
            case true:
                return C16330h.C16335e.flag_tanzania;
            case true:
                return C16330h.C16335e.flag_ukraine;
            case true:
                return C16330h.C16335e.flag_uganda;
            case true:
                return C16330h.C16335e.flag_united_states_of_america;
            case true:
                return C16330h.C16335e.flag_uruguay;
            case true:
                return C16330h.C16335e.flag_uzbekistan;
            case true:
                return C16330h.C16335e.flag_vatican_city;
            case true:
                return C16330h.C16335e.flag_saint_vicent_and_the_grenadines;
            case true:
                return C16330h.C16335e.flag_venezuela;
            case true:
                return C16330h.C16335e.flag_british_virgin_islands;
            case true:
                return C16330h.C16335e.flag_us_virgin_islands;
            case true:
                return C16330h.C16335e.flag_vietnam;
            case true:
                return C16330h.C16335e.flag_vanuatu;
            case true:
                return C16330h.C16335e.flag_wallis_and_futuna;
            case true:
                return C16330h.C16335e.flag_samoa;
            case true:
                return C16330h.C16335e.flag_kosovo;
            case true:
                return C16330h.C16335e.flag_yemen;
            case true:
                return C16330h.C16335e.flag_martinique;
            case true:
                return C16330h.C16335e.flag_south_africa;
            case true:
                return C16330h.C16335e.flag_zambia;
            case true:
                return C16330h.C16335e.flag_zimbabwe;
            default:
                return C16330h.C16335e.flag_transparent;
        }
    }

    /* renamed from: b */
    private static C16315a m7405b(Context context, CountryCodePicker.EnumC16310e enumC16310e, List<C16315a> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (C16315a c16315a : list) {
                if (c16315a.f57707i.equals(str)) {
                    return c16315a;
                }
            }
        }
        for (C16315a c16315a2 : m7398d(context, enumC16310e)) {
            if (c16315a2.f57707i.equals(str)) {
                return c16315a2;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static C16315a m7403b(String str) {
        for (C16315a c16315a : m7402c()) {
            if (c16315a.f57706h.equalsIgnoreCase(str)) {
                return c16315a;
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m7406b(Context context, CountryCodePicker.EnumC16310e enumC16310e) {
        String str;
        CountryCodePicker.EnumC16310e enumC16310e2 = f57687c;
        if (enumC16310e2 == null || enumC16310e2 != enumC16310e || (str = f57689e) == null || str.length() == 0) {
            m7397e(context, enumC16310e);
        }
        return f57689e;
    }

    /* renamed from: c */
    public static String m7401c(Context context, CountryCodePicker.EnumC16310e enumC16310e) {
        String str;
        CountryCodePicker.EnumC16310e enumC16310e2 = f57687c;
        if (enumC16310e2 == null || enumC16310e2 != enumC16310e || (str = f57690f) == null || str.length() == 0) {
            m7397e(context, enumC16310e);
        }
        return f57690f;
    }

    /* renamed from: c */
    private static List<C16315a> m7402c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C16315a("ad", "376", "Andorra", f57685a));
        arrayList.add(new C16315a("ae", "971", "United Arab Emirates (UAE)", f57685a));
        arrayList.add(new C16315a("af", "93", "Afghanistan", f57685a));
        arrayList.add(new C16315a("ag", "1", "Antigua and Barbuda", f57685a));
        arrayList.add(new C16315a("ai", "1", "Anguilla", f57685a));
        arrayList.add(new C16315a("al", "355", "Albania", f57685a));
        arrayList.add(new C16315a("am", "374", "Armenia", f57685a));
        arrayList.add(new C16315a("ao", "244", "Angola", f57685a));
        arrayList.add(new C16315a("aq", "672", "Antarctica", f57685a));
        arrayList.add(new C16315a("ar", "54", "Argentina", f57685a));
        arrayList.add(new C16315a("as", "1", "American Samoa", f57685a));
        arrayList.add(new C16315a("at", "43", "Austria", f57685a));
        arrayList.add(new C16315a("au", "61", "Australia", f57685a));
        arrayList.add(new C16315a("aw", "297", "Aruba", f57685a));
        arrayList.add(new C16315a("ax", "358", "Åland Islands", f57685a));
        arrayList.add(new C16315a("az", "994", "Azerbaijan", f57685a));
        arrayList.add(new C16315a("ba", "387", "Bosnia And Herzegovina", f57685a));
        arrayList.add(new C16315a("bb", "1", "Barbados", f57685a));
        arrayList.add(new C16315a("bd", "880", "Bangladesh", f57685a));
        arrayList.add(new C16315a("be", "32", "Belgium", f57685a));
        arrayList.add(new C16315a("bf", "226", "Burkina Faso", f57685a));
        arrayList.add(new C16315a("bg", "359", "Bulgaria", f57685a));
        arrayList.add(new C16315a("bh", "973", "Bahrain", f57685a));
        arrayList.add(new C16315a("bi", "257", "Burundi", f57685a));
        arrayList.add(new C16315a("bj", "229", "Benin", f57685a));
        arrayList.add(new C16315a("bl", "590", "Saint Barthélemy", f57685a));
        arrayList.add(new C16315a("bm", "1", "Bermuda", f57685a));
        arrayList.add(new C16315a("bn", "673", "Brunei Darussalam", f57685a));
        arrayList.add(new C16315a("bo", "591", "Bolivia, Plurinational State Of", f57685a));
        arrayList.add(new C16315a("br", "55", "Brazil", f57685a));
        arrayList.add(new C16315a("bs", "1", "Bahamas", f57685a));
        arrayList.add(new C16315a("bt", "975", "Bhutan", f57685a));
        arrayList.add(new C16315a("bw", "267", "Botswana", f57685a));
        arrayList.add(new C16315a("by", "375", "Belarus", f57685a));
        arrayList.add(new C16315a("bz", "501", "Belize", f57685a));
        arrayList.add(new C16315a("ca", "1", "Canada", f57685a));
        arrayList.add(new C16315a("cc", "61", "Cocos (keeling) Islands", f57685a));
        arrayList.add(new C16315a("cd", "243", "Congo, The Democratic Republic Of The", f57685a));
        arrayList.add(new C16315a("cf", "236", "Central African Republic", f57685a));
        arrayList.add(new C16315a("cg", "242", "Congo", f57685a));
        arrayList.add(new C16315a("ch", "41", "Switzerland", f57685a));
        arrayList.add(new C16315a("ci", "225", "Côte D'ivoire", f57685a));
        arrayList.add(new C16315a("ck", "682", "Cook Islands", f57685a));
        arrayList.add(new C16315a("cl", "56", "Chile", f57685a));
        arrayList.add(new C16315a("cm", "237", "Cameroon", f57685a));
        arrayList.add(new C16315a("cn", "86", "China", f57685a));
        arrayList.add(new C16315a("co", "57", "Colombia", f57685a));
        arrayList.add(new C16315a("cr", "506", "Costa Rica", f57685a));
        arrayList.add(new C16315a("cu", "53", "Cuba", f57685a));
        arrayList.add(new C16315a("cv", "238", "Cape Verde", f57685a));
        arrayList.add(new C16315a("cw", "599", "Curaçao", f57685a));
        arrayList.add(new C16315a("cx", "61", "Christmas Island", f57685a));
        arrayList.add(new C16315a("cy", "357", "Cyprus", f57685a));
        arrayList.add(new C16315a("cz", "420", "Czech Republic", f57685a));
        arrayList.add(new C16315a("de", "49", "Germany", f57685a));
        arrayList.add(new C16315a("dj", "253", "Djibouti", f57685a));
        arrayList.add(new C16315a("dk", "45", "Denmark", f57685a));
        arrayList.add(new C16315a("dm", "1", "Dominica", f57685a));
        arrayList.add(new C16315a("do", "1", "Dominican Republic", f57685a));
        arrayList.add(new C16315a("dz", "213", "Algeria", f57685a));
        arrayList.add(new C16315a("ec", "593", "Ecuador", f57685a));
        arrayList.add(new C16315a("ee", "372", "Estonia", f57685a));
        arrayList.add(new C16315a("eg", "20", "Egypt", f57685a));
        arrayList.add(new C16315a("er", "291", "Eritrea", f57685a));
        arrayList.add(new C16315a("es", "34", "Spain", f57685a));
        arrayList.add(new C16315a("et", "251", "Ethiopia", f57685a));
        arrayList.add(new C16315a("fi", "358", "Finland", f57685a));
        arrayList.add(new C16315a("fj", "679", "Fiji", f57685a));
        arrayList.add(new C16315a("fk", "500", "Falkland Islands (malvinas)", f57685a));
        arrayList.add(new C16315a("fm", "691", "Micronesia, Federated States Of", f57685a));
        arrayList.add(new C16315a("fo", "298", "Faroe Islands", f57685a));
        arrayList.add(new C16315a("fr", "33", "France", f57685a));
        arrayList.add(new C16315a("ga", "241", "Gabon", f57685a));
        arrayList.add(new C16315a("gb", "44", "United Kingdom", f57685a));
        arrayList.add(new C16315a("gd", "1", "Grenada", f57685a));
        arrayList.add(new C16315a("ge", "995", "Georgia", f57685a));
        arrayList.add(new C16315a("gf", "594", "French Guyana", f57685a));
        arrayList.add(new C16315a("gh", "233", "Ghana", f57685a));
        arrayList.add(new C16315a("gi", "350", "Gibraltar", f57685a));
        arrayList.add(new C16315a("gl", "299", "Greenland", f57685a));
        arrayList.add(new C16315a("gm", "220", "Gambia", f57685a));
        arrayList.add(new C16315a("gn", "224", "Guinea", f57685a));
        arrayList.add(new C16315a("gp", "450", "Guadeloupe", f57685a));
        arrayList.add(new C16315a("gq", "240", "Equatorial Guinea", f57685a));
        arrayList.add(new C16315a("gr", "30", "Greece", f57685a));
        arrayList.add(new C16315a("gt", "502", "Guatemala", f57685a));
        arrayList.add(new C16315a("gu", "1", "Guam", f57685a));
        arrayList.add(new C16315a("gw", "245", "Guinea-bissau", f57685a));
        arrayList.add(new C16315a("gy", "592", "Guyana", f57685a));
        arrayList.add(new C16315a("hk", "852", "Hong Kong", f57685a));
        arrayList.add(new C16315a("hn", "504", "Honduras", f57685a));
        arrayList.add(new C16315a("hr", "385", "Croatia", f57685a));
        arrayList.add(new C16315a("ht", "509", "Haiti", f57685a));
        arrayList.add(new C16315a("hu", "36", "Hungary", f57685a));
        arrayList.add(new C16315a("id", "62", "Indonesia", f57685a));
        arrayList.add(new C16315a("ie", "353", "Ireland", f57685a));
        arrayList.add(new C16315a("il", "972", "Israel", f57685a));
        arrayList.add(new C16315a("im", "44", "Isle Of Man", f57685a));
        arrayList.add(new C16315a("is", "354", "Iceland", f57685a));
        arrayList.add(new C16315a("in", "91", "India", f57685a));
        arrayList.add(new C16315a("io", "246", "British Indian Ocean Territory", f57685a));
        arrayList.add(new C16315a("iq", "964", "Iraq", f57685a));
        arrayList.add(new C16315a("ir", "98", "Iran, Islamic Republic Of", f57685a));
        arrayList.add(new C16315a("it", "39", "Italy", f57685a));
        arrayList.add(new C16315a("je", "44", "Jersey ", f57685a));
        arrayList.add(new C16315a("jm", "1", "Jamaica", f57685a));
        arrayList.add(new C16315a("jo", "962", "Jordan", f57685a));
        arrayList.add(new C16315a("jp", "81", "Japan", f57685a));
        arrayList.add(new C16315a("ke", "254", "Kenya", f57685a));
        arrayList.add(new C16315a("kg", "996", "Kyrgyzstan", f57685a));
        arrayList.add(new C16315a("kh", "855", "Cambodia", f57685a));
        arrayList.add(new C16315a("ki", "686", "Kiribati", f57685a));
        arrayList.add(new C16315a("km", "269", "Comoros", f57685a));
        arrayList.add(new C16315a("kn", "1", "Saint Kitts and Nevis", f57685a));
        arrayList.add(new C16315a("kp", "850", "North Korea", f57685a));
        arrayList.add(new C16315a("kr", "82", "South Korea", f57685a));
        arrayList.add(new C16315a("kw", "965", "Kuwait", f57685a));
        arrayList.add(new C16315a("ky", "1", "Cayman Islands", f57685a));
        arrayList.add(new C16315a("kz", "7", "Kazakhstan", f57685a));
        arrayList.add(new C16315a("la", "856", "Lao People's Democratic Republic", f57685a));
        arrayList.add(new C16315a("lb", "961", "Lebanon", f57685a));
        arrayList.add(new C16315a("lc", "1", "Saint Lucia", f57685a));
        arrayList.add(new C16315a("li", "423", "Liechtenstein", f57685a));
        arrayList.add(new C16315a("lk", "94", "Sri Lanka", f57685a));
        arrayList.add(new C16315a("lr", "231", "Liberia", f57685a));
        arrayList.add(new C16315a("ls", "266", "Lesotho", f57685a));
        arrayList.add(new C16315a("lt", "370", "Lithuania", f57685a));
        arrayList.add(new C16315a("lu", "352", "Luxembourg", f57685a));
        arrayList.add(new C16315a("lv", "371", "Latvia", f57685a));
        arrayList.add(new C16315a("ly", "218", "Libya", f57685a));
        arrayList.add(new C16315a("ma", "212", "Morocco", f57685a));
        arrayList.add(new C16315a("mc", "377", "Monaco", f57685a));
        arrayList.add(new C16315a("md", "373", "Moldova, Republic Of", f57685a));
        arrayList.add(new C16315a("me", "382", "Montenegro", f57685a));
        arrayList.add(new C16315a("mf", "590", "Saint Martin", f57685a));
        arrayList.add(new C16315a("mg", "261", "Madagascar", f57685a));
        arrayList.add(new C16315a("mh", "692", "Marshall Islands", f57685a));
        arrayList.add(new C16315a("mk", "389", "Macedonia (FYROM)", f57685a));
        arrayList.add(new C16315a("ml", "223", "Mali", f57685a));
        arrayList.add(new C16315a("mm", "95", "Myanmar", f57685a));
        arrayList.add(new C16315a("mn", "976", "Mongolia", f57685a));
        arrayList.add(new C16315a("mo", "853", "Macau", f57685a));
        arrayList.add(new C16315a("mp", "1", "Northern Mariana Islands", f57685a));
        arrayList.add(new C16315a("mq", "596", "Martinique", f57685a));
        arrayList.add(new C16315a("mr", "222", "Mauritania", f57685a));
        arrayList.add(new C16315a("ms", "1", "Montserrat", f57685a));
        arrayList.add(new C16315a("mt", "356", "Malta", f57685a));
        arrayList.add(new C16315a("mu", "230", "Mauritius", f57685a));
        arrayList.add(new C16315a("mv", "960", "Maldives", f57685a));
        arrayList.add(new C16315a("mw", "265", "Malawi", f57685a));
        arrayList.add(new C16315a("mx", "52", "Mexico", f57685a));
        arrayList.add(new C16315a("my", "60", "Malaysia", f57685a));
        arrayList.add(new C16315a("mz", "258", "Mozambique", f57685a));
        arrayList.add(new C16315a("na", "264", "Namibia", f57685a));
        arrayList.add(new C16315a("nc", "687", "New Caledonia", f57685a));
        arrayList.add(new C16315a("ne", "227", "Niger", f57685a));
        arrayList.add(new C16315a("nf", "672", "Norfolk Islands", f57685a));
        arrayList.add(new C16315a("ng", "234", "Nigeria", f57685a));
        arrayList.add(new C16315a("ni", "505", "Nicaragua", f57685a));
        arrayList.add(new C16315a("nl", "31", "Netherlands", f57685a));
        arrayList.add(new C16315a("no", "47", "Norway", f57685a));
        arrayList.add(new C16315a("np", "977", "Nepal", f57685a));
        arrayList.add(new C16315a("nr", "674", "Nauru", f57685a));
        arrayList.add(new C16315a("nu", "683", "Niue", f57685a));
        arrayList.add(new C16315a("nz", "64", "New Zealand", f57685a));
        arrayList.add(new C16315a("om", "968", "Oman", f57685a));
        arrayList.add(new C16315a("pa", "507", "Panama", f57685a));
        arrayList.add(new C16315a("pe", "51", "Peru", f57685a));
        arrayList.add(new C16315a("pf", "689", "French Polynesia", f57685a));
        arrayList.add(new C16315a("pg", "675", "Papua New Guinea", f57685a));
        arrayList.add(new C16315a("ph", "63", "Philippines", f57685a));
        arrayList.add(new C16315a("pk", "92", "Pakistan", f57685a));
        arrayList.add(new C16315a("pl", "48", "Poland", f57685a));
        arrayList.add(new C16315a("pm", "508", "Saint Pierre And Miquelon", f57685a));
        arrayList.add(new C16315a("pn", "870", "Pitcairn Islands", f57685a));
        arrayList.add(new C16315a("pr", "1", "Puerto Rico", f57685a));
        arrayList.add(new C16315a("ps", "970", "Palestine", f57685a));
        arrayList.add(new C16315a("pt", "351", "Portugal", f57685a));
        arrayList.add(new C16315a("pw", "680", "Palau", f57685a));
        arrayList.add(new C16315a("py", "595", "Paraguay", f57685a));
        arrayList.add(new C16315a("qa", "974", "Qatar", f57685a));
        arrayList.add(new C16315a("re", "262", "Réunion", f57685a));
        arrayList.add(new C16315a("ro", "40", "Romania", f57685a));
        arrayList.add(new C16315a("rs", "381", "Serbia", f57685a));
        arrayList.add(new C16315a("ru", "7", "Russian Federation", f57685a));
        arrayList.add(new C16315a("rw", "250", "Rwanda", f57685a));
        arrayList.add(new C16315a("sa", "966", "Saudi Arabia", f57685a));
        arrayList.add(new C16315a("sb", "677", "Solomon Islands", f57685a));
        arrayList.add(new C16315a("sc", "248", "Seychelles", f57685a));
        arrayList.add(new C16315a("sd", "249", "Sudan", f57685a));
        arrayList.add(new C16315a("se", "46", "Sweden", f57685a));
        arrayList.add(new C16315a("sg", "65", "Singapore", f57685a));
        arrayList.add(new C16315a("sh", "290", "Saint Helena, Ascension And Tristan Da Cunha", f57685a));
        arrayList.add(new C16315a("si", "386", "Slovenia", f57685a));
        arrayList.add(new C16315a("sk", "421", "Slovakia", f57685a));
        arrayList.add(new C16315a("sl", "232", "Sierra Leone", f57685a));
        arrayList.add(new C16315a("sm", "378", "San Marino", f57685a));
        arrayList.add(new C16315a("sn", "221", "Senegal", f57685a));
        arrayList.add(new C16315a("so", "252", "Somalia", f57685a));
        arrayList.add(new C16315a("sr", "597", "Suriname", f57685a));
        arrayList.add(new C16315a("ss", "211", "South Sudan", f57685a));
        arrayList.add(new C16315a("st", "239", "Sao Tome And Principe", f57685a));
        arrayList.add(new C16315a("sv", "503", "El Salvador", f57685a));
        arrayList.add(new C16315a("sx", "1", "Sint Maarten", f57685a));
        arrayList.add(new C16315a("sy", "963", "Syrian Arab Republic", f57685a));
        arrayList.add(new C16315a("sz", "268", "Swaziland", f57685a));
        arrayList.add(new C16315a("tc", "1", "Turks and Caicos Islands", f57685a));
        arrayList.add(new C16315a("td", "235", "Chad", f57685a));
        arrayList.add(new C16315a("tg", "228", "Togo", f57685a));
        arrayList.add(new C16315a("th", "66", "Thailand", f57685a));
        arrayList.add(new C16315a("tj", "992", "Tajikistan", f57685a));
        arrayList.add(new C16315a("tk", "690", "Tokelau", f57685a));
        arrayList.add(new C16315a("tl", "670", "Timor-leste", f57685a));
        arrayList.add(new C16315a("tm", "993", "Turkmenistan", f57685a));
        arrayList.add(new C16315a("tn", "216", "Tunisia", f57685a));
        arrayList.add(new C16315a("to", "676", "Tonga", f57685a));
        arrayList.add(new C16315a("tr", "90", "Turkey", f57685a));
        arrayList.add(new C16315a("tt", "1", "Trinidad &amp; Tobago", f57685a));
        arrayList.add(new C16315a("tv", "688", "Tuvalu", f57685a));
        arrayList.add(new C16315a("tw", "886", "Taiwan", f57685a));
        arrayList.add(new C16315a("tz", "255", "Tanzania, United Republic Of", f57685a));
        arrayList.add(new C16315a("ua", "380", "Ukraine", f57685a));
        arrayList.add(new C16315a("ug", "256", "Uganda", f57685a));
        arrayList.add(new C16315a("us", "1", "United States", f57685a));
        arrayList.add(new C16315a("uy", "598", "Uruguay", f57685a));
        arrayList.add(new C16315a("uz", "998", "Uzbekistan", f57685a));
        arrayList.add(new C16315a("va", "379", "Holy See (vatican City State)", f57685a));
        arrayList.add(new C16315a("vc", "1", "Saint Vincent &amp; The Grenadines", f57685a));
        arrayList.add(new C16315a("ve", "58", "Venezuela, Bolivarian Republic Of", f57685a));
        arrayList.add(new C16315a("vg", "1", "British Virgin Islands", f57685a));
        arrayList.add(new C16315a("vi", "1", "US Virgin Islands", f57685a));
        arrayList.add(new C16315a("vn", "84", "Vietnam", f57685a));
        arrayList.add(new C16315a("vu", "678", "Vanuatu", f57685a));
        arrayList.add(new C16315a("wf", "681", "Wallis And Futuna", f57685a));
        arrayList.add(new C16315a("ws", "685", "Samoa", f57685a));
        arrayList.add(new C16315a("xk", "383", "Kosovo", f57685a));
        arrayList.add(new C16315a("ye", "967", "Yemen", f57685a));
        arrayList.add(new C16315a("yt", "262", "Mayotte", f57685a));
        arrayList.add(new C16315a("za", "27", "South Africa", f57685a));
        arrayList.add(new C16315a("zm", "260", "Zambia", f57685a));
        arrayList.add(new C16315a("zw", "263", "Zimbabwe", f57685a));
        return arrayList;
    }

    /* renamed from: d */
    private String m7399d() {
        return this.f57706h;
    }

    /* renamed from: d */
    public static List<C16315a> m7398d(Context context, CountryCodePicker.EnumC16310e enumC16310e) {
        List<C16315a> list;
        CountryCodePicker.EnumC16310e enumC16310e2 = f57687c;
        if (enumC16310e2 == null || enumC16310e != enumC16310e2 || (list = f57691g) == null || list.size() == 0) {
            m7397e(context, enumC16310e);
        }
        return f57691g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0430  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m7397e(android.content.Context r7, com.hbb20.CountryCodePicker.EnumC16310e r8) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.C16315a.m7397e(android.content.Context, com.hbb20.CountryCodePicker$e):void");
    }

    /* renamed from: a */
    public final int m7417a() {
        if (this.f57710l == -99) {
            this.f57710l = m7404b(this);
        }
        return this.f57710l;
    }

    /* renamed from: b */
    public final void m7407b() {
        try {
            StringBuilder sb = new StringBuilder("Country->");
            sb.append(this.f57706h);
            sb.append(":");
            sb.append(this.f57707i);
            sb.append(":");
            sb.append(this.f57708j);
        } catch (NullPointerException e) {
        }
    }

    /* renamed from: c */
    public final boolean m7400c(String str) {
        String lowerCase = str.toLowerCase();
        return m7408a("Name", this.f57708j, lowerCase) || m7408a("NameCode", this.f57706h, lowerCase) || m7408a("PhoneCode", this.f57707i, lowerCase) || m7408a("EnglishName", this.f57709k, lowerCase);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C16315a c16315a) {
        return Collator.getInstance().compare(this.f57708j, c16315a.f57708j);
    }
}
