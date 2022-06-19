package com.huawei.hms.opendevice;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.android.hms.openid.C2221R;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import com.huawei.secure.android.common.encrypt.utils.BaseKeyUtil;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.RootKeyUtil;
import com.huawei.secure.android.common.encrypt.utils.WorkKeyCryptUtil;
import com.huawei.secure.android.common.util.IOUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.huawei.hms.opendevice.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/c.class */
public abstract class AbstractC2405c {

    /* renamed from: a */
    public static final String f7629a = "c";

    /* renamed from: b */
    public static Map<String, String> f7630b = new HashMap();

    /* renamed from: c */
    public static final Object f7631c = new Object();

    /* renamed from: a */
    public static String m37451a() {
        return "2A57086C86EF54970C1E6EB37BFC72B1";
    }

    /* renamed from: a */
    public static String m37449a(String str) {
        String str2 = f7630b.get(str);
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: a */
    public static void m37448a(String str, Context context) {
        String m37395c = AbstractC2418p.m37395c(context.getApplicationContext());
        if (!TextUtils.isEmpty(m37395c)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(m37395c);
                sb.append("/files/s");
                m37447a("s", str, sb.toString());
            } catch (IOException e) {
                HMSLog.m37195e(f7629a, "save keyS IOException.");
            }
        }
    }

