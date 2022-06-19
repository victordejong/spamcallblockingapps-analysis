package p193e.p1432d.p1436b.p1437a.p1438b;

import android.util.SparseArray;
import com.truecaller.log.AssertionUtil;
import java.io.UnsupportedEncodingException;
import p1727n3.p1788g.C26187h;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* renamed from: e.d.b.a.b.c */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/c.class */
public class C22108c {

    /* renamed from: a */
    public static final int[] f61421a;

    /* renamed from: b */
    public static final String[] f61422b;

    /* renamed from: c */
    public static final SparseArray<String> f61423c = new SparseArray<>();

    /* renamed from: d */
    public static final C26187h<String, Integer> f61424d = new C26187h<>();

    static {
        int[] iArr = {0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 18, 38, 39, 40, 106, 113, 114, 2025, 2026, 1000, 1015, 2085};
        f61421a = iArr;
        String[] strArr = {"*", "us-ascii", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5", "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "shift_JIS", "euc-jp", "euc-kr", "iso-2022-jp", "iso-2022-jp-2", AbstractC22212i.PROTOCOL_CHARSET, "gbk", "gb18030", "gb2312", "big5", "iso-10646-ucs-2", "utf-16", "hz-gb-2312"};
        f61422b = strArr;
        AssertionUtil.AlwaysFatal.isTrue(iArr.length == strArr.length, new String[0]);
        int length = iArr.length;
        for (int i = 0; i <= length - 1; i++) {
            SparseArray<String> sparseArray = f61423c;
            int[] iArr2 = f61421a;
            int i2 = iArr2[i];
            String[] strArr2 = f61422b;
            sparseArray.put(i2, strArr2[i]);
            f61424d.put(strArr2[i], Integer.valueOf(iArr2[i]));
        }
    }

    /* renamed from: a */
    public static String m8797a(int i) throws UnsupportedEncodingException {
        String str = f61423c.get(i);
        if (str != null) {
            return str;
        }
        throw new UnsupportedEncodingException();
    }
}
