package p459j.p460a.p474c0.p480d.p481d;

import android.util.SparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.PointerIconCompat;
import com.aotter.net.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
/* renamed from: j.a.c0.d.d.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/c.class */
public class C11692c {

    /* renamed from: a */
    public static final int[] f26225a = {0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 18, 38, 39, 40, 106, 113, 114, 2025, 2026, 1000, PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, 2085};

    /* renamed from: b */
    public static final String[] f26226b = {"*", "us-ascii", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5", "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "shift_JIS", "euc-jp", "euc-kr", "iso-2022-jp", "iso-2022-jp-2", JsonRequest.PROTOCOL_CHARSET, "gbk", "gb18030", "gb2312", "big5", "iso-10646-ucs-2", "utf-16", "hz-gb-2312"};

    /* renamed from: c */
    public static final SparseArray<String> f26227c = new SparseArray<>();

    /* renamed from: d */
    public static final SimpleArrayMap<String, Integer> f26228d = new SimpleArrayMap<>();

    static {
        int length = f26225a.length;
        for (int i = 0; i <= length - 1; i++) {
            f26227c.put(f26225a[i], f26226b[i]);
            f26228d.put(f26226b[i], Integer.valueOf(f26225a[i]));
        }
    }

    /* renamed from: a */
    public static int m8592a(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return -1;
        }
        Integer num = f26228d.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new UnsupportedEncodingException();
    }

    /* renamed from: a */
    public static String m8593a(int i) throws UnsupportedEncodingException {
        String str = f26227c.get(i);
        if (str != null) {
            return str;
        }
        throw new UnsupportedEncodingException();
    }
}
