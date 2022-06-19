package p000;

import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.exoplayer2.C0515C;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p000.q71;
import p000.r71;
import p000.w91;
/* renamed from: ka1 */
/* loaded from: classes3-dex2jar.jar:ka1.class */
public class ka1 {

    /* renamed from: a */
    public static final String f6853a = "ka1";

    /* renamed from: b */
    public static final NavigableMap<Long, String> f6854b;

    static {
        "0123456789ABCDEF".toCharArray();
        TreeMap treeMap = new TreeMap();
        f6854b = treeMap;
        treeMap.put(1000L, "k");
        treeMap.put(Long.valueOf((long) C0515C.MICROS_PER_SECOND), "M");
        treeMap.put(Long.valueOf((long) C0515C.NANOS_PER_SECOND), "B");
        treeMap.put(1000000000000L, "T");
        treeMap.put(1000000000000000L, "P");
        treeMap.put(1000000000000000000L, "E");
    }

    /* renamed from: a */
    public static <T> List<T> m1423a(List<T>... listArr) {
        ArrayList arrayList = new ArrayList();
        for (List<T> list : listArr) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static Integer[] m1422b(SparseArray<?> sparseArray) {
        Integer[] numArr = new Integer[sparseArray.size()];
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            numArr[i] = Integer.valueOf(sparseArray.keyAt(i));
        }
        return numArr;
    }

    /* renamed from: c */
    public static Long[] m1421c(C1344e4<?> c1344e4) {
        Long[] lArr = new Long[c1344e4.m2248o()];
        int m2248o = c1344e4.m2248o();
        for (int i = 0; i < m2248o; i++) {
            lArr[i] = Long.valueOf(c1344e4.m2252k(i));
        }
        return lArr;
    }

