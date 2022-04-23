package org.jsoup.nodes;

import org.jsoup.c.h;
import org.jsoup.select.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/nodes/k.class */
public final class k extends h {

    /* renamed from: a  reason: collision with root package name */
    private final c f39298a = new c();

    public k(h hVar, String str, b bVar) {
        super(hVar, str, bVar);
    }

    public final k b(h hVar) {
        this.f39298a.add(hVar);
        return this;
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.m
    public final /* synthetic */ m c() {
        return (k) super.clone();
    }

    @Override // org.jsoup.nodes.h, org.jsoup.nodes.m
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (k) super.clone();
    }

    @Override // org.jsoup.nodes.h
    public final /* bridge */ /* synthetic */ h d() {
        return (k) super.clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.m
    public final void g(m mVar) {
        super.g(mVar);
        this.f39298a.remove(mVar);
    }
}