    /* renamed from: a */
    public static void m37447a(String str, String str2, String str3) throws IOException {
        OutputStreamWriter outputStreamWriter;
        BufferedWriter bufferedWriter;
        Throwable th;
        BufferedWriter bufferedWriter2;
        HMSLog.m37193i(f7629a, "save local secret key.");
        try {
            File file = new File(str3);
            AbstractC2421s.m37386a(file);
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), StringConstant.UTF8);
            try {
                bufferedWriter2 = new BufferedWriter(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = null;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStreamWriter = null;
            bufferedWriter = null;
        }
        try {
            bufferedWriter2.write(str2);
            bufferedWriter2.flush();
            f7630b.put(str, str2);
            IOUtils.closeQuietly((Writer) outputStreamWriter);
            IOUtils.closeQuietly((Writer) bufferedWriter2);
        } catch (Throwable th4) {
            th = th4;
            bufferedWriter = bufferedWriter2;
            IOUtils.closeQuietly((Writer) outputStreamWriter);
            IOUtils.closeQuietly((Writer) bufferedWriter);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m37445a(String str, String str2, String str3, String str4, String str5, Context context) {
        String m37395c = AbstractC2418p.m37395c(context.getApplicationContext());
        if (!TextUtils.isEmpty(m37395c)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(m37395c);
                sb.append("/files/math/m");
                m37447a("m", str, sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(m37395c);
                sb2.append("/files/panda/p");
                m37447a("p", str2, sb2.toString());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(m37395c);
                sb3.append("/files/panda/d");
                m37447a("d", str3, sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append(m37395c);
                sb4.append("/files/math/t");
                m37447a("t", str4, sb4.toString());
                StringBuilder sb5 = new StringBuilder();
                sb5.append(m37395c);
                sb5.append("/files/s");
                m37447a("s", str5, sb5.toString());
            } catch (IOException e) {
                HMSLog.m37195e(f7629a, "save key IOException.");
            }
        }
    }

    /* renamed from: a */
    public static byte[] m37450a(Context context) {
        byte[] m37454a = AbstractC2403a.m37454a(context.getString(C2221R.string.push_cat_head));
        byte[] m37454a2 = AbstractC2403a.m37454a(context.getString(C2221R.string.push_cat_body));
        return m37444a(m37443a(m37443a(m37454a, m37454a2), AbstractC2403a.m37454a(m37451a())));
    }

    /* renamed from: a */
    public static byte[] m37446a(String str, String str2, String str3, String str4) {
        return Build.VERSION.SDK_INT >= 26 ? BaseKeyUtil.exportRootKey(str, str2, str3, str4, 32, true) : BaseKeyUtil.exportRootKey(str, str2, str3, str4, 32, false);
    }

    /* renamed from: a */
    public static byte[] m37444a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new byte[0];
        }
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] >> 2);
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m37443a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length == 0 || bArr2.length == 0) {
            return new byte[0];
        }
        int length = bArr.length;
        if (length != bArr2.length) {
            return new byte[0];
        }
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: b */
    public static String m37441b(Context context) {
        if (!m37431i()) {
            HMSLog.m37193i(f7629a, "work key is empty, execute init.");
            m37439c(context);
        }
        String decryptWorkKey = WorkKeyCryptUtil.decryptWorkKey(m37434f(), m37442b());
        return C2422t.m37382a(decryptWorkKey) ? decryptWorkKey : m37435e(context);
    }

    /* renamed from: b */
    public static byte[] m37442b() {
        return m37446a(m37438d(), m37436e(), m37440c(), m37433g());
    }

    /* renamed from: c */
    public static String m37440c() {
        return m37449a("d");
    }

    /* renamed from: c */
    public static void m37439c(Context context) {
        synchronized (f7631c) {
            m37437d(context.getApplicationContext());
            if (m37431i()) {
                HMSLog.m37193i(f7629a, "The local secret is already in separate file mode.");
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC2418p.m37395c(context.getApplicationContext()));
            sb.append("/shared_prefs/LocalAvengers.xml");
            File file = new File(sb.toString());
            if (file.exists()) {
                IOUtil.deleteSecure(file);
                HMSLog.m37193i(f7629a, "destroy C, delete file LocalAvengers.xml.");
            }
            byte[] generateSecureRandom = EncryptUtil.generateSecureRandom(32);
            byte[] generateSecureRandom2 = EncryptUtil.generateSecureRandom(32);
            byte[] generateSecureRandom3 = EncryptUtil.generateSecureRandom(32);
            byte[] generateSecureRandom4 = EncryptUtil.generateSecureRandom(32);
            String m37453a = AbstractC2403a.m37453a(generateSecureRandom);
            String m37453a2 = AbstractC2403a.m37453a(generateSecureRandom2);
            String m37453a3 = AbstractC2403a.m37453a(generateSecureRandom3);
            String m37453a4 = AbstractC2403a.m37453a(generateSecureRandom4);
            m37445a(m37453a, m37453a2, m37453a3, m37453a4, WorkKeyCryptUtil.encryptWorkKey(AbstractC2403a.m37453a(EncryptUtil.generateSecureRandom(32)), m37446a(m37453a, m37453a2, m37453a3, m37453a4)), context);
            HMSLog.m37193i(f7629a, "generate D.");
        }
    }

    /* renamed from: d */
    public static String m37438d() {
        return m37449a("m");
    }

    /* renamed from: d */
    public static void m37437d(Context context) {
        if (m37431i()) {
            HMSLog.m37193i(f7629a, "secretKeyCache not empty.");
            return;
        }
        f7630b.clear();
        String m37395c = AbstractC2418p.m37395c(context);
        if (TextUtils.isEmpty(m37395c)) {
            return;
        }
        String m37384a = AbstractC2421s.m37384a(m37395c + "/files/math/m");
        String m37384a2 = AbstractC2421s.m37384a(m37395c + "/files/panda/p");
        String m37384a3 = AbstractC2421s.m37384a(m37395c + "/files/panda/d");
        String m37384a4 = AbstractC2421s.m37384a(m37395c + "/files/math/t");
        String m37384a5 = AbstractC2421s.m37384a(m37395c + "/files/s");
        if (!C2422t.m37382a(m37384a, m37384a2, m37384a3, m37384a4, m37384a5)) {
            return;
        }
        f7630b.put("m", m37384a);
        f7630b.put("p", m37384a2);
        f7630b.put("d", m37384a3);
        f7630b.put("t", m37384a4);
        f7630b.put("s", m37384a5);
    }

    /* renamed from: e */
    public static String m37436e() {
        return m37449a("p");
    }

    /* renamed from: e */
    public static String m37435e(Context context) {
        synchronized (AbstractC2405c.class) {
            try {
                String decryptWorkKey = WorkKeyCryptUtil.decryptWorkKey(m37434f(), m37442b());
                if (C2422t.m37382a(decryptWorkKey)) {
                    HMSLog.m37193i(f7629a, "keyS has been upgraded, no require operate again.");
                    return decryptWorkKey;
                }
                String decryptWorkKey2 = WorkKeyCryptUtil.decryptWorkKey(m37434f(), m37432h());
                if (C2422t.m37382a(decryptWorkKey2)) {
                    HMSLog.m37193i(f7629a, "keyS is encrypt by RootKeyUtil, upgrade encrypt mode.");
                    m37448a(WorkKeyCryptUtil.encryptWorkKey(decryptWorkKey2, m37442b()), context);
                    return decryptWorkKey2;
                }
                String decryptWorkKey3 = WorkKeyCryptUtil.decryptWorkKey(m37434f(), BaseKeyUtil.exportRootKey(m37438d(), m37436e(), m37440c(), m37433g(), 32, false));
                if (!C2422t.m37382a(decryptWorkKey3)) {
                    HMSLog.m37195e(f7629a, "all mode unable to decrypt root key.");
                    return "";
                }
                HMSLog.m37193i(f7629a, "keyS is encrypt by ExportRootKey with sha1, upgrade encrypt mode to sha256.");
                m37448a(WorkKeyCryptUtil.encryptWorkKey(decryptWorkKey3, m37442b()), context);
                return decryptWorkKey3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static String m37434f() {
        return m37449a("s");
    }

    /* renamed from: g */
    public static String m37433g() {
        return m37449a("t");
    }

    /* renamed from: h */
    public static RootKeyUtil m37432h() {
        return RootKeyUtil.newInstance(m37438d(), m37436e(), m37440c(), m37433g());
    }

    /* renamed from: i */
    public static boolean m37431i() {
        return !TextUtils.isEmpty(m37434f());
    }
}
