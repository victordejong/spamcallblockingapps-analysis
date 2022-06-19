package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.common.base.o */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/o.class */
public final class C15393o {

    /* renamed from: a */
    final AbstractC15369c f55638a;

    /* renamed from: b */
    final boolean f55639b;

    /* renamed from: c */
    final int f55640c;

    /* renamed from: d */
    private final AbstractC15397b f55641d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.o$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/o$a.class */
    public static abstract class AbstractC15396a extends AbstractC15365a<String> {

        /* renamed from: b */
        final CharSequence f55644b;

        /* renamed from: c */
        final AbstractC15369c f55645c;

        /* renamed from: d */
        final boolean f55646d;

        /* renamed from: e */
        int f55647e = 0;

        /* renamed from: f */
        int f55648f;

        protected AbstractC15396a(C15393o c15393o, CharSequence charSequence) {
            this.f55645c = c15393o.f55638a;
            this.f55646d = c15393o.f55639b;
            this.f55648f = c15393o.f55640c;
            this.f55644b = charSequence;
        }

        /* renamed from: a */
        abstract int mo8926a(int i);

        @Override // com.google.common.base.AbstractC15365a
        /* renamed from: a */
        protected final /* synthetic */ String mo8927a() {
            int i;
            int i2;
            int i3;
            int i4 = this.f55647e;
            while (true) {
                int i5 = this.f55647e;
                if (i5 == -1) {
                    m8975b();
                    return null;
                }
                int mo8926a = mo8926a(i5);
                if (mo8926a == -1) {
                    mo8926a = this.f55644b.length();
                    this.f55647e = -1;
                } else {
                    this.f55647e = mo8925b(mo8926a);
                }
                int i6 = this.f55647e;
                i = i4;
                if (i6 == i4) {
                    int i7 = i6 + 1;
                    this.f55647e = i7;
                    if (i7 > this.f55644b.length()) {
                        this.f55647e = -1;
                    }
                } else {
                    while (true) {
                        i2 = mo8926a;
                        if (i >= mo8926a) {
                            break;
                        }
                        i2 = mo8926a;
                        if (!this.f55645c.mo8967b(this.f55644b.charAt(i))) {
                            break;
                        }
                        i++;
                    }
                    while (i2 > i && this.f55645c.mo8967b(this.f55644b.charAt(i2 - 1))) {
                        i2--;
                    }
                    if (!this.f55646d || i != i2) {
                        break;
                    }
                    i4 = this.f55647e;
                }
            }
            int i8 = this.f55648f;
            if (i8 == 1) {
                int length = this.f55644b.length();
                this.f55647e = -1;
                while (true) {
                    i3 = length;
                    if (length <= i) {
                        break;
                    }
                    i3 = length;
                    if (!this.f55645c.mo8967b(this.f55644b.charAt(length - 1))) {
                        break;
                    }
                    length--;
                }
            } else {
                this.f55648f = i8 - 1;
                i3 = i2;
            }
            return this.f55644b.subSequence(i, i3).toString();
        }

        /* renamed from: b */
        abstract int mo8925b(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.o$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/o$b.class */
    public interface AbstractC15397b {
        /* renamed from: a */
        Iterator<String> mo8924a(C15393o c15393o, CharSequence charSequence);
    }

    private C15393o(AbstractC15397b abstractC15397b) {
        this(abstractC15397b, false, AbstractC15369c.m8971a(), Integer.MAX_VALUE);
    }

    private C15393o(AbstractC15397b abstractC15397b, boolean z, AbstractC15369c abstractC15369c, int i) {
        this.f55641d = abstractC15397b;
        this.f55639b = z;
        this.f55638a = abstractC15369c;
        this.f55640c = i;
    }

    /* renamed from: a */
    public static C15393o m8929a(final AbstractC15369c abstractC15369c) {
        C15391m.m8946a(abstractC15369c);
        return new C15393o(new AbstractC15397b() { // from class: com.google.common.base.o.1
            @Override // com.google.common.base.C15393o.AbstractC15397b
            /* renamed from: a */
            public final /* synthetic */ Iterator mo8924a(C15393o c15393o, CharSequence charSequence) {
                return new AbstractC15396a(c15393o, charSequence) { // from class: com.google.common.base.o.1.1
                    @Override // com.google.common.base.C15393o.AbstractC15396a
                    /* renamed from: a */
                    final int mo8926a(int i) {
                        return abstractC15369c.mo8968a(this.f55644b, i);
                    }

                    @Override // com.google.common.base.C15393o.AbstractC15396a
                    /* renamed from: b */
                    final int mo8925b(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    /* renamed from: a */
    public final List<String> m8928a(CharSequence charSequence) {
        C15391m.m8946a(charSequence);
        Iterator<String> mo8924a = this.f55641d.mo8924a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (mo8924a.hasNext()) {
            arrayList.add(mo8924a.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
