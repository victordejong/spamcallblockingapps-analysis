package com.google.common.base;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p161d.p266c.p267a.AbstractC4917d;
import p131c.p161d.p266c.p267a.AbstractC4918e;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/JdkPattern.class */
public final class JdkPattern extends AbstractC4918e implements Serializable {
    public static final long serialVersionUID = 0;
    public final Pattern pattern;

    /* renamed from: com.google.common.base.JdkPattern$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/JdkPattern$a.class */
    public static final class C7322a extends AbstractC4917d {

        /* renamed from: a */
        public final Matcher f30277a;

        public C7322a(Matcher matcher) {
            C4933n.m24795a(matcher);
            this.f30277a = matcher;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4917d
        /* renamed from: a */
        public boolean mo8575a() {
            return this.f30277a.find();
        }
    }

    public JdkPattern(Pattern pattern) {
        C4933n.m24795a(pattern);
        this.pattern = pattern;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4918e
    public int flags() {
        return this.pattern.flags();
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4918e
    public AbstractC4917d matcher(CharSequence charSequence) {
        return new C7322a(this.pattern.matcher(charSequence));
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4918e
    public String pattern() {
        return this.pattern.pattern();
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4918e
    public String toString() {
        return this.pattern.toString();
    }
}
