package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.j */
/* loaded from: classes-dex2jar.jar:com/b/a/a/j.class */
public class C3492j extends AbstractC16280c {

    /* renamed from: b */
    public static final AbstractC20997a.AbstractC20998a f13243b = null;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13244c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13245d = null;

    /* renamed from: a */
    public List<C3493a> f13246a = new LinkedList();

    /* renamed from: com.b.a.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/j$a.class */
    public static final class C3493a {

        /* renamed from: a */
        C3492j f13247a;

        /* renamed from: b */
        public long f13248b;

        /* renamed from: c */
        public long f13249c;

        /* renamed from: d */
        public double f13250d;

        public C3493a(C3492j c3492j, long j, long j2, double d) {
            this.f13248b = j;
            this.f13249c = j2;
            this.f13250d = d;
            this.f13247a = c3492j;
        }

        public C3493a(C3492j c3492j, ByteBuffer byteBuffer) {
            if (c3492j.m7519h() == 1) {
                this.f13248b = C3515e.m37847d(byteBuffer);
                this.f13249c = byteBuffer.getLong();
                this.f13250d = C3515e.m37846e(byteBuffer);
            } else {
                this.f13248b = C3515e.m37851a(byteBuffer);
                this.f13249c = byteBuffer.getInt();
                this.f13250d = C3515e.m37846e(byteBuffer);
            }
            this.f13247a = c3492j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C3493a c3493a = (C3493a) obj;
            return this.f13249c == c3493a.f13249c && this.f13248b == c3493a.f13248b;
        }

        public final int hashCode() {
            long j = this.f13248b;
            int i = (int) (j ^ (j >>> 32));
            long j2 = this.f13249c;
            return (i * 31) + ((int) (j2 ^ (j2 >>> 32)));
        }

        public final String toString() {
            return "Entry{segmentDuration=" + this.f13248b + ", mediaTime=" + this.f13249c + ", mediaRate=" + this.f13250d + '}';
        }
    }

    static {
        m37890a();
    }

    public C3492j() {
        super("elst");
    }

    /* renamed from: a */
    private static void m37890a() {
        C20987b c20987b = new C20987b("EditListBox.java", C3492j.class);
        f13243b = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        f13244c = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        f13245d = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13246a = new LinkedList();
        for (int i = 0; i < m7517a; i++) {
            this.f13246a.add(new C3493a(this, byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13246a.size());
        for (C3493a c3493a : this.f13246a) {
            if (c3493a.f13247a.m7519h() == 1) {
                C3516f.m37839a(byteBuffer, c3493a.f13248b);
                byteBuffer.putLong(c3493a.f13249c);
            } else {
                C3516f.m37835b(byteBuffer, C16282b.m7517a(c3493a.f13248b));
                byteBuffer.putInt(C16282b.m7517a(c3493a.f13249c));
            }
            C3516f.m37841a(byteBuffer, c3493a.f13250d);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (m7519h() == 1 ? this.f13246a.size() * 20 : this.f13246a.size() * 12) + 8;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13245d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "EditListBox{entries=" + this.f13246a + '}';
    }
}
