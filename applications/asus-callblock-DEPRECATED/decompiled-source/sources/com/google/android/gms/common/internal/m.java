package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m.class */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f4020a = b("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000 \u180e ").a(a(8192, 8202));

    /* renamed from: b  reason: collision with root package name */
    public static final m f4021b = b("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").a(a(8192, 8198)).a(a(8200, 8202));
    public static final m c = a(0, 127);
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    public static final m l;
    public static final m m;
    public static final m n;
    public static final m o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m$a.class */
    public static final class a extends m {
        List<m> p;

        a(List<m> list) {
            this.p = list;
        }

        @Override // com.google.android.gms.common.internal.m
        public final m a(m mVar) {
            ArrayList arrayList = new ArrayList(this.p);
            arrayList.add((m) b.a(mVar));
            return new a(arrayList);
        }

        @Override // com.google.android.gms.common.internal.m
        public final boolean a(char c) {
            boolean z;
            Iterator<m> it = this.p.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().a(c)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            return z;
        }
    }

    static {
        char[] charArray;
        m a2 = a('0', '9');
        for (char c2 : "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray()) {
            a2 = a2.a(a(c2, (char) (c2 + '\t')));
        }
        d = a2;
        e = a('\t', '\r').a(a((char) 28, ' ')).a(b((char) 5760)).a(b((char) 6158)).a(a((char) 8192, (char) 8198)).a(a((char) 8200, (char) 8203)).a(a((char) 8232, (char) 8233)).a(b((char) 8287)).a(b((char) 12288));
        f = new m() { // from class: com.google.android.gms.common.internal.m.1
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return Character.isDigit(c3);
            }
        };
        g = new m() { // from class: com.google.android.gms.common.internal.m.7
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return Character.isLetter(c3);
            }
        };
        h = new m() { // from class: com.google.android.gms.common.internal.m.8
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return Character.isLetterOrDigit(c3);
            }
        };
        i = new m() { // from class: com.google.android.gms.common.internal.m.9
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return Character.isUpperCase(c3);
            }
        };
        j = new m() { // from class: com.google.android.gms.common.internal.m.10
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return Character.isLowerCase(c3);
            }
        };
        k = a((char) 0, (char) 31).a(a((char) 127, (char) 159));
        l = a((char) 0, ' ').a(a((char) 127, (char) 160)).a(b((char) 173)).a(a((char) 1536, (char) 1539)).a(b("\u06dd\u070f\u1680឴឵\u180e")).a(a((char) 8192, (char) 8207)).a(a((char) 8232, (char) 8239)).a(a((char) 8287, (char) 8292)).a(a((char) 8298, (char) 8303)).a(b((char) 12288)).a(a((char) 55296, (char) 63743)).a(b("\ufeff\ufff9\ufffa\ufffb"));
        m = a((char) 0, (char) 1273).a(b((char) 1470)).a(a((char) 1488, (char) 1514)).a(b((char) 1523)).a(b((char) 1524)).a(a((char) 1536, (char) 1791)).a(a((char) 1872, (char) 1919)).a(a((char) 3584, (char) 3711)).a(a((char) 7680, (char) 8367)).a(a((char) 8448, (char) 8506)).a(a((char) 64336, (char) 65023)).a(a((char) 65136, (char) 65279)).a(a((char) 65377, (char) 65500));
        n = new m() { // from class: com.google.android.gms.common.internal.m.11
            @Override // com.google.android.gms.common.internal.m
            public final m a(m mVar) {
                b.a(mVar);
                return this;
            }

            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return true;
            }

            @Override // com.google.android.gms.common.internal.m
            public final boolean a(CharSequence charSequence) {
                b.a(charSequence);
                return true;
            }
        };
        o = new m() { // from class: com.google.android.gms.common.internal.m.2
            @Override // com.google.android.gms.common.internal.m
            public final m a(m mVar) {
                return (m) b.a(mVar);
            }

            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return false;
            }

            @Override // com.google.android.gms.common.internal.m
            public final boolean a(CharSequence charSequence) {
                return charSequence.length() == 0;
            }
        };
    }

    private static m a(char c2, char c3) {
        b.a(c3 >= c2);
        return new m() { // from class: com.google.android.gms.common.internal.m.6
            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c4) {
                return c2 <= c4 && c4 <= c3;
            }
        };
    }

    private static m b(char c2) {
        return new m() { // from class: com.google.android.gms.common.internal.m.3
            @Override // com.google.android.gms.common.internal.m
            public final m a(m mVar) {
                if (!mVar.a(c2)) {
                    mVar = m.super.a(mVar);
                }
                return mVar;
            }

            @Override // com.google.android.gms.common.internal.m
            public final boolean a(char c3) {
                return c3 == c2;
            }
        };
    }

    private static m b(CharSequence charSequence) {
        m mVar;
        switch (charSequence.length()) {
            case 0:
                mVar = o;
                break;
            case 1:
                mVar = b(charSequence.charAt(0));
                break;
            case 2:
                mVar = new m() { // from class: com.google.android.gms.common.internal.m.4
                    @Override // com.google.android.gms.common.internal.m
                    public final boolean a(char c2) {
                        return c2 == r4 || c2 == r5;
                    }
                };
                break;
            default:
                final char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                mVar = new m() { // from class: com.google.android.gms.common.internal.m.5
                    @Override // com.google.android.gms.common.internal.m
                    public final boolean a(char c2) {
                        return Arrays.binarySearch(charArray, c2) >= 0;
                    }
                };
                break;
        }
        return mVar;
    }

    public m a(m mVar) {
        return new a(Arrays.asList(this, (m) b.a(mVar)));
    }

    public abstract boolean a(char c2);

    public boolean a(CharSequence charSequence) {
        boolean z;
        int length = charSequence.length() - 1;
        while (true) {
            if (length < 0) {
                z = true;
                break;
            } else if (!a(charSequence.charAt(length))) {
                z = false;
                break;
            } else {
                length--;
            }
        }
        return z;
    }
}
