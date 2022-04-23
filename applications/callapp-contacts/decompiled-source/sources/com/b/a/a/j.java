package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/j.class */
public class j extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final a.AbstractC0755a f7117b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7118c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7119d = null;

    /* renamed from: a  reason: collision with root package name */
    public List<a> f7120a = new LinkedList();

    /* loaded from: classes-dex2jar.jar:com/b/a/a/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        j f7121a;

        /* renamed from: b  reason: collision with root package name */
        public long f7122b;

        /* renamed from: c  reason: collision with root package name */
        public long f7123c;

        /* renamed from: d  reason: collision with root package name */
        public double f7124d;

        public a(j jVar, long j, long j2, double d2) {
            this.f7122b = j;
            this.f7123c = j2;
            this.f7124d = d2;
            this.f7121a = jVar;
        }

        public a(j jVar, ByteBuffer byteBuffer) {
            if (jVar.h() == 1) {
                this.f7122b = e.d(byteBuffer);
                this.f7123c = byteBuffer.getLong();
                this.f7124d = e.e(byteBuffer);
            } else {
                this.f7122b = e.a(byteBuffer);
                this.f7123c = byteBuffer.getInt();
                this.f7124d = e.e(byteBuffer);
            }
            this.f7121a = jVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7123c == aVar.f7123c && this.f7122b == aVar.f7122b;
        }

        public final int hashCode() {
            long j = this.f7122b;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f7123c;
            return (i * 31) + ((int) (j2 ^ (j2 >>> 32)));
        }

        public final String toString() {
            return "Entry{segmentDuration=" + this.f7122b + ", mediaTime=" + this.f7123c + ", mediaRate=" + this.f7124d + '}';
        }
    }

    static {
        a();
    }

    public j() {
        super("elst");
    }

    private static void a() {
        b bVar = new b("EditListBox.java", j.class);
        f7117b = bVar.a("method-execution", bVar.a("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        f7118c = bVar.a("method-execution", bVar.a("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        f7119d = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7120a = new LinkedList();
        for (int i = 0; i < a2; i++) {
            this.f7120a.add(new a(this, byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7120a.size());
        for (a aVar : this.f7120a) {
            if (aVar.f7121a.h() == 1) {
                f.a(byteBuffer, aVar.f7122b);
                byteBuffer.putLong(aVar.f7123c);
            } else {
                f.b(byteBuffer, com.googlecode.mp4parser.c.b.a(aVar.f7122b));
                byteBuffer.putInt(com.googlecode.mp4parser.c.b.a(aVar.f7123c));
            }
            f.a(byteBuffer, aVar.f7124d);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (h() == 1 ? this.f7120a.size() * 20 : this.f7120a.size() * 12) + 8;
    }

    public String toString() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f7119d, this, this);
        h.a();
        h.a(a2);
        return "EditListBox{entries=" + this.f7120a + '}';
    }
}
