package com.mp4parser.p471a.p472a;

import com.p102b.p103a.C3513c;
import java.math.BigInteger;
import java.util.Arrays;
/* renamed from: com.mp4parser.a.a.a */
/* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a.class */
public final class C17027a {

    /* renamed from: a */
    public byte[] f60477a = new byte[0];

    /* renamed from: b */
    public AbstractC17037j[] f60478b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$a.class */
    public abstract class AbstractC17028a implements AbstractC17037j {
        private AbstractC17028a() {
            C17027a.this = r4;
        }

        /* synthetic */ AbstractC17028a(C17027a c17027a, AbstractC17028a abstractC17028a) {
            this();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AbstractC17037j abstractC17037j = (AbstractC17037j) obj;
            return mo5975a() == abstractC17037j.mo5975a() && mo5974b() == abstractC17037j.mo5974b();
        }

        public String toString() {
            return "P(" + mo5975a() + "|" + mo5974b() + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$b */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$b.class */
    public final class C17029b extends AbstractC17028a {

        /* renamed from: c */
        private byte f60481c;

        /* renamed from: d */
        private byte f60482d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17029b(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60481c = (byte) i;
            this.f60482d = (byte) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60481c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60482d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$c */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$c.class */
    public final class C17030c extends AbstractC17028a {

        /* renamed from: c */
        private byte f60484c;

        /* renamed from: d */
        private int f60485d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17030c(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60484c = (byte) i;
            this.f60485d = (int) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60484c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60485d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$d */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$d.class */
    public final class C17031d extends AbstractC17028a {

        /* renamed from: c */
        private byte f60487c;

        /* renamed from: d */
        private long f60488d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17031d(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60487c = (byte) i;
            this.f60488d = j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60487c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60488d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$e */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$e.class */
    public final class C17032e extends AbstractC17028a {

        /* renamed from: c */
        private byte f60490c;

        /* renamed from: d */
        private short f60491d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17032e(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60490c = (byte) i;
            this.f60491d = (short) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60490c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60491d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$f */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$f.class */
    public final class C17033f extends AbstractC17028a {

        /* renamed from: c */
        private int f60493c;

        /* renamed from: d */
        private byte f60494d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17033f(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60493c = i;
            this.f60494d = (byte) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60493c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60494d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$g */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$g.class */
    public final class C17034g extends AbstractC17028a {

        /* renamed from: c */
        private int f60496c;

        /* renamed from: d */
        private int f60497d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17034g(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60496c = i;
            this.f60497d = (int) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60496c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60497d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$h */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$h.class */
    public final class C17035h extends AbstractC17028a {

        /* renamed from: c */
        private int f60499c;

        /* renamed from: d */
        private long f60500d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17035h(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60499c = i;
            this.f60500d = j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60499c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60500d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$i */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$i.class */
    public final class C17036i extends AbstractC17028a {

        /* renamed from: c */
        private int f60502c;

        /* renamed from: d */
        private short f60503d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17036i(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60502c = i;
            this.f60503d = (short) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60502c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60503d;
        }
    }

    /* renamed from: com.mp4parser.a.a.a$j */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$j.class */
    public interface AbstractC17037j {
        /* renamed from: a */
        int mo5975a();

        /* renamed from: b */
        long mo5974b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$k */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$k.class */
    public final class C17038k extends AbstractC17028a {

        /* renamed from: c */
        private short f60505c;

        /* renamed from: d */
        private byte f60506d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17038k(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60505c = (short) i;
            this.f60506d = (byte) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60505c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60506d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$l */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$l.class */
    public final class C17039l extends AbstractC17028a {

        /* renamed from: c */
        private short f60508c;

        /* renamed from: d */
        private int f60509d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17039l(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60508c = (short) i;
            this.f60509d = (int) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60508c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60509d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$m */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$m.class */
    public final class C17040m extends AbstractC17028a {

        /* renamed from: c */
        private short f60511c;

        /* renamed from: d */
        private long f60512d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17040m(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60511c = (short) i;
            this.f60512d = j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60511c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60512d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mp4parser.a.a.a$n */
    /* loaded from: classes4-dex2jar.jar:com/mp4parser/a/a/a$n.class */
    public final class C17041n extends AbstractC17028a {

        /* renamed from: c */
        private short f60514c;

        /* renamed from: d */
        private short f60515d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17041n(int i, long j) {
            super(r5, null);
            C17027a.this = r5;
            this.f60514c = (short) i;
            this.f60515d = (short) j;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: a */
        public final int mo5975a() {
            return this.f60514c;
        }

        @Override // com.mp4parser.p471a.p472a.C17027a.AbstractC17037j
        /* renamed from: b */
        public final long mo5974b() {
            return this.f60515d;
        }
    }

    /* renamed from: a */
    public final int m5977a() {
        int length = this.f60477a.length;
        AbstractC17037j[] abstractC17037jArr = this.f60478b;
        int i = length;
        if (abstractC17037jArr != null) {
            i = length;
            if (abstractC17037jArr.length > 0) {
                i = length + 2 + (abstractC17037jArr.length * 6);
            }
        }
        return i;
    }

    /* renamed from: a */
    public final AbstractC17037j m5976a(int i, long j) {
        return i <= 127 ? j <= 127 ? new C17029b(i, j) : j <= 32767 ? new C17032e(i, j) : j <= 2147483647L ? new C17030c(i, j) : new C17031d(i, j) : i <= 32767 ? j <= 127 ? new C17038k(i, j) : j <= 32767 ? new C17041n(i, j) : j <= 2147483647L ? new C17039l(i, j) : new C17040m(i, j) : j <= 127 ? new C17033f(i, j) : j <= 32767 ? new C17036i(i, j) : j <= 2147483647L ? new C17034g(i, j) : new C17035h(i, j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C17027a c17027a = (C17027a) obj;
        if (!new BigInteger(this.f60477a).equals(new BigInteger(c17027a.f60477a))) {
            return false;
        }
        AbstractC17037j[] abstractC17037jArr = this.f60478b;
        AbstractC17037j[] abstractC17037jArr2 = c17027a.f60478b;
        return abstractC17037jArr != null ? Arrays.equals(abstractC17037jArr, abstractC17037jArr2) : abstractC17037jArr2 == null;
    }

    public final int hashCode() {
        byte[] bArr = this.f60477a;
        int i = 0;
        int hashCode = bArr != null ? Arrays.hashCode(bArr) : 0;
        AbstractC17037j[] abstractC17037jArr = this.f60478b;
        if (abstractC17037jArr != null) {
            i = Arrays.hashCode(abstractC17037jArr);
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "Entry{iv=" + C3513c.m37856a(this.f60477a) + ", pairs=" + Arrays.toString(this.f60478b) + '}';
    }
}
