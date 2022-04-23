package com.hbb20;

import android.content.Context;
import android.util.Log;
import com.hbb20.CountryCodePicker;
import com.hbb20.h;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.text.Collator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/hbb20/a.class */
public final class a implements Comparable<a> {
    private static String A = "787";
    private static String B = "721";
    private static String C = "649";
    private static String D = "868";
    private static String E = "784";
    private static String F = "284";
    private static String G = "340";
    private static String H = "1624";

    /* renamed from: a  reason: collision with root package name */
    static int f33207a = -99;

    /* renamed from: b  reason: collision with root package name */
    static String f33208b = "Class Country";

    /* renamed from: c  reason: collision with root package name */
    static CountryCodePicker.e f33209c;

    /* renamed from: d  reason: collision with root package name */
    static String f33210d;
    static String e;
    static String f;
    static List<a> g;
    private static String m = "268";
    private static String n = "264";
    private static String o = "246";
    private static String p = "441";
    private static String q = "242";
    private static String r = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/";
    private static String s = "767";
    private static String t = "809/829/849";
    private static String u = "473";
    private static String v = "876";
    private static String w = "869";
    private static String x = "345";
    private static String y = "758";
    private static String z = "664";
    String h;
    public String i;
    String j;
    String k;
    int l;

    public a() {
        this.l = f33207a;
    }

    public a(String str, String str2, String str3, int i) {
        this.l = f33207a;
        this.h = str.toUpperCase(Locale.ROOT);
        this.i = str2;
        this.j = str3;
        this.l = i;
    }

