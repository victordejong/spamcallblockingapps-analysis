package com.googlecode.mp4parser.c;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/d.class */
public final class d extends f {

    /* renamed from: a  reason: collision with root package name */
    Logger f33167a;

    public d(String str) {
        this.f33167a = Logger.getLogger(str);
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void a(String str) {
        this.f33167a.log(Level.FINE, str);
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void b(String str) {
        this.f33167a.log(Level.WARNING, str);
    }

    @Override // com.googlecode.mp4parser.c.f
    public final void c(String str) {
        this.f33167a.log(Level.SEVERE, str);
    }
}
