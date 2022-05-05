package p081h.p160h.p179e.p192b.p193c;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p179e.p192b.p193c.p194c.C6458b;
import p626l.p631e0.C14949k;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \r2\u00020\u0001:\u0001\rB!\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/albert/FeatureConverter;", "", "inputDic", "", "", "", "maxSeqLen", "(Ljava/util/Map;I)V", "tokenizer", "Lcom/gogolook/whoscallsdk/ml/albert/tokenization/FullTokenizer;", "convert", "Lcom/gogolook/whoscallsdk/ml/albert/Feature;", "query", "Companion", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.c.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/c/b.class */
public final class C6455b {

    /* renamed from: c */
    public static final C14949k f16089c = new C14949k("[\\u3000-\\u301F\\u0022\\u0027\\u002a\\u2018\\u2019\\u201c\\u201d]");

    /* renamed from: d */
    public static final C14949k f16090d = new C14949k("[0-9]+([.][0-9%]{1,5})?");

    /* renamed from: a */
    public final C6458b f16091a;

    /* renamed from: b */
    public final int f16092b;

    /* renamed from: h.h.e.b.c.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/c/b$a.class */
    public static final class C6456a {
        public C6456a() {
        }

        public /* synthetic */ C6456a(C15145g gVar) {
            this();
        }
    }

    static {
        new C6456a(null);
    }

    public C6455b(Map<String, Integer> map, int i) {
        C15149k.m377b(map, "inputDic");
        this.f16092b = i;
        this.f16091a = new C6458b(map);
    }

    /* renamed from: a */
    public final C6454a m22546a(String str) {
        C15149k.m377b(str, "query");
        List<String> a = this.f16091a.m22537a(f16089c.m748a(f16090d.m748a(str, "_number_"), " "));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add("[CLS]");
        arrayList2.add(0);
        for (String str2 : a) {
            arrayList.add(str2);
            arrayList2.add(0);
        }
        arrayList.add("[SEP]");
        arrayList2.add(0);
        List<Integer> a2 = this.f16091a.m22536a(arrayList);
        ArrayList arrayList3 = new ArrayList(Collections.nCopies(a2.size(), 1));
        while (a2.size() < this.f16092b) {
            a2.add(0);
            arrayList3.add(0);
            arrayList2.add(0);
        }
        return new C6454a(a2, arrayList3, arrayList2);
    }
}
