package com.liulishuo.filedownloader.download;

import android.text.TextUtils;
import com.liulishuo.filedownloader.download.C2743b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p098d0.C3024d;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.download.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/a.class */
public class C2740a {

    /* renamed from: a */
    final int f11374a;

    /* renamed from: b */
    final String f11375b;

    /* renamed from: c */
    final FileDownloadHeader f11376c;

    /* renamed from: d */
    private C2743b f11377d;

    /* renamed from: e */
    private String f11378e;

    /* renamed from: f */
    private Map<String, List<String>> f11379f;

    /* renamed from: g */
    private List<String> f11380g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.liulishuo.filedownloader.download.a$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/a$b.class */
    public static class C2742b {

        /* renamed from: a */
        private Integer f11381a;

        /* renamed from: b */
        private String f11382b;

        /* renamed from: c */
        private String f11383c;

        /* renamed from: d */
        private FileDownloadHeader f11384d;

        /* renamed from: e */
        private C2743b f11385e;

        /* renamed from: a */
        public C2740a m1954a() {
            C2743b c2743b;
            Integer num = this.f11381a;
            if (num == null || (c2743b = this.f11385e) == null || this.f11382b == null) {
                throw new IllegalArgumentException();
            }
            return new C2740a(c2743b, num.intValue(), this.f11382b, this.f11383c, this.f11384d);
        }

        /* renamed from: b */
        public C2742b m1953b(C2743b c2743b) {
            this.f11385e = c2743b;
            return this;
        }

        /* renamed from: c */
        public C2742b m1952c(int i) {
            this.f11381a = Integer.valueOf(i);
            return this;
        }

        /* renamed from: d */
        public C2742b m1951d(String str) {
            this.f11383c = str;
            return this;
        }

        /* renamed from: e */
        public C2742b m1950e(FileDownloadHeader fileDownloadHeader) {
            this.f11384d = fileDownloadHeader;
            return this;
        }

        /* renamed from: f */
        public C2742b m1949f(String str) {
            this.f11382b = str;
            return this;
        }
    }

    private C2740a(C2743b c2743b, int i, String str, String str2, FileDownloadHeader fileDownloadHeader) {
        this.f11374a = i;
        this.f11375b = str;
        this.f11378e = str2;
        this.f11376c = fileDownloadHeader;
        this.f11377d = c2743b;
    }

    /* renamed from: a */
    private void m1963a(AbstractC3020b abstractC3020b) {
        if (abstractC3020b.mo524c(this.f11378e, this.f11377d.f11386a)) {
            return;
        }
        if (!TextUtils.isEmpty(this.f11378e)) {
            abstractC3020b.addHeader("If-Match", this.f11378e);
        }
        this.f11377d.m1948a(abstractC3020b);
    }

    /* renamed from: b */
    private void m1962b(AbstractC3020b abstractC3020b) {
        HashMap<String, List<String>> m1826a;
        FileDownloadHeader fileDownloadHeader = this.f11376c;
        if (fileDownloadHeader == null || (m1826a = fileDownloadHeader.m1826a()) == null) {
            return;
        }
        if (C3062d.f12682a) {
            C3062d.m407h(this, "%d add outside header: %s", Integer.valueOf(this.f11374a), m1826a);
        }
        for (Map.Entry<String, List<String>> entry : m1826a.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                for (String str : value) {
                    abstractC3020b.addHeader(key, str);
                }
            }
        }
    }

    /* renamed from: d */
    private void m1960d(AbstractC3020b abstractC3020b) {
        FileDownloadHeader fileDownloadHeader = this.f11376c;
        if (fileDownloadHeader == null || fileDownloadHeader.m1826a().get("User-Agent") == null) {
            abstractC3020b.addHeader("User-Agent", C3066f.m378d());
        }
    }

    /* renamed from: c */
    public AbstractC3020b m1961c() {
        AbstractC3020b m1942a = C2746c.m1933j().m1942a(this.f11375b);
        m1962b(m1942a);
        m1963a(m1942a);
        m1960d(m1942a);
        this.f11379f = m1942a.mo519h();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "<---- %s request header %s", Integer.valueOf(this.f11374a), this.f11379f);
        }
        m1942a.execute();
        ArrayList arrayList = new ArrayList();
        this.f11380g = arrayList;
        AbstractC3020b m513c = C3024d.m513c(this.f11379f, m1942a, arrayList);
        if (C3062d.f12682a) {
            C3062d.m414a(this, "----> %s response header %s", Integer.valueOf(this.f11374a), m513c.mo525b());
        }
        return m513c;
    }

    /* renamed from: e */
    public String m1959e() {
        List<String> list = this.f11380g;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<String> list2 = this.f11380g;
        return list2.get(list2.size() - 1);
    }

    /* renamed from: f */
    public C2743b m1958f() {
        return this.f11377d;
    }

    /* renamed from: g */
    public Map<String, List<String>> m1957g() {
        return this.f11379f;
    }

    /* renamed from: h */
    public boolean m1956h() {
        return this.f11377d.f11387b > 0;
    }

    /* renamed from: i */
    public void m1955i(long j) {
        C2743b c2743b = this.f11377d;
        long j2 = c2743b.f11387b;
        if (j == j2) {
            C3062d.m406i(this, "no data download, no need to update", new Object[0]);
            return;
        }
        C2743b m1946b = C2743b.C2745b.m1946b(c2743b.f11386a, j, c2743b.f11388c, c2743b.f11389d - (j - j2));
        this.f11377d = m1946b;
        if (!C3062d.f12682a) {
            return;
        }
        C3062d.m410e(this, "after update profile:%s", m1946b);
    }
}
