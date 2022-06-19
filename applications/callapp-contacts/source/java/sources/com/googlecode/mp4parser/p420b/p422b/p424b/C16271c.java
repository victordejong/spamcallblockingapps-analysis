package com.googlecode.mp4parser.p420b.p422b.p424b;

import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.googlecode.mp4parser.b.b.b.c */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/c.class */
public final class C16271c extends AbstractC16270b {

    /* renamed from: a */
    private short f57487a;

    /* renamed from: b */
    private short f57488b;

    /* renamed from: c */
    private List<C16272a> f57489c = new LinkedList();

    /* renamed from: d */
    private int f57490d;

    /* renamed from: e */
    private int f57491e;

    /* renamed from: f */
    private short f57492f;

    /* renamed from: com.googlecode.mp4parser.b.b.b.c$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/c$a.class */
    public static final class C16272a {

        /* renamed from: a */
        int f57493a;

        /* renamed from: b */
        short f57494b;

        public C16272a(int i, short s) {
            this.f57493a = i;
            this.f57494b = s;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C16272a c16272a = (C16272a) obj;
            return this.f57493a == c16272a.f57493a && this.f57494b == c16272a.f57494b;
        }

        public final int hashCode() {
            return (this.f57493a * 31) + this.f57494b;
        }

        public final String toString() {
            return "{availableBitrate=" + this.f57493a + ", targetRateShare=" + ((int) this.f57494b) + '}';
        }
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "rash";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        short s = byteBuffer.getShort();
        this.f57487a = s;
        if (s == 1) {
            this.f57488b = byteBuffer.getShort();
        } else {
            for (int i = s; i > 0; i--) {
                this.f57489c.add(new C16272a(C16282b.m7517a(C3515e.m37851a(byteBuffer)), byteBuffer.getShort()));
            }
        }
        this.f57490d = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f57491e = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f57492f = (short) C3515e.m37852a(byteBuffer.get());
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        short s = this.f57487a;
        ByteBuffer allocate = ByteBuffer.allocate(s == 1 ? 13 : (s * 6) + 11);
        allocate.putShort(this.f57487a);
        if (this.f57487a == 1) {
            allocate.putShort(this.f57488b);
        } else {
            for (C16272a c16272a : this.f57489c) {
                allocate.putInt(c16272a.f57493a);
                allocate.putShort(c16272a.f57494b);
            }
        }
        allocate.putInt(this.f57490d);
        allocate.putInt(this.f57491e);
        C3516f.m37832c(allocate, (int) this.f57492f);
        allocate.rewind();
        return allocate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16271c c16271c = (C16271c) obj;
        if (this.f57492f != c16271c.f57492f || this.f57490d != c16271c.f57490d || this.f57491e != c16271c.f57491e || this.f57487a != c16271c.f57487a || this.f57488b != c16271c.f57488b) {
            return false;
        }
        List<C16272a> list = this.f57489c;
        List<C16272a> list2 = c16271c.f57489c;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public final int hashCode() {
        short s = this.f57487a;
        short s2 = this.f57488b;
        List<C16272a> list = this.f57489c;
        return (((((((((s * 31) + s2) * 31) + (list != null ? list.hashCode() : 0)) * 31) + this.f57490d) * 31) + this.f57491e) * 31) + this.f57492f;
    }
}
