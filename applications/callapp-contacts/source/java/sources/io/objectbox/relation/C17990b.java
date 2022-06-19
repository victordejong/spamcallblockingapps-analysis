package io.objectbox.relation;

import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import java.io.Serializable;
/* renamed from: io.objectbox.relation.b */
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/b.class */
public final class C17990b<SOURCE, TARGET> implements Serializable {

    /* renamed from: a */
    public final AbstractC17957c<SOURCE> f62886a;

    /* renamed from: b */
    public final AbstractC17957c<TARGET> f62887b;

    /* renamed from: c */
    public final C17978g<?> f62888c;

    /* renamed from: d */
    public final int f62889d;

    /* renamed from: e */
    public final AbstractC17956h<SOURCE> f62890e;

    /* renamed from: f */
    public final AbstractC17955g<SOURCE> f62891f;

    /* renamed from: g */
    public final AbstractC17956h<TARGET> f62892g;

    /* renamed from: h */
    public final AbstractC17955g<TARGET> f62893h;

    /* renamed from: i */
    public final int f62894i;

    public C17990b(AbstractC17957c<SOURCE> abstractC17957c, AbstractC17957c<TARGET> abstractC17957c2, AbstractC17955g<SOURCE> abstractC17955g, int i) {
        this.f62886a = abstractC17957c;
        this.f62887b = abstractC17957c2;
        this.f62891f = abstractC17955g;
        this.f62894i = i;
        this.f62889d = 0;
        this.f62888c = null;
        this.f62890e = null;
        this.f62892g = null;
        this.f62893h = null;
    }

    public C17990b(AbstractC17957c<SOURCE> abstractC17957c, AbstractC17957c<TARGET> abstractC17957c2, AbstractC17955g<SOURCE> abstractC17955g, AbstractC17955g<TARGET> abstractC17955g2, int i) {
        this.f62886a = abstractC17957c;
        this.f62887b = abstractC17957c2;
        this.f62891f = abstractC17955g;
        this.f62889d = i;
        this.f62893h = abstractC17955g2;
        this.f62888c = null;
        this.f62890e = null;
        this.f62892g = null;
        this.f62894i = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C17990b(AbstractC17957c<SOURCE> abstractC17957c, AbstractC17957c<TARGET> abstractC17957c2, AbstractC17955g<SOURCE> abstractC17955g, C17978g<TARGET> c17978g, AbstractC17956h<TARGET> abstractC17956h) {
        this.f62886a = abstractC17957c;
        this.f62887b = abstractC17957c2;
        this.f62888c = c17978g;
        this.f62891f = abstractC17955g;
        this.f62892g = abstractC17956h;
        this.f62889d = 0;
        this.f62890e = null;
        this.f62893h = null;
        this.f62894i = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C17990b(AbstractC17957c<SOURCE> abstractC17957c, AbstractC17957c<TARGET> abstractC17957c2, C17978g<SOURCE> c17978g, AbstractC17956h<SOURCE> abstractC17956h) {
        this.f62886a = abstractC17957c;
        this.f62887b = abstractC17957c2;
        this.f62888c = c17978g;
        this.f62890e = abstractC17956h;
        this.f62889d = 0;
        this.f62892g = null;
        this.f62893h = null;
        this.f62891f = null;
        this.f62894i = 0;
    }

    public final String toString() {
        return "RelationInfo from " + this.f62886a.getEntityClass() + " to " + this.f62887b.getEntityClass();
    }
}