    /* renamed from: d */
    public static <T> T[] m1420d(SparseArray<T> sparseArray, Class<T> cls) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, sparseArray.size()));
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            tArr[i] = sparseArray.valueAt(i);
        }
        return tArr;
    }

    /* renamed from: e */
    public static void m1419e() {
        try {
            m1417g(lm1.m1292a().getCacheDir());
            File[] externalCacheDirs = Build.VERSION.SDK_INT < 19 ? new File[]{lm1.m1292a().getExternalCacheDir()} : lm1.m1292a().getExternalCacheDirs();
            if (externalCacheDirs == null || externalCacheDirs.length <= 0) {
                return;
            }
            for (File file : externalCacheDirs) {
                if (file != null) {
                    if (m1414j(file) >= 3072 && file.lastModified() <= System.currentTimeMillis() - 259200000) {
                        m1417g(file);
                    }
                }
            }
        } catch (Throwable th) {
            j91.m1504l(f6853a, "Unable to clear cache", th);
        }
    }

    /* renamed from: f */
    public static String m1418f(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        try {
            "U03aAX#BtaGpw0z_*SLPaGRbG-V1e2Ix".getBytes();
            b91.m5727g().getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(k61.m1448n(), "AES");
            byte[] decode = Base64.decode(str, 0);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(Arrays.copyOfRange(decode, 0, 16));
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Arrays.copyOfRange(decode, 16, decode.length)));
        } catch (Throwable th) {
            j91.m1504l(f6853a, "Fail.", th);
            return null;
        }
    }

    /* renamed from: g */
    public static void m1417g(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m1417g(file2);
            }
        }
        file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1416h(java.io.File r5) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ka1.m1416h(java.io.File):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1415i(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ka1.m1415i(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: j */
    public static long m1414j(File file) {
        File[] listFiles;
        char c = 0;
        if (file == null) {
            return 0L;
        }
        for (File file2 : file.listFiles()) {
            c += file2.isFile() ? file2.length() : m1414j(file2);
        }
        return c;
    }

    /* renamed from: k */
    public static <T> boolean m1413k(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList(Arrays.asList(tArr));
        arrayList.retainAll(Arrays.asList(tArr2));
        return arrayList.size() > 0;
    }

    /* renamed from: l */
    public static void m1412l() {
        EnumSet allOf = EnumSet.allOf(r71.EnumC1638a.class);
        Bundle bundle = new Bundle();
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7909M0;
        if (enumC1638a.m695a()) {
            bundle.putSerializable("Value", enumC1638a);
            r71.EnumC1638a enumC1638a2 = r71.EnumC1638a.f7911N0;
            if (enumC1638a2.m695a()) {
                bundle.putSerializable("Value", enumC1638a2);
            }
        }
        w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_USERS, bundle);
        allOf.removeAll(EnumSet.of(enumC1638a, r71.EnumC1638a.f7911N0));
        bundle.clear();
        bundle.putString("Value", Resources.getSystem().getConfiguration().locale.getLanguage());
        w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_LANGUAGE, bundle);
        bundle.clear();
        r71.EnumC1638a enumC1638a3 = r71.EnumC1638a.f7970n;
        bundle.putSerializable("Value", q71.EnumC1614a.m908h(Integer.valueOf(enumC1638a3.m691e())));
        w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_BLOCKING_L1, bundle);
        allOf.remove(enumC1638a3);
        bundle.clear();
        r71.EnumC1638a enumC1638a4 = r71.EnumC1638a.f7973o;
        bundle.putSerializable("Value", q71.EnumC1614a.m908h(Integer.valueOf(enumC1638a4.m691e())));
        w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_BLOCKING_L2, bundle);
        allOf.remove(enumC1638a4);
        bundle.clear();
        bundle.putSerializable("Value", q71.EnumC1616c.m906b());
        w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_BLOCKING_CONFLICT_PRIORITY, bundle);
        allOf.remove(r71.EnumC1638a.f7894F);
        if (fa1.m1829u()) {
            w91.m276b(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_MESSAGING_APP);
        }
        if (fa1.m1830t()) {
            w91.m276b(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS_PHONE_APP);
        }
        if (fa1.m1847c()) {
            bundle.clear();
            bundle.putSerializable("Value", Boolean.valueOf(r71.EnumC1638a.f7994v.m695a()));
            w91.m275c(lm1.m1292a(), w91.EnumC1708a.SETTING_DYNAMICS_CUSTOM_CALL_SCREEN_UI, bundle);
        }
        allOf.remove(r71.EnumC1638a.f7967m);
        Iterator it = allOf.iterator();
        while (it.hasNext()) {
            r71.EnumC1638a enumC1638a5 = (r71.EnumC1638a) it.next();
            if (enumC1638a5.m690f().contains("BLOCKING_") || enumC1638a5.m690f().contains("GENERAL_")) {
                if ((enumC1638a5.m690f().equals(r71.EnumC1638a.f7896G.m690f()) && r71.C1639b.m679f().f6314a) || (enumC1638a5.m686j() == Boolean.class && enumC1638a5.m695a())) {
                    bundle.clear();
                    bundle.putSerializable("Value", enumC1638a5);
                    w91.m275c(fa1.m1840j(), w91.EnumC1708a.SETTING_DYNAMICS, bundle);
                }
            }
        }
    }

    /* renamed from: m */
    public static String m1411m(Serializable serializable) {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
        } catch (Throwable th) {
            objectOutputStream = null;
        }
        try {
            objectOutputStream2.writeObject(serializable);
            try {
                objectOutputStream2.close();
            } catch (Throwable th2) {
            }
            return da1.m2710f(byteArrayOutputStream.toByteArray());
        } catch (Throwable th3) {
            objectOutputStream = objectOutputStream2;
            if (objectOutputStream == null) {
                return null;
            }
            try {
                objectOutputStream.close();
                return null;
            } catch (Throwable th4) {
                return null;
            }
        }
    }

    /* renamed from: n */
    public static String m1410n(String str) {
        String str2;
        String str3;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            try {
                messageDigest.update(str.getBytes(C0515C.UTF8_NAME));
                byte[] digest = messageDigest.digest();
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
                StringBuilder sb = new StringBuilder();
                for (byte b : digest) {
                    sb.append(cArr[(b >> 4) & 15]);
                    sb.append(cArr[b & 15]);
                }
                return sb.toString();
            } catch (UnsupportedEncodingException e) {
                e = e;
                str2 = f6853a;
                str3 = "Unable to get source bytes";
                j91.m1504l(str2, str3, e);
                return null;
            }
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            str2 = f6853a;
            str3 = "Unable to initialize sha1";
        }
    }

    /* renamed from: o */
    public static String m1409o(long j) {
        String[] split;
        if (j == Long.MIN_VALUE) {
            return m1409o(C0515C.TIME_UNSET);
        }
        if (j < 0) {
            return "-" + m1409o(-j);
        } else if (j < 10000) {
            return Long.toString(j);
        } else {
            long round = Math.round((float) j);
            Map.Entry<Long, String> floorEntry = f6854b.floorEntry(Long.valueOf(round));
            Long key = floorEntry.getKey();
            String value = floorEntry.getValue();
            String format = String.format(Locale.US, "%.1f", Double.valueOf(round / key.longValue()));
            if (format.split("\\.")[1].equals("0")) {
                return split[0] + value;
            }
            return format + value;
        }
    }

    /* renamed from: p */
    public static String[] m1408p(Object[] objArr) {
        String[] strArr = new String[objArr.length];
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            strArr[i] = String.valueOf(objArr[i]);
        }
        return strArr;
    }

    /* renamed from: q */
    public static String m1407q(String str, int i) {
        Charset forName = Charset.forName(C0515C.UTF8_NAME);
        byte[] bytes = str.getBytes(Charset.forName(C0515C.UTF8_NAME));
        CharsetDecoder newDecoder = forName.newDecoder();
        newDecoder.onMalformedInput(CodingErrorAction.IGNORE);
        newDecoder.reset();
        int i2 = i - 1;
        try {
            return newDecoder.decode(ByteBuffer.wrap(bytes, 0, i2)).toString();
        } catch (Throwable th) {
            String str2 = str;
            if (str.length() > i) {
                str2 = str.substring(0, i2);
            }
            return str2;
        }
    }

    /* renamed from: r */
    public static Object m1406r(String str) {
        ObjectInputStream objectInputStream;
        Object obj;
        try {
            objectInputStream = new ObjectInputStream(new ByteArrayInputStream(da1.m2715a(str)));
            try {
                obj = objectInputStream.readObject();
            } catch (Throwable th) {
                obj = null;
            }
        } catch (Throwable th2) {
            objectInputStream = null;
            obj = null;
        }
        Object obj2 = obj;
        if (objectInputStream != null) {
            obj2 = obj;
            try {
                objectInputStream.close();
                obj2 = obj;
            } catch (la1 e) {
            }
        }
        return obj2;
    }
}
