package com.googlecode.mp4parser.p425c;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.googlecode.mp4parser.c.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/d.class */
public final class C16284d extends AbstractC16287f {

    /* renamed from: a */
    Logger f57530a;

    public C16284d(String str) {
        this.f57530a = Logger.getLogger(str);
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: a */
    public final void mo7513a(String str) {
        this.f57530a.log(Level.FINE, str);
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: b */
    public final void mo7512b(String str) {
        this.f57530a.log(Level.WARNING, str);
    }

    @Override // com.googlecode.mp4parser.p425c.AbstractC16287f
    /* renamed from: c */
    public final void mo7511c(String str) {
        this.f57530a.log(Level.SEVERE, str);
    }
}
