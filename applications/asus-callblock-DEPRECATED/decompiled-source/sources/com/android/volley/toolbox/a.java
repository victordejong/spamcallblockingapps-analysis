package com.android.volley.toolbox;

import com.android.volley.g;
import com.android.volley.n;
import com.android.volley.r;
import com.android.volley.s;
import com.android.volley.u;
import com.android.volley.v;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/a.class */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f2318a = v.f2345b;
    private static int d = 3000;
    private static int e = 4096;

    /* renamed from: b  reason: collision with root package name */
    protected final f f2319b;
    protected final b c;

    public a(f fVar) {
        this(fVar, new b(e));
    }

    private a(f fVar, b bVar) {
        this.f2319b = fVar;
        this.c = bVar;
    }

    private static Map<String, String> a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private static void a(String str, n<?> nVar, u uVar) {
        r rVar = nVar.k;
        int j = nVar.j();
        try {
            rVar.a(uVar);
            nVar.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(j)));
        } catch (u e2) {
            nVar.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(j)));
            throw e2;
        }
    }

    private byte[] a(HttpEntity httpEntity) {
        l lVar = new l(this.c, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new s();
            }
            byte[] a2 = this.c.a(1024);
            while (true) {
                int read = content.read(a2);
                if (read == -1) {
                    break;
                }
                lVar.write(a2, 0, read);
            }
            byte[] byteArray = lVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                v.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a(a2);
            lVar.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e3) {
                v.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a((byte[]) null);
            lVar.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cc, code lost:
        return r12;
     */
    @Override // com.android.volley.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.volley.j a(com.android.volley.n<?> r12) {
        /*
            Method dump skipped, instructions count: 842
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.a.a(com.android.volley.n):com.android.volley.j");
    }
}
