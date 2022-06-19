package com.liulishuo.filedownloader.download;

import android.text.TextUtils;
import com.liulishuo.filedownloader.download.C9348b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.yanzhenjie.nohttp.Headers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p124e0.C1999d;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.download.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/a.class */
public class C9345a {

    /* renamed from: a */
    final int f39970a;

    /* renamed from: b */
    final String f39971b;

    /* renamed from: c */
    final FileDownloadHeader f39972c;

    /* renamed from: d */
    private C9348b f39973d;

    /* renamed from: e */
    private String f39974e;

    /* renamed from: f */
    private Map<String, List<String>> f39975f;

    /* renamed from: g */
    private List<String> f39976g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.liulishuo.filedownloader.download.a$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/a$b.class */
    public static class C9347b {

        /* renamed from: a */
        private Integer f39977a;

        /* renamed from: b */
        private String f39978b;

        /* renamed from: c */
        private String f39979c;

        /* renamed from: d */
        private FileDownloadHeader f39980d;

        /* renamed from: e */
        private C9348b f39981e;

        /* renamed from: a */
        public C9345a m1000a() {
            C9348b c9348b;
            Integer num = this.f39977a;
            if (num == null || (c9348b = this.f39981e) == null || this.f39978b == null) {
                throw new IllegalArgumentException();
            }
            return new C9345a(c9348b, num.intValue(), this.f39978b, this.f39979c, this.f39980d);
        }

        /* renamed from: b */
        public C9347b m999b(C9348b c9348b) {
            this.f39981e = c9348b;
            return this;
        }

        /* renamed from: c */
        public C9347b m998c(int i) {
            this.f39977a = Integer.valueOf(i);
            return this;
        }

        /* renamed from: d */
        public C9347b m997d(String str) {
            this.f39979c = str;
            return this;
        }

        /* renamed from: e */
        public C9347b m996e(FileDownloadHeader fileDownloadHeader) {
            this.f39980d = fileDownloadHeader;
            return this;
        }

        /* renamed from: f */
        public C9347b m995f(String str) {
            this.f39978b = str;
            return this;
        }
    }

    private C9345a(C9348b c9348b, int i, String str, String str2, FileDownloadHeader fileDownloadHeader) {
        this.f39970a = i;
        this.f39971b = str;
        this.f39974e = str2;
        this.f39972c = fileDownloadHeader;
        this.f39973d = c9348b;
    }

    /* renamed from: a */
    private void m1009a(AbstractC1995b abstractC1995b) {
        if (abstractC1995b.mo28347c(this.f39974e, this.f39973d.f39982a)) {
            return;
        }
        if (!TextUtils.isEmpty(this.f39974e)) {
            abstractC1995b.addHeader("If-Match", this.f39974e);
        }
        this.f39973d.m994a(abstractC1995b);
    }

    /* renamed from: b */
    private void m1008b(AbstractC1995b abstractC1995b) {
        HashMap<String, List<String>> m871a;
        FileDownloadHeader fileDownloadHeader = this.f39972c;
        if (fileDownloadHeader == null || (m871a = fileDownloadHeader.m871a()) == null) {
            return;
        }
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "%d add outside header: %s", Integer.valueOf(this.f39970a), m871a);
        }
        for (Map.Entry<String, List<String>> entry : m871a.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                for (String str : value) {
                    abstractC1995b.addHeader(key, str);
                }
            }
        }
    }

    /* renamed from: d */
    private void m1006d(AbstractC1995b abstractC1995b) {
        FileDownloadHeader fileDownloadHeader = this.f39972c;
        if (fileDownloadHeader == null || fileDownloadHeader.m871a().get(Headers.HEAD_KEY_USER_AGENT) == null) {
            abstractC1995b.addHeader(Headers.HEAD_KEY_USER_AGENT, C2040f.m28217d());
        }
    }

    /* renamed from: c */
    public AbstractC1995b m1007c() {
        AbstractC1995b m988a = C9351c.m979j().m988a(this.f39971b);
        m1008b(m988a);
        m1009a(m988a);
        m1006d(m988a);
        this.f39975f = m988a.mo28343g();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "<---- %s request header %s", Integer.valueOf(this.f39970a), this.f39975f);
        }
        m988a.execute();
        ArrayList arrayList = new ArrayList();
        this.f39976g = arrayList;
        AbstractC1995b m28337c = C1999d.m28337c(this.f39975f, m988a, arrayList);
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "----> %s response header %s", Integer.valueOf(this.f39970a), m28337c.mo28348b());
        }
        return m28337c;
    }

    /* renamed from: e */
    public String m1005e() {
        List<String> list = this.f39976g;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<String> list2 = this.f39976g;
        return list2.get(list2.size() - 1);
    }

    /* renamed from: f */
    public C9348b m1004f() {
        return this.f39973d;
    }

    /* renamed from: g */
    public Map<String, List<String>> m1003g() {
        return this.f39975f;
    }

    /* renamed from: h */
    public boolean m1002h() {
        return this.f39973d.f39983b > 0;
    }

    /* renamed from: i */
    public void m1001i(long j) {
        C9348b c9348b = this.f39973d;
        long j2 = c9348b.f39983b;
        if (j == j2) {
            C2036d.m28245i(this, "no data download, no need to update", new Object[0]);
            return;
        }
        C9348b m992b = C9348b.C9350b.m992b(c9348b.f39982a, j, c9348b.f39984c, c9348b.f39985d - (j - j2));
        this.f39973d = m992b;
        if (!C2036d.f7151a) {
            return;
        }
        C2036d.m28249e(this, "after update profile:%s", m992b);
    }
}
