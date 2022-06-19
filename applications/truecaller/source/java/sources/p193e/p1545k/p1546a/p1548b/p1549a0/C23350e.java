package p193e.p1545k.p1546a.p1548b.p1549a0;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
/* renamed from: e.k.a.b.a0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/e.class */
public class C23350e implements AbstractC23383o, AbstractC23354f<C23350e>, Serializable {
    public static final C23403i DEFAULT_ROOT_VALUE_SEPARATOR = new C23403i(StringConstant.SPACE);
    private static final long serialVersionUID = 1;
    public AbstractC23352b _arrayIndenter;
    public transient int _nesting;
    public String _objectFieldValueSeparatorWithSpaces;
    public AbstractC23352b _objectIndenter;
    public final AbstractC23384p _rootSeparator;
    public C23361m _separators;
    public boolean _spacesInObjectEntries;

    /* renamed from: e.k.a.b.a0.e$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/e$a.class */
    public static class C23351a extends C23353c {

        /* renamed from: b */
        public static final C23351a f64578b = new C23351a();

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.C23353c, p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
        /* renamed from: h */
        public boolean mo7246h() {
            return true;
        }

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.C23353c, p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
        /* renamed from: i */
        public void mo7245i(AbstractC23372g abstractC23372g, int i) throws IOException {
            abstractC23372g.mo5852m1(' ');
        }
    }

    /* renamed from: e.k.a.b.a0.e$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/e$b.class */
    public interface AbstractC23352b {
        /* renamed from: h */
        boolean mo7246h();

        /* renamed from: i */
        void mo7245i(AbstractC23372g abstractC23372g, int i) throws IOException;
    }

    /* renamed from: e.k.a.b.a0.e$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/e$c.class */
    public static class C23353c implements AbstractC23352b, Serializable {

        /* renamed from: a */
        public static final C23353c f64579a = new C23353c();

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
        /* renamed from: h */
        public boolean mo7246h() {
            return true;
        }

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.C23350e.AbstractC23352b
        /* renamed from: i */
        public void mo7245i(AbstractC23372g abstractC23372g, int i) throws IOException {
        }
    }

    public C23350e() {
        this(DEFAULT_ROOT_VALUE_SEPARATOR);
    }

    public C23350e(C23350e c23350e) {
        this(c23350e, c23350e._rootSeparator);
    }

    public C23350e(C23350e c23350e, AbstractC23384p abstractC23384p) {
        this._arrayIndenter = C23351a.f64578b;
        this._objectIndenter = C23349d.f64574f;
        this._spacesInObjectEntries = true;
        this._arrayIndenter = c23350e._arrayIndenter;
        this._objectIndenter = c23350e._objectIndenter;
        this._spacesInObjectEntries = c23350e._spacesInObjectEntries;
        this._nesting = c23350e._nesting;
        this._separators = c23350e._separators;
        this._objectFieldValueSeparatorWithSpaces = c23350e._objectFieldValueSeparatorWithSpaces;
        this._rootSeparator = abstractC23384p;
    }

    public C23350e(AbstractC23384p abstractC23384p) {
        this._arrayIndenter = C23351a.f64578b;
        this._objectIndenter = C23349d.f64574f;
        this._spacesInObjectEntries = true;
        this._rootSeparator = abstractC23384p;
        withSeparators(AbstractC23383o.f64712G);
    }

    public C23350e(String str) {
        this(str == null ? null : new C23403i(str));
    }

