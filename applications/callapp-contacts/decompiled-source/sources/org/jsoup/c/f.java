package org.jsoup.c;

import org.jsoup.b.b;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f39224a = new f(false, false);

    /* renamed from: b  reason: collision with root package name */
    public static final f f39225b = new f(true, true);

    /* renamed from: c  reason: collision with root package name */
    final boolean f39226c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f39227d;

    public f(boolean z, boolean z2) {
        this.f39226c = z;
        this.f39227d = z2;
    }

    public final String a(String str) {
        String trim = str.trim();
        String str2 = trim;
        if (!this.f39226c) {
            str2 = b.a(trim);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final org.jsoup.nodes.b a(org.jsoup.nodes.b bVar) {
        if (bVar != null && !this.f39227d) {
            bVar.d();
        }
        return bVar;
    }
}
