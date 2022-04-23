package io.objectbox.relation;

import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/b.class */
public final class b<SOURCE, TARGET> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final c<SOURCE> f36275a;

    /* renamed from: b  reason: collision with root package name */
    public final c<TARGET> f36276b;

    /* renamed from: c  reason: collision with root package name */
    public final g<?> f36277c;

    /* renamed from: d  reason: collision with root package name */
    public final int f36278d;
    public final h<SOURCE> e;
    public final io.objectbox.b.g<SOURCE> f;
    public final h<TARGET> g;
    public final io.objectbox.b.g<TARGET> h;
    public final int i;

    public b(c<SOURCE> cVar, c<TARGET> cVar2, io.objectbox.b.g<SOURCE> gVar, int i) {
        this.f36275a = cVar;
        this.f36276b = cVar2;
        this.f = gVar;
        this.i = i;
        this.f36278d = 0;
        this.f36277c = null;
        this.e = null;
        this.g = null;
        this.h = null;
    }

    public b(c<SOURCE> cVar, c<TARGET> cVar2, io.objectbox.b.g<SOURCE> gVar, io.objectbox.b.g<TARGET> gVar2, int i) {
        this.f36275a = cVar;
        this.f36276b = cVar2;
        this.f = gVar;
        this.f36278d = i;
        this.h = gVar2;
        this.f36277c = null;
        this.e = null;
        this.g = null;
        this.i = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(c<SOURCE> cVar, c<TARGET> cVar2, io.objectbox.b.g<SOURCE> gVar, g<TARGET> gVar2, h<TARGET> hVar) {
        this.f36275a = cVar;
        this.f36276b = cVar2;
        this.f36277c = gVar2;
        this.f = gVar;
        this.g = hVar;
        this.f36278d = 0;
        this.e = null;
        this.h = null;
        this.i = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(c<SOURCE> cVar, c<TARGET> cVar2, g<SOURCE> gVar, h<SOURCE> hVar) {
        this.f36275a = cVar;
        this.f36276b = cVar2;
        this.f36277c = gVar;
        this.e = hVar;
        this.f36278d = 0;
        this.g = null;
        this.h = null;
        this.f = null;
        this.i = 0;
    }

    public final String toString() {
        return "RelationInfo from " + this.f36275a.getEntityClass() + " to " + this.f36276b.getEntityClass();
    }
}
