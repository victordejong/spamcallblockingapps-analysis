package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final c f31936a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f31937b;

    /* renamed from: c  reason: collision with root package name */
    final int f31938c;

    /* renamed from: d  reason: collision with root package name */
    private final b f31939d;

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/o$a.class */
    static abstract class a extends com.google.common.base.a<String> {

        /* renamed from: b  reason: collision with root package name */
        final CharSequence f31942b;

        /* renamed from: c  reason: collision with root package name */
        final c f31943c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f31944d;
        int e = 0;
        int f;

        protected a(o oVar, CharSequence charSequence) {
            this.f31943c = oVar.f31936a;
            this.f31944d = oVar.f31937b;
            this.f = oVar.f31938c;
            this.f31942b = charSequence;
        }

        abstract int a(int i);

        @Override // com.google.common.base.a
        protected final /* synthetic */ String a() {
            int i;
            int i2;
            int i3;
            int i4 = this.e;
            while (true) {
                int i5 = this.e;
                if (i5 != -1) {
                    int a2 = a(i5);
                    if (a2 == -1) {
                        a2 = this.f31942b.length();
                        this.e = -1;
                    } else {
                        this.e = b(a2);
                    }
                    int i6 = this.e;
                    i = i4;
                    if (i6 == i4) {
                        int i7 = i6 + 1;
                        this.e = i7;
                        if (i7 > this.f31942b.length()) {
                            this.e = -1;
                        }
                    } else {
                        while (true) {
                            i2 = a2;
                            if (i >= a2) {
                                break;
                            }
                            i2 = a2;
                            if (!this.f31943c.b(this.f31942b.charAt(i))) {
                                break;
                            }
                            i++;
                        }
                        while (i2 > i && this.f31943c.b(this.f31942b.charAt(i2 - 1))) {
                            i2--;
                        }
                        if (!this.f31944d || i != i2) {
                            break;
                        }
                        i4 = this.e;
                    }
                } else {
                    b();
                    return null;
                }
            }
            int i8 = this.f;
            if (i8 == 1) {
                int length = this.f31942b.length();
                this.e = -1;
                while (true) {
                    i3 = length;
                    if (length <= i) {
                        break;
                    }
                    i3 = length;
                    if (!this.f31943c.b(this.f31942b.charAt(length - 1))) {
                        break;
                    }
                    length--;
                }
            } else {
                this.f = i8 - 1;
                i3 = i2;
            }
            return this.f31942b.subSequence(i, i3).toString();
        }

        abstract int b(int i);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/o$b.class */
    interface b {
        Iterator<String> a(o oVar, CharSequence charSequence);
    }

    private o(b bVar) {
        this(bVar, false, c.a(), Integer.MAX_VALUE);
    }

    private o(b bVar, boolean z, c cVar, int i) {
        this.f31939d = bVar;
        this.f31937b = z;
        this.f31936a = cVar;
        this.f31938c = i;
    }

    public static o a(final c cVar) {
        m.a(cVar);
        return new o(new b() { // from class: com.google.common.base.o.1
            @Override // com.google.common.base.o.b
            public final /* synthetic */ Iterator a(o oVar, CharSequence charSequence) {
                return new a(oVar, charSequence) { // from class: com.google.common.base.o.1.1
                    @Override // com.google.common.base.o.a
                    final int a(int i) {
                        return c.this.a(this.f31942b, i);
                    }

                    @Override // com.google.common.base.o.a
                    final int b(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    public final List<String> a(CharSequence charSequence) {
        m.a(charSequence);
        Iterator<String> a2 = this.f31939d.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (a2.hasNext()) {
            arrayList.add(a2.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