    public C23350e _withSpaces(boolean z) {
        if (this._spacesInObjectEntries == z) {
            return this;
        }
        C23350e c23350e = new C23350e(this);
        c23350e._spacesInObjectEntries = z;
        return c23350e;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void beforeArrayValues(AbstractC23372g abstractC23372g) throws IOException {
        this._arrayIndenter.mo7245i(abstractC23372g, this._nesting);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void beforeObjectEntries(AbstractC23372g abstractC23372g) throws IOException {
        this._objectIndenter.mo7245i(abstractC23372g, this._nesting);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23354f
    public C23350e createInstance() {
        if (getClass() == C23350e.class) {
            return new C23350e(this);
        }
        StringBuilder m8728C = C22128a.m8728C("Failed `createInstance()`: ");
        m8728C.append(getClass().getName());
        m8728C.append(" does not override method; it has to");
        throw new IllegalStateException(m8728C.toString());
    }

    public void indentArraysWith(AbstractC23352b abstractC23352b) {
        C23353c c23353c = abstractC23352b;
        if (abstractC23352b == null) {
            c23353c = C23353c.f64579a;
        }
        this._arrayIndenter = c23353c;
    }

    public void indentObjectsWith(AbstractC23352b abstractC23352b) {
        C23353c c23353c = abstractC23352b;
        if (abstractC23352b == null) {
            c23353c = C23353c.f64579a;
        }
        this._objectIndenter = c23353c;
    }

    public C23350e withArrayIndenter(AbstractC23352b abstractC23352b) {
        C23353c c23353c = abstractC23352b;
        if (abstractC23352b == null) {
            c23353c = C23353c.f64579a;
        }
        if (this._arrayIndenter == c23353c) {
            return this;
        }
        C23350e c23350e = new C23350e(this);
        c23350e._arrayIndenter = c23353c;
        return c23350e;
    }

    public C23350e withObjectIndenter(AbstractC23352b abstractC23352b) {
        C23353c c23353c = abstractC23352b;
        if (abstractC23352b == null) {
            c23353c = C23353c.f64579a;
        }
        if (this._objectIndenter == c23353c) {
            return this;
        }
        C23350e c23350e = new C23350e(this);
        c23350e._objectIndenter = c23353c;
        return c23350e;
    }

    public C23350e withRootSeparator(AbstractC23384p abstractC23384p) {
        AbstractC23384p abstractC23384p2 = this._rootSeparator;
        return (abstractC23384p2 == abstractC23384p || (abstractC23384p != null && abstractC23384p.equals(abstractC23384p2))) ? this : new C23350e(this, abstractC23384p);
    }

    public C23350e withRootSeparator(String str) {
        return withRootSeparator(str == null ? null : new C23403i(str));
    }

    public C23350e withSeparators(C23361m c23361m) {
        this._separators = c23361m;
        Objects.requireNonNull(c23361m);
        this._objectFieldValueSeparatorWithSpaces = " : ";
        return this;
    }

    public C23350e withSpacesInObjectEntries() {
        return _withSpaces(true);
    }

    public C23350e withoutSpacesInObjectEntries() {
        return _withSpaces(false);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeArrayValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        Objects.requireNonNull(this._separators);
        abstractC23372g.mo5852m1(',');
        this._arrayIndenter.mo7245i(abstractC23372g, this._nesting);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeEndArray(AbstractC23372g abstractC23372g, int i) throws IOException {
        if (!this._arrayIndenter.mo7246h()) {
            this._nesting--;
        }
        if (i > 0) {
            this._arrayIndenter.mo7245i(abstractC23372g, this._nesting);
        } else {
            abstractC23372g.mo5852m1(' ');
        }
        abstractC23372g.mo5852m1(']');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeEndObject(AbstractC23372g abstractC23372g, int i) throws IOException {
        if (!this._objectIndenter.mo7246h()) {
            this._nesting--;
        }
        if (i > 0) {
            this._objectIndenter.mo7245i(abstractC23372g, this._nesting);
        } else {
            abstractC23372g.mo5852m1(' ');
        }
        abstractC23372g.mo5852m1('}');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeObjectEntrySeparator(AbstractC23372g abstractC23372g) throws IOException {
        Objects.requireNonNull(this._separators);
        abstractC23372g.mo5852m1(',');
        this._objectIndenter.mo7245i(abstractC23372g, this._nesting);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeObjectFieldValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        if (this._spacesInObjectEntries) {
            abstractC23372g.mo5842s1(this._objectFieldValueSeparatorWithSpaces);
            return;
        }
        Objects.requireNonNull(this._separators);
        abstractC23372g.mo5852m1(':');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeRootValueSeparator(AbstractC23372g abstractC23372g) throws IOException {
        AbstractC23384p abstractC23384p = this._rootSeparator;
        if (abstractC23384p != null) {
            abstractC23372g.mo5850n1(abstractC23384p);
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeStartArray(AbstractC23372g abstractC23372g) throws IOException {
        if (!this._arrayIndenter.mo7246h()) {
            this._nesting++;
        }
        abstractC23372g.mo5852m1('[');
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23383o
    public void writeStartObject(AbstractC23372g abstractC23372g) throws IOException {
        abstractC23372g.mo5852m1('{');
        if (!this._objectIndenter.mo7246h()) {
            this._nesting++;
        }
    }
}
