package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.net.Uri;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4886k;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4902u;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4907v;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.t */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/t.class */
public class C4901t {

    /* renamed from: a */
    private final Set<String> f17891a;

    /* renamed from: b */
    private final Set<String> f17892b;

    /* renamed from: c */
    private final C4907v f17893c = C4897q.f17879a;

    /* renamed from: d */
    private final C4902u f17894d;

    /* renamed from: e */
    private AbstractC4886k.AbstractC4889b f17895e;

    public C4901t(C4902u c4902u, Set<String> set, Set<String> set2) {
        this.f17894d = c4902u;
        this.f17891a = new LinkedHashSet(set);
        this.f17892b = new LinkedHashSet(set2);
    }

    /* renamed from: a */
    private EnumC4909w m33606a(String str, AbstractC4872b abstractC4872b, boolean z) {
        C4902u c4902u;
        if (!z || (c4902u = this.f17894d) == null) {
            return null;
        }
        C4902u.C4906c m33602a = c4902u.m33602a(str, this.f17891a);
        if (m33602a.f17909c.contains(abstractC4872b.mo33677a())) {
            return null;
        }
        if (m33602a.f17908b.contains(abstractC4872b.mo33677a())) {
            return EnumC4909w.PRIVATE;
        }
        if (!(m33602a.f17907a.compareTo(abstractC4872b.m33685b()) < 0)) {
            return m33602a.f17907a;
        }
        return null;
    }

    /* renamed from: a */
    final EnumC4909w m33607a(String str, AbstractC4872b abstractC4872b) throws C4902u.C4904a {
        EnumC4909w m33606a;
        synchronized (this) {
            m33606a = m33606a(str, abstractC4872b, true);
        }
        return m33606a;
    }

    /* renamed from: a */
    public final EnumC4909w m33605a(boolean z, String str, AbstractC4872b abstractC4872b) throws C4902u.C4904a {
        EnumC4909w enumC4909w;
        String next;
        synchronized (this) {
            Uri parse = Uri.parse(str);
            String host = parse.getHost();
            if (host == null) {
                return null;
            }
            EnumC4909w enumC4909w2 = this.f17892b.contains(abstractC4872b.mo33677a()) ? EnumC4909w.PUBLIC : null;
            Iterator<String> it2 = this.f17891a.iterator();
            do {
                enumC4909w = enumC4909w2;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
                if (parse.getHost().equals(next)) {
                    break;
                }
            } while (!host.endsWith(".".concat(String.valueOf(next))));
            enumC4909w = EnumC4909w.PRIVATE;
            EnumC4909w enumC4909w3 = enumC4909w;
            if (enumC4909w == null) {
                AbstractC4886k.AbstractC4889b abstractC4889b = this.f17895e;
                enumC4909w3 = enumC4909w;
                if (abstractC4889b != null) {
                    enumC4909w3 = enumC4909w;
                    if (abstractC4889b.m33640a(str)) {
                        if (this.f17895e.m33639a(str, abstractC4872b.mo33677a())) {
                            return null;
                        }
                        enumC4909w3 = EnumC4909w.PRIVATE;
                    }
                }
            }
            EnumC4909w m33607a = z ? m33607a(str, abstractC4872b) : m33604b(str, abstractC4872b);
            return m33607a != null ? m33607a : enumC4909w3;
        }
    }

    /* renamed from: a */
    public void m33609a(AbstractC4886k.AbstractC4889b abstractC4889b) {
        this.f17895e = abstractC4889b;
    }

    /* renamed from: a */
    public void m33608a(C4907v.AbstractC4908a abstractC4908a) {
        C4907v c4907v = this.f17893c;
        if (c4907v != null) {
            c4907v.m33595a(abstractC4908a);
        }
    }

    /* renamed from: b */
    final EnumC4909w m33604b(String str, AbstractC4872b abstractC4872b) {
        EnumC4909w m33606a;
        synchronized (this) {
            m33606a = m33606a(str, abstractC4872b, false);
        }
        return m33606a;
    }
}
