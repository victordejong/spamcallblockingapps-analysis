package p193e.p194a.p1342w4.p1345t.p1346a;

import com.huawei.hms.opendevice.AbstractC2405c;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* renamed from: e.a.w4.t.a.b */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/a/b.class */
public class C21296b {

    /* renamed from: a */
    public static final String[] f59650a = {"g", "gg", "n", "d", "dd", "r", "m", C22021b.f61237c, "bb", "s", "ss", "", "j", "jj", AbstractC2405c.f7629a, "k", "t", "p", "h"};

    /* renamed from: b */
    public static final String[] f59651b = {"a", "ae", "ya", "yae", "eo", "e", "yeo", "ye", "o", "wa", "wae", "oe", "yo", "u", "weo", "we", "wi", "yu", "eu", "yi", "i"};

    /* renamed from: c */
    public static final String[] f59652c = {"g", "gg", "gs", "n", "nj", "nh", "d", "l", "lg", "lm", "lb", "ls", "lt", "lp", "lh", "m", C22021b.f61237c, "bs", "s", "ss", "ng", "j", AbstractC2405c.f7629a, "k", "t", "p", "h"};

    /* renamed from: a */
    public static String[] m9937a(char c, boolean z) {
        int i;
        String[] strArr = f59651b;
        String[] strArr2 = f59650a;
        if (!m9936b(c)) {
            return null;
        }
        int i2 = c - 44032;
        int i3 = i2 % 28;
        int i4 = ((i2 - i3) % 588) / 28;
        int i5 = i2 / 588;
        if (i3 == 0) {
            if (!z) {
                return new String[]{new String(new char[]{"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ".charAt(i5), "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ".charAt(i4)})};
            }
            return new String[]{new String(new char[]{"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ".charAt(i5), "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ".charAt(i4)}), strArr2[i5] + strArr[i4]};
        } else if (!z) {
            return new String[]{new String(new char[]{"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ".charAt(i5), "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ".charAt(i4), "ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ".charAt(i3 - 1)})};
        } else {
            return new String[]{new String(new char[]{"ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ".charAt(i5), "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ".charAt(i4), "ㄱㄲㄳㄴㄵㄶㄷㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅄㅅㅆㅇㅈㅊㅋㅌㅍㅎ".charAt(i3 - 1)}), strArr2[i5] + strArr[i4] + f59652c[i]};
        }
    }

    /* renamed from: b */
    public static boolean m9936b(char c) {
        return c >= 44032 && c <= 55203;
    }
}
