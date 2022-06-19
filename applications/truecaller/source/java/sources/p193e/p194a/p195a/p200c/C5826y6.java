package p193e.p194a.p195a.p200c;

import android.content.ContentResolver;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.y6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/y6.class */
public final class C5826y6 {

    /* renamed from: a */
    public final Map<C5282f8, Boolean> f19558a = new LinkedHashMap();

    /* renamed from: b */
    public final ContentResolver f19559b;

    /* renamed from: c */
    public final f f19560c;

    /* renamed from: d */
    public final AbstractC6248w f19561d;

    @Inject
    public C5826y6(ContentResolver contentResolver, @Named("IO") f fVar, AbstractC6248w abstractC6248w) {
        l.e(contentResolver, "contentResolver");
        l.e(fVar, "async");
        l.e(abstractC6248w, "readMessageStorage");
        this.f19559b = contentResolver;
        this.f19560c = fVar;
        this.f19561d = abstractC6248w;
    }
}
