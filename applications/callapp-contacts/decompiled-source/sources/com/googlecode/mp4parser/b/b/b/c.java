package com.googlecode.mp4parser.b.b.b;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/c.class */
public final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private short f33139a;

    /* renamed from: b  reason: collision with root package name */
    private short f33140b;

    /* renamed from: c  reason: collision with root package name */
    private List<a> f33141c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private int f33142d;
    private int e;
    private short f;

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f33143a;

        /* renamed from: b  reason: collision with root package name */
        short f33144b;

        public a(int i, short s) {
            this.f33143a = i;
            this.f33144b = s;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f33143a == aVar.f33143a && this.f33144b == aVar.f33144b;
        }

        public final int hashCode() {
            return (this.f33143a * 31) + this.f33144b;
        }

        public final String toString() {
            return "{availableBitrate=" + this.f33143a + ", targetRateShare=" + ((int) this.f33144b) + '}';
        }
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "rash";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        short s = byteBuffer.getShort();
        this.f33139a = s;
        if (s == 1) {
            this.f33140b = byteBuffer.getShort();
        } else {
            for (int i = s; i > 0; i--) {
                this.f33141c.add(new a(b.a(e.a(byteBuffer)), byteBuffer.getShort()));
            }
        }
        this.f33142d = b.a(e.a(byteBuffer));
        this.e = b.a(e.a(byteBuffer));
        this.f = (short) e.a(byteBuffer.get());
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        short s = this.f33139a;
        ByteBuffer allocate = ByteBuffer.allocate(s == 1 ? 13 : (s * 6) + 11);
        allocate.putShort(this.f33139a);
        if (this.f33139a == 1) {
            allocate.putShort(this.f33140b);
        } else {
            for (a aVar : this.f33141c) {
                allocate.putInt(aVar.f33143a);
                allocate.putShort(aVar.f33144b);
            }
        }
        allocate.putInt(this.f33142d);
        allocate.putInt(this.e);
        f.c(allocate, (int) this.f);
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
        c cVar = (c) obj;
        if (this.f != cVar.f || this.f33142d != cVar.f33142d || this.e != cVar.e || this.f33139a != cVar.f33139a || this.f33140b != cVar.f33140b) {
            return false;
        }
        List<a> list = this.f33141c;
        List<a> list2 = cVar.f33141c;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public final int hashCode() {
        short s = this.f33139a;
        short s2 = this.f33140b;
        List<a> list = this.f33141c;
        return (((((((((s * 31) + s2) * 31) + (list != null ? list.hashCode() : 0)) * 31) + this.f33142d) * 31) + this.e) * 31) + this.f;
    }
}