    public static a a(Context context, CountryCodePicker.e eVar, String str) {
        for (a aVar : d(context, eVar)) {
            if (aVar.h.equalsIgnoreCase(str)) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, CountryCodePicker.e eVar, List<a> list, int i) {
        return b(context, eVar, list, String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, CountryCodePicker.e eVar, List<a> list, String str) {
        b bVar;
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
                bVar = b.a(Integer.parseInt(substring));
            } catch (Exception e2) {
                bVar = null;
            }
            if (bVar != null) {
                int length = i + substring.length();
                return trim.length() >= bVar.f33213b + length ? bVar.a(context, eVar, trim.substring(length, bVar.f33213b + length)) : a(context, eVar, bVar.f33212a);
            }
            a b2 = b(context, eVar, list, substring);
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, List<a> list, CountryCodePicker.e eVar, String str) {
        if (list == null || list.size() == 0) {
            return a(context, eVar, str);
        }
        for (a aVar : list) {
            if (aVar.h.equalsIgnoreCase(str)) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String str) {
        for (a aVar : c()) {
            if (aVar.i.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static String a(Context context, CountryCodePicker.e eVar) {
        String str;
        CountryCodePicker.e eVar2 = f33209c;
        if (eVar2 == null || eVar2 != eVar || (str = f33210d) == null || str.length() == 0) {
            e(context, eVar);
        }
        return f33210d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(a aVar) {
        String lowerCase = aVar.d().toLowerCase();
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    c2 = 2;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    c2 = 5;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    c2 = 6;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    c2 = 7;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    c2 = 11;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    c2 = 14;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    c2 = 15;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    c2 = 16;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    c2 = 17;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    c2 = 18;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    c2 = 19;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    c2 = 20;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    c2 = 21;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    c2 = 22;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    c2 = 23;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    c2 = 24;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    c2 = 25;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    c2 = 26;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    c2 = 27;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    c2 = 28;
                    break;
                }
                break;
            case 3151:
                if (lowerCase.equals("bq")) {
                    c2 = 29;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals("br")) {
                    c2 = 30;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    c2 = 31;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    c2 = ' ';
                    break;
                }
                break;
            case 3156:
                if (lowerCase.equals("bv")) {
                    c2 = '!';
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    c2 = '\"';
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    c2 = '#';
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    c2 = '$';
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    c2 = '%';
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    c2 = '&';
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    c2 = '\'';
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    c2 = '(';
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    c2 = ')';
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    c2 = '*';
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    c2 = '+';
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    c2 = ',';
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    c2 = '-';
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    c2 = '.';
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals("cn")) {
                    c2 = '/';
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    c2 = '0';
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    c2 = '1';
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    c2 = '2';
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    c2 = '3';
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    c2 = '4';
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    c2 = '5';
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    c2 = '6';
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    c2 = '7';
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    c2 = '8';
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    c2 = '9';
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    c2 = ':';
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    c2 = ';';
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    c2 = '<';
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    c2 = '=';
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    c2 = '>';
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    c2 = '?';
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    c2 = '@';
                    break;
                }
                break;
            case 3235:
                if (lowerCase.equals("eh")) {
                    c2 = 'A';
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    c2 = 'B';
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    c2 = 'C';
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    c2 = 'D';
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    c2 = 'E';
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    c2 = 'F';
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    c2 = 'G';
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    c2 = 'H';
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    c2 = 'I';
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    c2 = 'J';
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    c2 = 'K';
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    c2 = 'L';
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    c2 = 'M';
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    c2 = 'N';
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    c2 = 'O';
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    c2 = 'P';
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    c2 = 'Q';
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    c2 = 'R';
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    c2 = 'S';
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    c2 = 'T';
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    c2 = 'U';
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    c2 = 'V';
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    c2 = 'W';
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    c2 = 'X';
                    break;
                }
                break;
            case 3308:
                if (lowerCase.equals("gs")) {
                    c2 = 'Y';
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    c2 = 'Z';
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    c2 = '[';
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    c2 = '\\';
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    c2 = ']';
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    c2 = '^';
                    break;
                }
                break;
            case 3333:
                if (lowerCase.equals("hm")) {
                    c2 = '_';
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    c2 = '`';
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    c2 = 'a';
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    c2 = 'b';
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    c2 = 'c';
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    c2 = 'd';
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    c2 = 'e';
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    c2 = 'f';
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    c2 = 'g';
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    c2 = 'h';
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    c2 = 'i';
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    c2 = 'j';
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    c2 = 'k';
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    c2 = 'l';
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    c2 = 'm';
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    c2 = 'n';
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    c2 = 'o';
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    c2 = 'p';
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    c2 = 'q';
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    c2 = 'r';
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    c2 = 's';
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    c2 = 't';
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    c2 = 'u';
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    c2 = 'v';
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    c2 = 'w';
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    c2 = 'x';
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    c2 = 'y';
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    c2 = 'z';
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    c2 = '{';
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    c2 = '|';
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    c2 = '}';
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    c2 = '~';
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    c2 = 127;
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    c2 = 128;
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    c2 = 129;
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    c2 = 130;
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    c2 = 131;
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    c2 = 132;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    c2 = 133;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    c2 = 134;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    c2 = 135;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    c2 = 136;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    c2 = 137;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    c2 = 138;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    c2 = 139;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    c2 = 140;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    c2 = 141;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    c2 = 142;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    c2 = 143;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    c2 = 144;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    c2 = 145;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    c2 = 146;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    c2 = 147;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    c2 = 148;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    c2 = 149;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    c2 = 150;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    c2 = 151;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    c2 = 152;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    c2 = 153;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    c2 = 154;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    c2 = 155;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    c2 = 156;
                    break;
                }
                break;
            case 3500:
                if (lowerCase.equals("my")) {
                    c2 = 157;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    c2 = 158;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    c2 = 159;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    c2 = 160;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    c2 = 161;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    c2 = 162;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    c2 = 163;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    c2 = 164;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    c2 = 165;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    c2 = 166;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    c2 = 167;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    c2 = 168;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    c2 = 169;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    c2 = 170;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    c2 = 171;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    c2 = 172;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    c2 = 173;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    c2 = 174;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    c2 = 175;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    c2 = 176;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    c2 = 177;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    c2 = 178;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    c2 = 179;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    c2 = 180;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    c2 = 181;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    c2 = 182;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    c2 = 183;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    c2 = 184;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    c2 = 185;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    c2 = 186;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    c2 = 187;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    c2 = 188;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    c2 = 189;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    c2 = 190;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    c2 = 191;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    c2 = 192;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    c2 = 193;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    c2 = 194;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    c2 = 195;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    c2 = 196;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    c2 = 197;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    c2 = 198;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    c2 = 199;
                    break;
                }
                break;
            case 3671:
                if (lowerCase.equals("sj")) {
                    c2 = 200;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    c2 = 201;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    c2 = 202;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    c2 = 203;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    c2 = 204;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    c2 = 205;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    c2 = 206;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    c2 = 207;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    c2 = 208;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals("sv")) {
                    c2 = 209;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    c2 = 210;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    c2 = 211;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    c2 = 212;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    c2 = 213;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    c2 = 214;
                    break;
                }
                break;
            case 3698:
                if (lowerCase.equals("tf")) {
                    c2 = 215;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    c2 = 216;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    c2 = 217;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    c2 = 218;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    c2 = 219;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    c2 = 220;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    c2 = 221;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    c2 = 222;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals("to")) {
                    c2 = 223;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    c2 = 224;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals("tt")) {
                    c2 = 225;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    c2 = 226;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    c2 = 227;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    c2 = 228;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    c2 = 229;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    c2 = 230;
                    break;
                }
                break;
            case 3736:
                if (lowerCase.equals("um")) {
                    c2 = 231;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    c2 = 232;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    c2 = 233;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    c2 = 234;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    c2 = 235;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    c2 = 236;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    c2 = 237;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    c2 = 238;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    c2 = 239;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    c2 = 240;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    c2 = 241;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    c2 = 242;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    c2 = 243;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    c2 = 244;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    c2 = 245;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    c2 = 246;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    c2 = 247;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    c2 = 248;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    c2 = 249;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "����";
            case 1:
                return "����";
            case 2:
                return "����";
            case 3:
                return "����";
            case 4:
                return "����";
            case 5:
                return "����";
            case 6:
                return "����";
            case 7:
                return "����";
            case '\b':
                return "����";
            case '\t':
                return "����";
            case '\n':
                return "����";
            case 11:
                return "����";
            case '\f':
                return "����";
            case '\r':
                return "����";
            case 14:
                return "����";
            case 15:
                return "����";
            case 16:
                return "����";
            case 17:
                return "����";
            case 18:
                return "����";
            case 19:
                return "����";
            case 20:
                return "����";
            case 21:
                return "����";
            case 22:
                return "����";
            case 23:
                return "����";
            case 24:
                return "����";
            case 25:
                return "����";
            case 26:
                return "����";
            case 27:
                return "����";
            case 28:
                return "����";
            case 29:
                return "����";
            case 30:
                return "����";
            case 31:
                return "����";
            case ' ':
                return "����";
            case '!':
                return "����";
            case '\"':
                return "����";
            case '#':
                return "����";
            case '$':
                return "����";
            case '%':
                return "����";
            case '&':
                return "����";
            case '\'':
                return "����";
            case '(':
                return "����";
            case ')':
                return "����";
            case '*':
                return "����";
            case '+':
                return "����";
            case ',':
                return "����";
            case '-':
                return "����";
            case '.':
                return "����";
            case '/':
                return "����";
            case '0':
                return "����";
            case '1':
                return "����";
            case '2':
                return "����";
            case '3':
                return "����";
            case '4':
                return "����";
            case '5':
                return "����";
            case '6':
                return "����";
            case '7':
                return "����";
            case '8':
                return "����";
            case '9':
                return "����";
            case ':':
                return "����";
            case ';':
                return "����";
            case '<':
                return "����";
            case '=':
                return "����";
            case '>':
                return "����";
            case '?':
                return "����";
            case '@':
                return "����";
            case 'A':
                return "����";
            case 'B':
                return "����";
            case 'C':
                return "����";
            case 'D':
                return "����";
            case 'E':
                return "����";
            case 'F':
                return "����";
            case 'G':
                return "����";
            case 'H':
                return "����";
            case 'I':
                return "����";
            case 'J':
                return "����";
            case 'K':
                return "����";
            case 'L':
                return "����";
            case 'M':
                return "����";
            case 'N':
                return "����";
            case 'O':
                return "����";
            case 'P':
                return "����";
            case 'Q':
                return "����";
            case 'R':
                return "����";
            case 'S':
                return "����";
            case 'T':
                return "����";
            case 'U':
                return "����";
            case 'V':
                return "����";
            case 'W':
                return "����";
            case 'X':
                return "����";
            case 'Y':
                return "����";
            case 'Z':
                return "����";
            case '[':
                return "����";
            case '\\':
                return "����";
            case ']':
                return "����";
            case '^':
                return "����";
            case '_':
                return "����";
            case '`':
                return "����";
            case 'a':
                return "����";
            case 'b':
                return "����";
            case 'c':
                return "����";
            case 'd':
                return "����";
            case 'e':
                return "����";
            case 'f':
                return "����";
            case 'g':
                return "����";
            case 'h':
                return "����";
            case 'i':
                return "����";
            case 'j':
                return "����";
            case 'k':
                return "����";
            case 'l':
                return "����";
            case 'm':
                return "����";
            case 'n':
                return "����";
            case 'o':
                return "����";
            case 'p':
                return "����";
            case 'q':
                return "����";
            case 'r':
                return "����";
            case 's':
                return "����";
            case 't':
                return "����";
            case 'u':
                return "����";
            case 'v':
                return "����";
            case 'w':
                return "����";
            case 'x':
                return "����";
            case 'y':
                return "����";
            case 'z':
                return "����";
            case '{':
                return "����";
            case '|':
                return "����";
            case JsonReaderKt.END_OBJ /* 125 */:
                return "����";
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                return "����";
            case 127:
                return "����";
            case 128:
                return "����";
            case 129:
                return "����";
            case 130:
                return "����";
            case 131:
                return "����";
            case 132:
                return "����";
            case 133:
                return "����";
            case 134:
                return "����";
            case 135:
                return "����";
            case 136:
                return "����";
            case 137:
                return "����";
            case 138:
                return "����";
            case 139:
                return "����";
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                return "����";
            case 141:
                return "����";
            case 142:
                return "����";
            case 143:
                return "����";
            case 144:
                return "����";
            case 145:
                return "����";
            case 146:
                return "����";
            case 147:
                return "����";
            case 148:
                return "����";
            case 149:
                return "����";
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                return "����";
            case 151:
                return "����";
            case 152:
                return "����";
            case 153:
                return "����";
            case 154:
                return "����";
            case 155:
                return "����";
            case 156:
                return "����";
            case 157:
                return "����";
            case 158:
                return "����";
            case 159:
                return "����";
            case 160:
                return "����";
            case 161:
                return "����";
            case 162:
                return "����";
            case 163:
                return "����";
            case 164:
                return "����";
            case 165:
                return "����";
            case 166:
                return "����";
            case 167:
                return "����";
            case 168:
                return "����";
            case 169:
                return "����";
            case 170:
                return "����";
            case 171:
                return "����";
            case 172:
                return "����";
            case 173:
                return "����";
            case 174:
                return "����";
            case 175:
                return "����";
            case 176:
                return "����";
            case 177:
                return "����";
            case 178:
                return "����";
            case 179:
                return "����";
            case 180:
                return "����";
            case 181:
                return "����";
            case 182:
                return "����";
            case 183:
                return "����";
            case 184:
                return "����";
            case 185:
                return "����";
            case 186:
                return "����";
            case 187:
                return "����";
            case 188:
                return "����";
            case 189:
                return "����";
            case 190:
                return "����";
            case 191:
                return "����";
            case 192:
                return "����";
            case 193:
                return "����";
            case 194:
                return "����";
            case 195:
                return "����";
            case 196:
                return "����";
            case 197:
                return "����";
            case 198:
                return "����";
            case 199:
                return "����";
            case 200:
                return "����";
            case 201:
                return "����";
            case 202:
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
            case LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:
                return "����";
            case LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:
                return "����";
            case 213:
                return "����";
            case 214:
                return "����";
            case 215:
                return "����";
            case 216:
                return "����";
            case 217:
                return "����";
            case 218:
                return "����";
            case 219:
                return "����";
            case 220:
                return "����";
            case 221:
                return "����";
            case 222:
                return "����";
            case 223:
                return "����";
            case 224:
                return "����";
            case 225:
                return "����";
            case 226:
                return "����";
            case 227:
                return "����";
            case 228:
                return "����";
            case 229:
                return "����";
            case 230:
                return "����";
            case 231:
                return "����";
            case 232:
                return "����";
            case 233:
                return "����";
            case 234:
                return "����";
            case 235:
                return "����";
            case 236:
                return "����";
            case 237:
                return "����";
            case 238:
                return "����";
            case 239:
                return "����";
            case 240:
                return "����";
            case 241:
                return "����";
            case 242:
                return "����";
            case 243:
                return "����";
            case 244:
                return "����";
            case 245:
                return "����";
            case 246:
                return "����";
            case 247:
                return "����";
            case 248:
                return "����";
            case 249:
                return "����";
            default:
                return StringUtils.SPACE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<a> a(Context context, CountryCodePicker countryCodePicker) {
        countryCodePicker.c();
        return (countryCodePicker.af == null || countryCodePicker.af.size() <= 0) ? d(context, countryCodePicker.a()) : countryCodePicker.af;
    }

    private static boolean a(String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            return false;
        }
        try {
            return str2.toLowerCase(Locale.ROOT).contains(str3);
        } catch (Exception e2) {
            Log.w("CCPCountry", str + ":" + str2 + " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:" + str3);
            return false;
        }
    }

    private static int b(a aVar) {
        String lowerCase = aVar.d().toLowerCase();
        lowerCase.hashCode();
        char c2 = 65535;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    c2 = 2;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    c2 = 5;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    c2 = 6;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    c2 = 7;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    c2 = 11;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    c2 = 14;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    c2 = 15;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    c2 = 16;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    c2 = 17;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    c2 = 18;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    c2 = 19;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    c2 = 20;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    c2 = 21;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    c2 = 22;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    c2 = 23;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    c2 = 24;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    c2 = 25;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    c2 = 26;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    c2 = 27;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    c2 = 28;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals("br")) {
                    c2 = 29;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    c2 = 30;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    c2 = 31;
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    c2 = ' ';
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    c2 = '!';
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    c2 = '\"';
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    c2 = '#';
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    c2 = '$';
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    c2 = '%';
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    c2 = '&';
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    c2 = '\'';
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    c2 = '(';
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    c2 = ')';
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    c2 = '*';
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    c2 = '+';
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    c2 = ',';
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals("cn")) {
                    c2 = '-';
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    c2 = '.';
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    c2 = '/';
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    c2 = '0';
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    c2 = '1';
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    c2 = '2';
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    c2 = '3';
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    c2 = '4';
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    c2 = '5';
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    c2 = '6';
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    c2 = '7';
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    c2 = '8';
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    c2 = '9';
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    c2 = ':';
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    c2 = ';';
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    c2 = '<';
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    c2 = '=';
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    c2 = '>';
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    c2 = '?';
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    c2 = '@';
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    c2 = 'A';
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    c2 = 'B';
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    c2 = 'C';
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    c2 = 'D';
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    c2 = 'E';
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    c2 = 'F';
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    c2 = 'G';
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    c2 = 'H';
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    c2 = 'I';
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    c2 = 'J';
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    c2 = 'K';
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    c2 = 'L';
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    c2 = 'M';
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    c2 = 'N';
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    c2 = 'O';
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    c2 = 'P';
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    c2 = 'Q';
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    c2 = 'R';
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    c2 = 'S';
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    c2 = 'T';
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    c2 = 'U';
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    c2 = 'V';
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    c2 = 'W';
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    c2 = 'X';
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    c2 = 'Y';
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    c2 = 'Z';
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    c2 = '[';
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    c2 = '\\';
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    c2 = ']';
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    c2 = '^';
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    c2 = '_';
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    c2 = '`';
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    c2 = 'a';
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    c2 = 'b';
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    c2 = 'c';
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    c2 = 'd';
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    c2 = 'e';
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    c2 = 'f';
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    c2 = 'g';
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    c2 = 'h';
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    c2 = 'i';
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    c2 = 'j';
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    c2 = 'k';
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    c2 = 'l';
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    c2 = 'm';
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    c2 = 'n';
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    c2 = 'o';
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    c2 = 'p';
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    c2 = 'q';
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    c2 = 'r';
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    c2 = 's';
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    c2 = 't';
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    c2 = 'u';
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    c2 = 'v';
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    c2 = 'w';
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    c2 = 'x';
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    c2 = 'y';
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    c2 = 'z';
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    c2 = '{';
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    c2 = '|';
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    c2 = '}';
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    c2 = '~';
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    c2 = 127;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    c2 = 128;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    c2 = 129;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    c2 = 130;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    c2 = 131;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    c2 = 132;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    c2 = 133;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    c2 = 134;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    c2 = 135;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    c2 = 136;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    c2 = 137;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    c2 = 138;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    c2 = 139;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    c2 = 140;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    c2 = 141;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    c2 = 142;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    c2 = 143;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    c2 = 144;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    c2 = 145;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    c2 = 146;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    c2 = 147;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    c2 = 148;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    c2 = 149;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    c2 = 150;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    c2 = 151;
                    break;
                }
                break;
            case 3500:
                if (lowerCase.equals("my")) {
                    c2 = 152;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    c2 = 153;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    c2 = 154;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    c2 = 155;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    c2 = 156;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    c2 = 157;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    c2 = 158;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    c2 = 159;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    c2 = 160;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    c2 = 161;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    c2 = 162;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    c2 = 163;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    c2 = 164;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    c2 = 165;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    c2 = 166;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    c2 = 167;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    c2 = 168;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    c2 = 169;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    c2 = 170;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    c2 = 171;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    c2 = 172;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    c2 = 173;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    c2 = 174;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    c2 = 175;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    c2 = 176;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    c2 = 177;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    c2 = 178;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    c2 = 179;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    c2 = 180;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    c2 = 181;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    c2 = 182;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    c2 = 183;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    c2 = 184;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    c2 = 185;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    c2 = 186;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    c2 = 187;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    c2 = 188;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    c2 = 189;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    c2 = 190;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    c2 = 191;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    c2 = 192;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    c2 = 193;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    c2 = 194;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    c2 = 195;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    c2 = 196;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    c2 = 197;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    c2 = 198;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    c2 = 199;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    c2 = 200;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    c2 = 201;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    c2 = 202;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals("sv")) {
                    c2 = 203;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    c2 = 204;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    c2 = 205;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    c2 = 206;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    c2 = 207;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    c2 = 208;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    c2 = 209;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    c2 = 210;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    c2 = 211;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    c2 = 212;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    c2 = 213;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    c2 = 214;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    c2 = 215;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals("to")) {
                    c2 = 216;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    c2 = 217;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals("tt")) {
                    c2 = 218;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    c2 = 219;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    c2 = 220;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    c2 = 221;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    c2 = 222;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    c2 = 223;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    c2 = 224;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    c2 = 225;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    c2 = 226;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    c2 = 227;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    c2 = 228;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    c2 = 229;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    c2 = 230;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    c2 = 231;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    c2 = 232;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    c2 = 233;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    c2 = 234;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    c2 = 235;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    c2 = 236;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    c2 = 237;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    c2 = 238;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    c2 = 239;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    c2 = 240;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    c2 = 241;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return h.e.flag_andorra;
            case 1:
                return h.e.flag_uae;
            case 2:
                return h.e.flag_afghanistan;
            case 3:
                return h.e.flag_antigua_and_barbuda;
            case 4:
                return h.e.flag_anguilla;
            case 5:
                return h.e.flag_albania;
            case 6:
                return h.e.flag_armenia;
            case 7:
                return h.e.flag_angola;
            case '\b':
                return h.e.flag_antarctica;
            case '\t':
                return h.e.flag_argentina;
            case '\n':
                return h.e.flag_american_samoa;
            case 11:
                return h.e.flag_austria;
            case '\f':
                return h.e.flag_australia;
            case '\r':
                return h.e.flag_aruba;
            case 14:
                return h.e.flag_aland;
            case 15:
                return h.e.flag_azerbaijan;
            case 16:
                return h.e.flag_bosnia;
            case 17:
                return h.e.flag_barbados;
            case 18:
                return h.e.flag_bangladesh;
            case 19:
                return h.e.flag_belgium;
            case 20:
                return h.e.flag_burkina_faso;
            case 21:
                return h.e.flag_bulgaria;
            case 22:
                return h.e.flag_bahrain;
            case 23:
                return h.e.flag_burundi;
            case 24:
                return h.e.flag_benin;
            case 25:
                return h.e.flag_saint_barthelemy;
            case 26:
                return h.e.flag_bermuda;
            case 27:
                return h.e.flag_brunei;
            case 28:
                return h.e.flag_bolivia;
            case 29:
                return h.e.flag_brazil;
            case 30:
                return h.e.flag_bahamas;
            case 31:
                return h.e.flag_bhutan;
            case ' ':
                return h.e.flag_botswana;
            case '!':
                return h.e.flag_belarus;
            case '\"':
                return h.e.flag_belize;
            case '#':
                return h.e.flag_canada;
            case '$':
                return h.e.flag_cocos;
            case '%':
                return h.e.flag_democratic_republic_of_the_congo;
            case '&':
                return h.e.flag_central_african_republic;
            case '\'':
                return h.e.flag_republic_of_the_congo;
            case '(':
                return h.e.flag_switzerland;
            case ')':
                return h.e.flag_cote_divoire;
            case '*':
                return h.e.flag_cook_islands;
            case '+':
                return h.e.flag_chile;
            case ',':
                return h.e.flag_cameroon;
            case '-':
                return h.e.flag_china;
            case '.':
                return h.e.flag_colombia;
            case '/':
                return h.e.flag_costa_rica;
            case '0':
                return h.e.flag_cuba;
            case '1':
                return h.e.flag_cape_verde;
            case '2':
                return h.e.flag_curacao;
            case '3':
                return h.e.flag_christmas_island;
            case '4':
                return h.e.flag_cyprus;
            case '5':
                return h.e.flag_czech_republic;
            case '6':
                return h.e.flag_germany;
            case '7':
                return h.e.flag_djibouti;
            case '8':
                return h.e.flag_denmark;
            case '9':
                return h.e.flag_dominica;
            case ':':
                return h.e.flag_dominican_republic;
            case ';':
                return h.e.flag_algeria;
            case '<':
                return h.e.flag_ecuador;
            case '=':
                return h.e.flag_estonia;
            case '>':
                return h.e.flag_egypt;
            case '?':
                return h.e.flag_eritrea;
            case '@':
                return h.e.flag_spain;
            case 'A':
                return h.e.flag_ethiopia;
            case 'B':
                return h.e.flag_finland;
            case 'C':
                return h.e.flag_fiji;
            case 'D':
                return h.e.flag_falkland_islands;
            case 'E':
                return h.e.flag_micronesia;
            case 'F':
                return h.e.flag_faroe_islands;
            case 'G':
                return h.e.flag_france;
            case 'H':
                return h.e.flag_gabon;
            case 'I':
                return h.e.flag_united_kingdom;
            case 'J':
                return h.e.flag_grenada;
            case 'K':
                return h.e.flag_georgia;
            case 'L':
                return h.e.flag_guyane;
            case 'M':
                return h.e.flag_guernsey;
            case 'N':
                return h.e.flag_ghana;
            case 'O':
                return h.e.flag_gibraltar;
            case 'P':
                return h.e.flag_greenland;
            case 'Q':
                return h.e.flag_gambia;
            case 'R':
                return h.e.flag_guinea;
            case 'S':
                return h.e.flag_guadeloupe;
            case 'T':
                return h.e.flag_equatorial_guinea;
            case 'U':
                return h.e.flag_greece;
            case 'V':
                return h.e.flag_guatemala;
            case 'W':
                return h.e.flag_guam;
            case 'X':
                return h.e.flag_guinea_bissau;
            case 'Y':
                return h.e.flag_guyana;
            case 'Z':
                return h.e.flag_hong_kong;
            case '[':
                return h.e.flag_honduras;
            case '\\':
                return h.e.flag_croatia;
            case ']':
                return h.e.flag_haiti;
            case '^':
                return h.e.flag_hungary;
            case '_':
                return h.e.flag_indonesia;
            case '`':
                return h.e.flag_ireland;
            case 'a':
                return h.e.flag_israel;
            case 'b':
                return h.e.flag_isleof_man;
            case 'c':
                return h.e.flag_india;
            case 'd':
                return h.e.flag_british_indian_ocean_territory;
            case 'e':
                return h.e.flag_iraq_new;
            case 'f':
                return h.e.flag_iran;
            case 'g':
                return h.e.flag_iceland;
            case 'h':
                return h.e.flag_italy;
            case 'i':
                return h.e.flag_jersey;
            case 'j':
                return h.e.flag_jamaica;
            case 'k':
                return h.e.flag_jordan;
            case 'l':
                return h.e.flag_japan;
            case 'm':
                return h.e.flag_kenya;
            case 'n':
                return h.e.flag_kyrgyzstan;
            case 'o':
                return h.e.flag_cambodia;
            case 'p':
                return h.e.flag_kiribati;
            case 'q':
                return h.e.flag_comoros;
            case 'r':
                return h.e.flag_saint_kitts_and_nevis;
            case 's':
                return h.e.flag_north_korea;
            case 't':
                return h.e.flag_south_korea;
            case 'u':
                return h.e.flag_kuwait;
            case 'v':
                return h.e.flag_cayman_islands;
            case 'w':
                return h.e.flag_kazakhstan;
            case 'x':
                return h.e.flag_laos;
            case 'y':
                return h.e.flag_lebanon;
            case 'z':
                return h.e.flag_saint_lucia;
            case '{':
                return h.e.flag_liechtenstein;
            case '|':
                return h.e.flag_sri_lanka;
            case JsonReaderKt.END_OBJ /* 125 */:
                return h.e.flag_liberia;
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                return h.e.flag_lesotho;
            case 127:
                return h.e.flag_lithuania;
            case 128:
                return h.e.flag_luxembourg;
            case 129:
                return h.e.flag_latvia;
            case 130:
                return h.e.flag_libya;
            case 131:
                return h.e.flag_morocco;
            case 132:
                return h.e.flag_monaco;
            case 133:
                return h.e.flag_moldova;
            case 134:
                return h.e.flag_of_montenegro;
            case 135:
                return h.e.flag_saint_martin;
            case 136:
                return h.e.flag_madagascar;
            case 137:
                return h.e.flag_marshall_islands;
            case 138:
                return h.e.flag_macedonia;
            case 139:
                return h.e.flag_mali;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                return h.e.flag_myanmar;
            case 141:
                return h.e.flag_mongolia;
            case 142:
                return h.e.flag_macao;
            case 143:
                return h.e.flag_northern_mariana_islands;
            case 144:
                return h.e.flag_martinique;
            case 145:
                return h.e.flag_mauritania;
            case 146:
                return h.e.flag_montserrat;
            case 147:
                return h.e.flag_malta;
            case 148:
                return h.e.flag_mauritius;
            case 149:
                return h.e.flag_maldives;
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                return h.e.flag_malawi;
            case 151:
                return h.e.flag_mexico;
            case 152:
                return h.e.flag_malaysia;
            case 153:
                return h.e.flag_mozambique;
            case 154:
                return h.e.flag_namibia;
            case 155:
                return h.e.flag_new_caledonia;
            case 156:
                return h.e.flag_niger;
            case 157:
                return h.e.flag_norfolk_island;
            case 158:
                return h.e.flag_nigeria;
            case 159:
                return h.e.flag_nicaragua;
            case 160:
                return h.e.flag_netherlands;
            case 161:
                return h.e.flag_norway;
            case 162:
                return h.e.flag_nepal;
            case 163:
                return h.e.flag_nauru;
            case 164:
                return h.e.flag_niue;
            case 165:
                return h.e.flag_new_zealand;
            case 166:
                return h.e.flag_oman;
            case 167:
                return h.e.flag_panama;
            case 168:
                return h.e.flag_peru;
            case 169:
                return h.e.flag_french_polynesia;
            case 170:
                return h.e.flag_papua_new_guinea;
            case 171:
                return h.e.flag_philippines;
            case 172:
                return h.e.flag_pakistan;
            case 173:
                return h.e.flag_poland;
            case 174:
                return h.e.flag_saint_pierre;
            case 175:
                return h.e.flag_pitcairn_islands;
            case 176:
                return h.e.flag_puerto_rico;
            case 177:
                return h.e.flag_palestine;
            case 178:
                return h.e.flag_portugal;
            case 179:
                return h.e.flag_palau;
            case 180:
                return h.e.flag_paraguay;
            case 181:
                return h.e.flag_qatar;
            case 182:
                return h.e.flag_martinique;
            case 183:
                return h.e.flag_romania;
            case 184:
                return h.e.flag_serbia;
            case 185:
                return h.e.flag_russian_federation;
            case 186:
                return h.e.flag_rwanda;
            case 187:
                return h.e.flag_saudi_arabia;
            case 188:
                return h.e.flag_soloman_islands;
            case 189:
                return h.e.flag_seychelles;
            case 190:
                return h.e.flag_sudan;
            case 191:
                return h.e.flag_sweden;
            case 192:
                return h.e.flag_singapore;
            case 193:
                return h.e.flag_saint_helena;
            case 194:
                return h.e.flag_slovenia;
            case 195:
                return h.e.flag_slovakia;
            case 196:
                return h.e.flag_sierra_leone;
            case 197:
                return h.e.flag_san_marino;
            case 198:
                return h.e.flag_senegal;
            case 199:
                return h.e.flag_somalia;
            case 200:
                return h.e.flag_suriname;
            case 201:
                return h.e.flag_south_sudan;
            case 202:
                return h.e.flag_sao_tome_and_principe;
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
                return h.e.flag_el_salvador;
            case LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE:
                return h.e.flag_sint_maarten;
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                return h.e.flag_syria;
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
                return h.e.flag_swaziland;
            case LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE:
                return h.e.flag_turks_and_caicos_islands;
            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                return h.e.flag_chad;
            case LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE:
                return h.e.flag_togo;
            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                return h.e.flag_thailand;
            case LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:
                return h.e.flag_tajikistan;
            case LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:
                return h.e.flag_tokelau;
            case 213:
                return h.e.flag_timor_leste;
            case 214:
                return h.e.flag_turkmenistan;
            case 215:
                return h.e.flag_tunisia;
            case 216:
                return h.e.flag_tonga;
            case 217:
                return h.e.flag_turkey;
            case 218:
                return h.e.flag_trinidad_and_tobago;
            case 219:
                return h.e.flag_tuvalu;
            case 220:
                return h.e.flag_taiwan;
            case 221:
                return h.e.flag_tanzania;
            case 222:
                return h.e.flag_ukraine;
            case 223:
                return h.e.flag_uganda;
            case 224:
                return h.e.flag_united_states_of_america;
            case 225:
                return h.e.flag_uruguay;
            case 226:
                return h.e.flag_uzbekistan;
            case 227:
                return h.e.flag_vatican_city;
            case 228:
                return h.e.flag_saint_vicent_and_the_grenadines;
            case 229:
                return h.e.flag_venezuela;
            case 230:
                return h.e.flag_british_virgin_islands;
            case 231:
                return h.e.flag_us_virgin_islands;
            case 232:
                return h.e.flag_vietnam;
            case 233:
                return h.e.flag_vanuatu;
            case 234:
                return h.e.flag_wallis_and_futuna;
            case 235:
                return h.e.flag_samoa;
            case 236:
                return h.e.flag_kosovo;
            case 237:
                return h.e.flag_yemen;
            case 238:
                return h.e.flag_martinique;
            case 239:
                return h.e.flag_south_africa;
            case 240:
                return h.e.flag_zambia;
            case 241:
                return h.e.flag_zimbabwe;
            default:
                return h.e.flag_transparent;
        }
    }

    private static a b(Context context, CountryCodePicker.e eVar, List<a> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (a aVar : list) {
                if (aVar.i.equals(str)) {
                    return aVar;
                }
            }
        }
        for (a aVar2 : d(context, eVar)) {
            if (aVar2.i.equals(str)) {
                return aVar2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(String str) {
        for (a aVar : c()) {
            if (aVar.h.equalsIgnoreCase(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static String b(Context context, CountryCodePicker.e eVar) {
        String str;
        CountryCodePicker.e eVar2 = f33209c;
        if (eVar2 == null || eVar2 != eVar || (str = e) == null || str.length() == 0) {
            e(context, eVar);
        }
        return e;
    }

    public static String c(Context context, CountryCodePicker.e eVar) {
        String str;
        CountryCodePicker.e eVar2 = f33209c;
        if (eVar2 == null || eVar2 != eVar || (str = f) == null || str.length() == 0) {
            e(context, eVar);
        }
        return f;
    }

    private static List<a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a("ad", "376", "Andorra", f33207a));
        arrayList.add(new a("ae", "971", "United Arab Emirates (UAE)", f33207a));
        arrayList.add(new a("af", "93", "Afghanistan", f33207a));
        arrayList.add(new a("ag", "1", "Antigua and Barbuda", f33207a));
        arrayList.add(new a("ai", "1", "Anguilla", f33207a));
        arrayList.add(new a("al", "355", "Albania", f33207a));
        arrayList.add(new a("am", "374", "Armenia", f33207a));
        arrayList.add(new a("ao", "244", "Angola", f33207a));
        arrayList.add(new a("aq", "672", "Antarctica", f33207a));
        arrayList.add(new a("ar", "54", "Argentina", f33207a));
        arrayList.add(new a("as", "1", "American Samoa", f33207a));
        arrayList.add(new a("at", "43", "Austria", f33207a));
        arrayList.add(new a("au", "61", "Australia", f33207a));
        arrayList.add(new a("aw", "297", "Aruba", f33207a));
        arrayList.add(new a("ax", "358", "Åland Islands", f33207a));
        arrayList.add(new a("az", "994", "Azerbaijan", f33207a));
        arrayList.add(new a("ba", "387", "Bosnia And Herzegovina", f33207a));
        arrayList.add(new a("bb", "1", "Barbados", f33207a));
        arrayList.add(new a("bd", "880", "Bangladesh", f33207a));
        arrayList.add(new a("be", "32", "Belgium", f33207a));
        arrayList.add(new a("bf", "226", "Burkina Faso", f33207a));
        arrayList.add(new a("bg", "359", "Bulgaria", f33207a));
        arrayList.add(new a("bh", "973", "Bahrain", f33207a));
        arrayList.add(new a("bi", "257", "Burundi", f33207a));
        arrayList.add(new a("bj", "229", "Benin", f33207a));
        arrayList.add(new a("bl", "590", "Saint Barthélemy", f33207a));
        arrayList.add(new a("bm", "1", "Bermuda", f33207a));
        arrayList.add(new a("bn", "673", "Brunei Darussalam", f33207a));
        arrayList.add(new a("bo", "591", "Bolivia, Plurinational State Of", f33207a));
        arrayList.add(new a("br", "55", "Brazil", f33207a));
        arrayList.add(new a("bs", "1", "Bahamas", f33207a));
        arrayList.add(new a("bt", "975", "Bhutan", f33207a));
        arrayList.add(new a("bw", "267", "Botswana", f33207a));
        arrayList.add(new a("by", "375", "Belarus", f33207a));
        arrayList.add(new a("bz", "501", "Belize", f33207a));
        arrayList.add(new a("ca", "1", "Canada", f33207a));
        arrayList.add(new a("cc", "61", "Cocos (keeling) Islands", f33207a));
        arrayList.add(new a("cd", "243", "Congo, The Democratic Republic Of The", f33207a));
        arrayList.add(new a("cf", "236", "Central African Republic", f33207a));
        arrayList.add(new a("cg", "242", "Congo", f33207a));
        arrayList.add(new a("ch", "41", "Switzerland", f33207a));
        arrayList.add(new a("ci", "225", "Côte D'ivoire", f33207a));
        arrayList.add(new a("ck", "682", "Cook Islands", f33207a));
        arrayList.add(new a("cl", "56", "Chile", f33207a));
        arrayList.add(new a("cm", "237", "Cameroon", f33207a));
        arrayList.add(new a("cn", "86", "China", f33207a));
        arrayList.add(new a("co", "57", "Colombia", f33207a));
        arrayList.add(new a("cr", "506", "Costa Rica", f33207a));
        arrayList.add(new a("cu", "53", "Cuba", f33207a));
        arrayList.add(new a("cv", "238", "Cape Verde", f33207a));
        arrayList.add(new a("cw", "599", "Curaçao", f33207a));
        arrayList.add(new a("cx", "61", "Christmas Island", f33207a));
        arrayList.add(new a("cy", "357", "Cyprus", f33207a));
        arrayList.add(new a("cz", "420", "Czech Republic", f33207a));
        arrayList.add(new a("de", "49", "Germany", f33207a));
        arrayList.add(new a("dj", "253", "Djibouti", f33207a));
        arrayList.add(new a("dk", "45", "Denmark", f33207a));
        arrayList.add(new a("dm", "1", "Dominica", f33207a));
        arrayList.add(new a("do", "1", "Dominican Republic", f33207a));
        arrayList.add(new a("dz", "213", "Algeria", f33207a));
        arrayList.add(new a("ec", "593", "Ecuador", f33207a));
        arrayList.add(new a("ee", "372", "Estonia", f33207a));
        arrayList.add(new a("eg", "20", "Egypt", f33207a));
        arrayList.add(new a("er", "291", "Eritrea", f33207a));
        arrayList.add(new a("es", "34", "Spain", f33207a));
        arrayList.add(new a("et", "251", "Ethiopia", f33207a));
        arrayList.add(new a("fi", "358", "Finland", f33207a));
        arrayList.add(new a("fj", "679", "Fiji", f33207a));
        arrayList.add(new a("fk", "500", "Falkland Islands (malvinas)", f33207a));
        arrayList.add(new a("fm", "691", "Micronesia, Federated States Of", f33207a));
        arrayList.add(new a("fo", "298", "Faroe Islands", f33207a));
        arrayList.add(new a("fr", "33", "France", f33207a));
        arrayList.add(new a("ga", "241", "Gabon", f33207a));
        arrayList.add(new a("gb", "44", "United Kingdom", f33207a));
        arrayList.add(new a("gd", "1", "Grenada", f33207a));
        arrayList.add(new a("ge", "995", "Georgia", f33207a));
        arrayList.add(new a("gf", "594", "French Guyana", f33207a));
        arrayList.add(new a("gh", "233", "Ghana", f33207a));
        arrayList.add(new a("gi", "350", "Gibraltar", f33207a));
        arrayList.add(new a("gl", "299", "Greenland", f33207a));
        arrayList.add(new a("gm", "220", "Gambia", f33207a));
        arrayList.add(new a("gn", "224", "Guinea", f33207a));
        arrayList.add(new a("gp", "450", "Guadeloupe", f33207a));
        arrayList.add(new a("gq", "240", "Equatorial Guinea", f33207a));
        arrayList.add(new a("gr", "30", "Greece", f33207a));
        arrayList.add(new a("gt", "502", "Guatemala", f33207a));
        arrayList.add(new a("gu", "1", "Guam", f33207a));
        arrayList.add(new a("gw", "245", "Guinea-bissau", f33207a));
        arrayList.add(new a("gy", "592", "Guyana", f33207a));
        arrayList.add(new a("hk", "852", "Hong Kong", f33207a));
        arrayList.add(new a("hn", "504", "Honduras", f33207a));
        arrayList.add(new a("hr", "385", "Croatia", f33207a));
        arrayList.add(new a("ht", "509", "Haiti", f33207a));
        arrayList.add(new a("hu", "36", "Hungary", f33207a));
        arrayList.add(new a("id", "62", "Indonesia", f33207a));
        arrayList.add(new a("ie", "353", "Ireland", f33207a));
        arrayList.add(new a("il", "972", "Israel", f33207a));
        arrayList.add(new a("im", "44", "Isle Of Man", f33207a));
        arrayList.add(new a("is", "354", "Iceland", f33207a));
        arrayList.add(new a("in", "91", "India", f33207a));
        arrayList.add(new a("io", "246", "British Indian Ocean Territory", f33207a));
        arrayList.add(new a("iq", "964", "Iraq", f33207a));
        arrayList.add(new a("ir", "98", "Iran, Islamic Republic Of", f33207a));
        arrayList.add(new a("it", "39", "Italy", f33207a));
        arrayList.add(new a("je", "44", "Jersey ", f33207a));
        arrayList.add(new a("jm", "1", "Jamaica", f33207a));
        arrayList.add(new a("jo", "962", "Jordan", f33207a));
        arrayList.add(new a("jp", "81", "Japan", f33207a));
        arrayList.add(new a("ke", "254", "Kenya", f33207a));
        arrayList.add(new a("kg", "996", "Kyrgyzstan", f33207a));
        arrayList.add(new a("kh", "855", "Cambodia", f33207a));
        arrayList.add(new a("ki", "686", "Kiribati", f33207a));
        arrayList.add(new a("km", "269", "Comoros", f33207a));
        arrayList.add(new a("kn", "1", "Saint Kitts and Nevis", f33207a));
        arrayList.add(new a("kp", "850", "North Korea", f33207a));
        arrayList.add(new a("kr", "82", "South Korea", f33207a));
        arrayList.add(new a("kw", "965", "Kuwait", f33207a));
        arrayList.add(new a("ky", "1", "Cayman Islands", f33207a));
        arrayList.add(new a("kz", "7", "Kazakhstan", f33207a));
        arrayList.add(new a("la", "856", "Lao People's Democratic Republic", f33207a));
        arrayList.add(new a("lb", "961", "Lebanon", f33207a));
        arrayList.add(new a("lc", "1", "Saint Lucia", f33207a));
        arrayList.add(new a("li", "423", "Liechtenstein", f33207a));
        arrayList.add(new a("lk", "94", "Sri Lanka", f33207a));
        arrayList.add(new a("lr", "231", "Liberia", f33207a));
        arrayList.add(new a("ls", "266", "Lesotho", f33207a));
        arrayList.add(new a("lt", "370", "Lithuania", f33207a));
        arrayList.add(new a("lu", "352", "Luxembourg", f33207a));
        arrayList.add(new a("lv", "371", "Latvia", f33207a));
        arrayList.add(new a("ly", "218", "Libya", f33207a));
        arrayList.add(new a("ma", "212", "Morocco", f33207a));
        arrayList.add(new a("mc", "377", "Monaco", f33207a));
        arrayList.add(new a("md", "373", "Moldova, Republic Of", f33207a));
        arrayList.add(new a("me", "382", "Montenegro", f33207a));
        arrayList.add(new a("mf", "590", "Saint Martin", f33207a));
        arrayList.add(new a("mg", "261", "Madagascar", f33207a));
        arrayList.add(new a("mh", "692", "Marshall Islands", f33207a));
        arrayList.add(new a("mk", "389", "Macedonia (FYROM)", f33207a));
        arrayList.add(new a("ml", "223", "Mali", f33207a));
        arrayList.add(new a("mm", "95", "Myanmar", f33207a));
        arrayList.add(new a("mn", "976", "Mongolia", f33207a));
        arrayList.add(new a("mo", "853", "Macau", f33207a));
        arrayList.add(new a("mp", "1", "Northern Mariana Islands", f33207a));
        arrayList.add(new a("mq", "596", "Martinique", f33207a));
        arrayList.add(new a("mr", "222", "Mauritania", f33207a));
        arrayList.add(new a("ms", "1", "Montserrat", f33207a));
        arrayList.add(new a("mt", "356", "Malta", f33207a));
        arrayList.add(new a("mu", "230", "Mauritius", f33207a));
        arrayList.add(new a("mv", "960", "Maldives", f33207a));
        arrayList.add(new a("mw", "265", "Malawi", f33207a));
        arrayList.add(new a("mx", "52", "Mexico", f33207a));
        arrayList.add(new a("my", "60", "Malaysia", f33207a));
        arrayList.add(new a("mz", "258", "Mozambique", f33207a));
        arrayList.add(new a("na", "264", "Namibia", f33207a));
        arrayList.add(new a("nc", "687", "New Caledonia", f33207a));
        arrayList.add(new a("ne", "227", "Niger", f33207a));
        arrayList.add(new a("nf", "672", "Norfolk Islands", f33207a));
        arrayList.add(new a("ng", "234", "Nigeria", f33207a));
        arrayList.add(new a("ni", "505", "Nicaragua", f33207a));
        arrayList.add(new a("nl", "31", "Netherlands", f33207a));
        arrayList.add(new a("no", "47", "Norway", f33207a));
        arrayList.add(new a("np", "977", "Nepal", f33207a));
        arrayList.add(new a("nr", "674", "Nauru", f33207a));
        arrayList.add(new a("nu", "683", "Niue", f33207a));
        arrayList.add(new a("nz", "64", "New Zealand", f33207a));
        arrayList.add(new a("om", "968", "Oman", f33207a));
        arrayList.add(new a("pa", "507", "Panama", f33207a));
        arrayList.add(new a("pe", "51", "Peru", f33207a));
        arrayList.add(new a("pf", "689", "French Polynesia", f33207a));
        arrayList.add(new a("pg", "675", "Papua New Guinea", f33207a));
        arrayList.add(new a("ph", "63", "Philippines", f33207a));
        arrayList.add(new a("pk", "92", "Pakistan", f33207a));
        arrayList.add(new a("pl", "48", "Poland", f33207a));
        arrayList.add(new a("pm", "508", "Saint Pierre And Miquelon", f33207a));
        arrayList.add(new a("pn", "870", "Pitcairn Islands", f33207a));
        arrayList.add(new a("pr", "1", "Puerto Rico", f33207a));
        arrayList.add(new a("ps", "970", "Palestine", f33207a));
        arrayList.add(new a("pt", "351", "Portugal", f33207a));
        arrayList.add(new a("pw", "680", "Palau", f33207a));
        arrayList.add(new a("py", "595", "Paraguay", f33207a));
        arrayList.add(new a("qa", "974", "Qatar", f33207a));
        arrayList.add(new a("re", "262", "Réunion", f33207a));
        arrayList.add(new a("ro", "40", "Romania", f33207a));
        arrayList.add(new a("rs", "381", "Serbia", f33207a));
        arrayList.add(new a("ru", "7", "Russian Federation", f33207a));
        arrayList.add(new a("rw", "250", "Rwanda", f33207a));
        arrayList.add(new a("sa", "966", "Saudi Arabia", f33207a));
        arrayList.add(new a("sb", "677", "Solomon Islands", f33207a));
        arrayList.add(new a("sc", "248", "Seychelles", f33207a));
        arrayList.add(new a("sd", "249", "Sudan", f33207a));
        arrayList.add(new a("se", "46", "Sweden", f33207a));
        arrayList.add(new a("sg", "65", "Singapore", f33207a));
        arrayList.add(new a("sh", "290", "Saint Helena, Ascension And Tristan Da Cunha", f33207a));
        arrayList.add(new a("si", "386", "Slovenia", f33207a));
        arrayList.add(new a("sk", "421", "Slovakia", f33207a));
        arrayList.add(new a("sl", "232", "Sierra Leone", f33207a));
        arrayList.add(new a("sm", "378", "San Marino", f33207a));
        arrayList.add(new a("sn", "221", "Senegal", f33207a));
        arrayList.add(new a("so", "252", "Somalia", f33207a));
        arrayList.add(new a("sr", "597", "Suriname", f33207a));
        arrayList.add(new a("ss", "211", "South Sudan", f33207a));
        arrayList.add(new a("st", "239", "Sao Tome And Principe", f33207a));
        arrayList.add(new a("sv", "503", "El Salvador", f33207a));
        arrayList.add(new a("sx", "1", "Sint Maarten", f33207a));
        arrayList.add(new a("sy", "963", "Syrian Arab Republic", f33207a));
        arrayList.add(new a("sz", "268", "Swaziland", f33207a));
        arrayList.add(new a("tc", "1", "Turks and Caicos Islands", f33207a));
        arrayList.add(new a("td", "235", "Chad", f33207a));
        arrayList.add(new a("tg", "228", "Togo", f33207a));
        arrayList.add(new a("th", "66", "Thailand", f33207a));
        arrayList.add(new a("tj", "992", "Tajikistan", f33207a));
        arrayList.add(new a("tk", "690", "Tokelau", f33207a));
        arrayList.add(new a("tl", "670", "Timor-leste", f33207a));
        arrayList.add(new a("tm", "993", "Turkmenistan", f33207a));
        arrayList.add(new a("tn", "216", "Tunisia", f33207a));
        arrayList.add(new a("to", "676", "Tonga", f33207a));
        arrayList.add(new a("tr", "90", "Turkey", f33207a));
        arrayList.add(new a("tt", "1", "Trinidad &amp; Tobago", f33207a));
        arrayList.add(new a("tv", "688", "Tuvalu", f33207a));
        arrayList.add(new a("tw", "886", "Taiwan", f33207a));
        arrayList.add(new a("tz", "255", "Tanzania, United Republic Of", f33207a));
        arrayList.add(new a("ua", "380", "Ukraine", f33207a));
        arrayList.add(new a("ug", "256", "Uganda", f33207a));
        arrayList.add(new a("us", "1", "United States", f33207a));
        arrayList.add(new a("uy", "598", "Uruguay", f33207a));
        arrayList.add(new a("uz", "998", "Uzbekistan", f33207a));
        arrayList.add(new a("va", "379", "Holy See (vatican City State)", f33207a));
        arrayList.add(new a("vc", "1", "Saint Vincent &amp; The Grenadines", f33207a));
        arrayList.add(new a("ve", "58", "Venezuela, Bolivarian Republic Of", f33207a));
        arrayList.add(new a("vg", "1", "British Virgin Islands", f33207a));
        arrayList.add(new a("vi", "1", "US Virgin Islands", f33207a));
        arrayList.add(new a("vn", "84", "Vietnam", f33207a));
        arrayList.add(new a("vu", "678", "Vanuatu", f33207a));
        arrayList.add(new a("wf", "681", "Wallis And Futuna", f33207a));
        arrayList.add(new a("ws", "685", "Samoa", f33207a));
        arrayList.add(new a("xk", "383", "Kosovo", f33207a));
        arrayList.add(new a("ye", "967", "Yemen", f33207a));
        arrayList.add(new a("yt", "262", "Mayotte", f33207a));
        arrayList.add(new a("za", "27", "South Africa", f33207a));
        arrayList.add(new a("zm", "260", "Zambia", f33207a));
        arrayList.add(new a("zw", "263", "Zimbabwe", f33207a));
        return arrayList;
    }

    private String d() {
        return this.h;
    }

    public static List<a> d(Context context, CountryCodePicker.e eVar) {
        List<a> list;
        CountryCodePicker.e eVar2 = f33209c;
        if (eVar2 == null || eVar != eVar2 || (list = g) == null || list.size() == 0) {
            e(context, eVar);
        }
        return g;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0430  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(android.content.Context r7, com.hbb20.CountryCodePicker.e r8) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.a.e(android.content.Context, com.hbb20.CountryCodePicker$e):void");
    }

    public final int a() {
        if (this.l == -99) {
            this.l = b(this);
        }
        return this.l;
    }

    public final void b() {
        try {
            StringBuilder sb = new StringBuilder("Country->");
            sb.append(this.h);
            sb.append(":");
            sb.append(this.i);
            sb.append(":");
            sb.append(this.j);
        } catch (NullPointerException e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str) {
        String lowerCase = str.toLowerCase();
        return a("Name", this.j, lowerCase) || a("NameCode", this.h, lowerCase) || a("PhoneCode", this.i, lowerCase) || a("EnglishName", this.k, lowerCase);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(a aVar) {
        return Collator.getInstance().compare(this.j, aVar.j);
    }
}
