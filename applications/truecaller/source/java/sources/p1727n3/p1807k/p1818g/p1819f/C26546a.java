package p1727n3.p1807k.p1818g.p1819f;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: n3.k.g.f.a */
/* loaded from: classes-dex2jar.jar:n3/k/g/f/a.class */
public class C26546a {

    /* renamed from: a */
    public static final C26547a[] f74375a = {new C26547a(99, 99, -1, -1), new C26547a(35, 36, -1, -1), new C26547a(71, 72, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(85, 86, -1, -1), new C26547a(90, 96, -1, -1), new C26547a(80, 81, -1, -1), new C26547a(6, 6, -1, -1), new C26547a(20, 20, -1, -1), new C26547a(19, 19, -1, -1), new C26547a(32, 34, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(30, 31, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(50, 52, -1, -1), new C26547a(83, 83, -1, -1), new C26547a(60, 62, -1, -1), new C26547a(46, 47, -1, -1), new C26547a(66, 67, 73, -1), new C26547a(40, 42, -1, -1), new C26547a(70, 71, -1, -1), new C26547a(1, 2, -1, -1), new C26547a(20, 21, -1, -1), new C26547a(3, 4, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(48, 49, -1, -1), new C26547a(55, 56, -1, -1), new C26547a(63, 65, -1, -1), new C26547a(96, 96, -1, -1), new C26547a(38, 39, -1, -1), new C26547a(55, 56, -1, -1), new C26547a(27, 28, -1, -1), new C26547a(58, 58, -1, -1), new C26547a(68, 69, -1, -1), new C26547a(3, 4, -1, -1), new C26547a(7, 8, -1, -1), new C26547a(87, 88, 86, -1), new C26547a(88, 89, 96, -1), new C26547a(10, 14, 0, 6), new C26547a(43, 45, -1, -1), new C26547a(73, 74, -1, -1), new C26547a(97, 97, -1, -1), new C26547a(15, 19, -1, -1), new C26547a(6, 6, 0, 9), new C26547a(96, 96, -1, -1), new C26547a(2, 2, -1, -1), new C26547a(29, 29, -1, -1), new C26547a(57, 57, -1, -1), new C26547a(37, 38, -1, -1), new C26547a(75, 79, 87, 88), new C26547a(84, 84, -1, -1), new C26547a(22, 24, 20, -1), new C26547a(6, 9, -1, -1), new C26547a(5, 5, -1, -1), new C26547a(98, 99, -1, -1), new C26547a(53, 54, -1, -1), new C26547a(24, 26, -1, -1), new C26547a(82, 83, -1, -1)};

    /* renamed from: b */
    public static final Pattern f74376b = Pattern.compile("[^,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: c */
    public static final Pattern f74377c = Pattern.compile("(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: d */
    public static final Pattern f74378d = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+states[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mariana[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(nd|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+hampshire)|(nj|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+jersey)|(nm|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+island)|(sc|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(sd|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+virginia)|(wy|wyoming))(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: e */
    public static final Pattern f74379e = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: f */
    public static final Pattern f74380f = Pattern.compile("([0-9]+)(st|nd|rd|th)", 2);

    /* renamed from: g */
    public static final Pattern f74381g = Pattern.compile("(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: n3.k.g.f.a$a */
    /* loaded from: classes-dex2jar.jar:n3/k/g/f/a$a.class */
    public static class C26547a {

        /* renamed from: a */
        public int f74382a;

        /* renamed from: b */
        public int f74383b;

        /* renamed from: c */
        public int f74384c;

        /* renamed from: d */
        public int f74385d;

        public C26547a(int i, int i2, int i3, int i4) {
            this.f74382a = i;
            this.f74383b = i2;
            this.f74384c = i3;
            this.f74385d = i4;
        }
    }

    /* renamed from: a */
    public static boolean m1701a(String str) {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= str.length()) {
                break;
            }
            int i4 = i;
            if (Character.isDigit(str.charAt(i2))) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i > 5) {
            return false;
        }
        Matcher matcher = f74380f.matcher(str);
        if (!matcher.find()) {
            return true;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        if (parseInt == 0) {
            return false;
        }
        String lowerCase = matcher.group(2).toLowerCase(Locale.getDefault());
        int i5 = parseInt % 10;
        Object obj = "th";
        if (i5 == 1) {
            if (parseInt % 100 != 11) {
                obj = "st";
            }
            return lowerCase.equals(obj);
        } else if (i5 == 2) {
            if (parseInt % 100 != 12) {
                obj = "nd";
            }
            return lowerCase.equals(obj);
        } else if (i5 != 3) {
            return lowerCase.equals("th");
        } else {
            if (parseInt % 100 != 13) {
                obj = "rd";
            }
            return lowerCase.equals(obj);
        }
    }
}
