package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.common.base.l */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/l.class */
public final class C8758l {

    /* renamed from: a */
    private final AbstractC8739b f38632a;

    /* renamed from: b */
    private final boolean f38633b;

    /* renamed from: c */
    private final AbstractC8762c f38634c;

    /* renamed from: d */
    private final int f38635d;

    /* renamed from: com.google.common.base.l$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/l$a.class */
    public static final class C8759a implements AbstractC8762c {

        /* renamed from: a */
        final /* synthetic */ AbstractC8739b f38636a;

        /* renamed from: com.google.common.base.l$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/base/l$a$a.class */
        public class C8760a extends AbstractC8761b {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C8760a(C8758l c8758l, CharSequence charSequence) {
                super(c8758l, charSequence);
                C8759a.this = r5;
            }

            @Override // com.google.common.base.C8758l.AbstractC8761b
            /* renamed from: e */
            int mo2768e(int i) {
                return i + 1;
            }

            @Override // com.google.common.base.C8758l.AbstractC8761b
            /* renamed from: f */
            int mo2767f(int i) {
                return C8759a.this.f38636a.mo2821b(this.f38638f, i);
            }
        }

        C8759a(AbstractC8739b abstractC8739b) {
            this.f38636a = abstractC8739b;
        }

        /* renamed from: b */
        public AbstractC8761b mo2766a(C8758l c8758l, CharSequence charSequence) {
            return new C8760a(c8758l, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.base.l$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/l$b.class */
    public static abstract class AbstractC8761b extends AbstractIterator<String> {

        /* renamed from: f */
        final CharSequence f38638f;

        /* renamed from: g */
        final AbstractC8739b f38639g;

        /* renamed from: h */
        final boolean f38640h;

        /* renamed from: i */
        int f38641i = 0;

        /* renamed from: j */
        int f38642j;

        protected AbstractC8761b(C8758l c8758l, CharSequence charSequence) {
            this.f38639g = c8758l.f38632a;
            this.f38640h = c8758l.f38633b;
            this.f38642j = c8758l.f38635d;
            this.f38638f = charSequence;
        }

        /* renamed from: d */
        public String mo2770a() {
            int i;
            int i2;
            int i3;
            int i4 = this.f38641i;
            while (true) {
                int i5 = this.f38641i;
                if (i5 == -1) {
                    return m2829b();
                }
                int mo2767f = mo2767f(i5);
                if (mo2767f == -1) {
                    mo2767f = this.f38638f.length();
                    this.f38641i = -1;
                } else {
                    this.f38641i = mo2768e(mo2767f);
                }
                int i6 = this.f38641i;
                i = i4;
                if (i6 == i4) {
                    int i7 = i6 + 1;
                    this.f38641i = i7;
                    if (i7 > this.f38638f.length()) {
                        this.f38641i = -1;
                    }
                } else {
                    while (true) {
                        i2 = mo2767f;
                        if (i >= mo2767f) {
                            break;
                        }
                        i2 = mo2767f;
                        if (!this.f38639g.mo2820d(this.f38638f.charAt(i))) {
                            break;
                        }
                        i++;
                    }
                    while (i2 > i && this.f38639g.mo2820d(this.f38638f.charAt(i2 - 1))) {
                        i2--;
                    }
                    if (!this.f38640h || i != i2) {
                        break;
                    }
                    i4 = this.f38641i;
                }
            }
            int i8 = this.f38642j;
            if (i8 == 1) {
                int length = this.f38638f.length();
                this.f38641i = -1;
                while (true) {
                    i3 = length;
                    if (length <= i) {
                        break;
                    }
                    i3 = length;
                    if (!this.f38639g.mo2820d(this.f38638f.charAt(length - 1))) {
                        break;
                    }
                    length--;
                }
            } else {
                this.f38642j = i8 - 1;
                i3 = i2;
            }
            return this.f38638f.subSequence(i, i3).toString();
        }

        /* renamed from: e */
        abstract int mo2768e(int i);

        /* renamed from: f */
        abstract int mo2767f(int i);
    }

    /* renamed from: com.google.common.base.l$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/l$c.class */
    public interface AbstractC8762c {
        /* renamed from: a */
        Iterator<String> mo2766a(C8758l c8758l, CharSequence charSequence);
    }

    private C8758l(AbstractC8762c abstractC8762c) {
        this(abstractC8762c, false, AbstractC8739b.m2823e(), Integer.MAX_VALUE);
    }

    private C8758l(AbstractC8762c abstractC8762c, boolean z, AbstractC8739b abstractC8739b, int i) {
        this.f38634c = abstractC8762c;
        this.f38633b = z;
        this.f38632a = abstractC8739b;
        this.f38635d = i;
    }

    /* renamed from: d */
    public static C8758l m2775d(char c) {
        return m2774e(AbstractC8739b.m2824c(c));
    }

    /* renamed from: e */
    public static C8758l m2774e(AbstractC8739b abstractC8739b) {
        C8756j.m2789l(abstractC8739b);
        return new C8758l(new C8759a(abstractC8739b));
    }

    /* renamed from: g */
    private Iterator<String> m2772g(CharSequence charSequence) {
        return this.f38634c.mo2766a(this, charSequence);
    }

    /* renamed from: f */
    public List<String> m2773f(CharSequence charSequence) {
        C8756j.m2789l(charSequence);
        Iterator<String> m2772g = m2772g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (m2772g.hasNext()) {
            arrayList.add(m2772g.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
