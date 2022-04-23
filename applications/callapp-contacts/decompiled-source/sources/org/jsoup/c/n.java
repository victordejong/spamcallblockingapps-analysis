package org.jsoup.c;

import java.io.Reader;
import org.jsoup.c.i;
import org.jsoup.nodes.b;
import org.jsoup.nodes.f;
import org.jsoup.nodes.m;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/n.class */
public final class n extends m {

    /* renamed from: org.jsoup.c.n$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/n$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39254a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[i.EnumC0750i.values().length];
            f39254a = iArr;
            try {
                iArr[i.EnumC0750i.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f39254a[i.EnumC0750i.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f39254a[i.EnumC0750i.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f39254a[i.EnumC0750i.Character.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f39254a[i.EnumC0750i.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f39254a[i.EnumC0750i.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private void a(m mVar) {
        p().a(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.jsoup.c.m
    public final f a() {
        return f.f39225b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.c.m
    public final void a(Reader reader, String str, g gVar) {
        super.a(reader, str, gVar);
        this.v.add(this.u);
        this.u.f39265a.h = f.a.EnumC0751a.f39274b;
    }

    @Override // org.jsoup.c.m
    public final /* bridge */ /* synthetic */ boolean a(String str, b bVar) {
        return super.a(str, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    @Override // org.jsoup.c.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(org.jsoup.c.i r8) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.c.n.a(org.jsoup.c.i):boolean");
    }
}
