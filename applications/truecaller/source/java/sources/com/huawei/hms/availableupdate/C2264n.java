package com.huawei.hms.availableupdate;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.utils.Checker;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.IOException;
/* renamed from: com.huawei.hms.availableupdate.n */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/n.class */
public class C2264n {

    /* renamed from: a */
    public Context f7335a;

    /* renamed from: b */
    public String f7336b;

    /* renamed from: a */
    public static File m38137a(File file) {
        if (file == null) {
            return null;
        }
        try {
            return file.getCanonicalFile();
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m38134b(File file) {
        if (file == null) {
            return null;
        }
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: a */
    public Uri m38136a(File file, String str) {
        String m38133b;
        String m38134b = m38134b(file);
        if (m38134b == null || (m38133b = m38133b(m38134b)) == null) {
            return null;
        }
        return new Uri.Builder().scheme("content").authority(str).encodedPath(m38133b).build();
    }

    /* renamed from: a */
    public File m38138a(Uri uri) {
        String m38132c;
        String encodedPath = uri.getEncodedPath();
        if (encodedPath == null || (m38132c = m38132c(encodedPath)) == null) {
            return null;
        }
        return m38137a(new File(m38132c));
    }

    /* renamed from: a */
    public File m38135a(String str) {
        String m38140a = m38140a();
        if (m38140a == null) {
            return null;
        }
        return m38137a(new File(m38140a, str));
    }

    /* renamed from: a */
    public final String m38140a() {
        String str;
        Context context = (Context) Checker.assertNonNull(this.f7335a, "mContext is null, call setContext first.");
        synchronized (this) {
            if (this.f7336b == null) {
                if (context.getExternalCacheDir() != null) {
                    this.f7336b = m38134b(context.getExternalCacheDir());
                } else {
                    this.f7336b = m38134b(context.getFilesDir());
                }
            }
            str = this.f7336b;
        }
        return str;
    }

    /* renamed from: a */
    public void m38139a(Context context) {
        if (this.f7335a == null) {
            Checker.checkNonNull(context, "context must not be null.");
            this.f7335a = context;
        }
    }

    /* renamed from: b */
    public final String m38133b(String str) {
        String m38140a = m38140a();
        if (m38140a != null && str.startsWith(m38140a)) {
            int length = m38140a.endsWith(StringConstant.SLASH) ? m38140a.length() : m38140a.length() + 1;
            return Uri.encode("ContentUriHelper") + '/' + str.substring(length);
        }
        return null;
    }

    /* renamed from: c */
    public final String m38132c(String str) {
        int indexOf;
        String m38134b;
        String m38140a = m38140a();
        if (m38140a != null && (indexOf = str.indexOf(47, 1)) >= 0 && "ContentUriHelper".equals(Uri.decode(str.substring(1, indexOf))) && (m38134b = m38134b(new File(m38140a, Uri.decode(str.substring(indexOf + 1))))) != null && m38134b.startsWith(m38140a)) {
            return m38134b;
        }
        return null;
    }
}
