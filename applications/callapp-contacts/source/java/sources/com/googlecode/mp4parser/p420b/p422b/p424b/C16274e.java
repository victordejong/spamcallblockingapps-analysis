package com.googlecode.mp4parser.p420b.p422b.p424b;

import com.explorestack.iab.utils.C9605o;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.mp4parser.iso14496.part15.C17045a;
import com.mp4parser.iso14496.part15.C17046b;
import com.mp4parser.iso14496.part15.C17047c;
import com.mp4parser.iso14496.part15.C17048d;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.b.b.e */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/e.class */
public class C16274e extends AbstractC16280c {

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f57496c = null;

    /* renamed from: d */
    public static final AbstractC20997a.AbstractC20998a f57497d = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57498f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f57499g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f57500h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f57501i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f57502j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f57503k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f57504l = null;

    /* renamed from: a */
    public String f57505a;

    /* renamed from: b */
    public List<AbstractC16270b> f57506b = new LinkedList();

    /* renamed from: e */
    private int f57507e;

    static {
        m7528c();
    }

    public C16274e() {
        super("sgpd");
        m7522b(1);
    }

    /* renamed from: c */
    private static void m7528c() {
        C20987b c20987b = new C20987b("SampleGroupDescriptionBox.java", C16274e.class);
        f57498f = c20987b.m164a("method-execution", c20987b.m165a("1", "getGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 57);
        f57496c = c20987b.m164a("method-execution", c20987b.m165a("1", "setGroupingType", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.String", "groupingType", "", "void"), 61);
        f57499g = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 153);
        f57500h = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "int", "defaultLength", "", "void"), 157);
        f57501i = c20987b.m164a("method-execution", c20987b.m165a("1", "getGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.util.List"), 161);
        f57497d = c20987b.m164a("method-execution", c20987b.m165a("1", "setGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.util.List", "groupEntries", "", "void"), 165);
        f57502j = c20987b.m164a("method-execution", c20987b.m165a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.Object", C9605o.f32625a, "", "boolean"), 170);
        f57503k = c20987b.m164a("method-execution", c20987b.m165a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 191);
        f57504l = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 199);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v70 */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if (m7519h() == 1) {
            this.f57505a = C3515e.m37843h(byteBuffer);
            if (m7519h() == 1) {
                this.f57507e = C16282b.m7517a(C3515e.m37851a(byteBuffer));
            }
            ?? r0 = C3515e.m37851a(byteBuffer);
            while (true) {
                char c = r0;
                if (c <= 0) {
                    return;
                }
                int i = this.f57507e;
                if (m7519h() != 1) {
                    throw new RuntimeException("This should be implemented");
                }
                if (this.f57507e == 0) {
                    i = C16282b.m7517a(C3515e.m37851a(byteBuffer));
                }
                int position = byteBuffer.position();
                ByteBuffer slice = byteBuffer.slice();
                slice.limit(i);
                List<AbstractC16270b> list = this.f57506b;
                String str = this.f57505a;
                AbstractC16270b c16273d = "roll".equals(str) ? new C16273d() : "rash".equals(str) ? new C16271c() : "seig".equals(str) ? new C16269a() : "rap ".equals(str) ? new C16279i() : "tele".equals(str) ? new C16277g() : "sync".equals(str) ? new C17046b() : "tscl".equals(str) ? new C17047c() : "tsas".equals(str) ? new C17048d() : "stsa".equals(str) ? new C17045a() : new C16278h(str);
                c16273d.mo5962a(slice);
                list.add(c16273d);
                byteBuffer.position(position + i);
                r0 = c - 1;
            }
        } else {
            throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
        }
    }

    /* renamed from: a */
    public final String m7530a() {
        AbstractC20997a m163a = C20987b.m163a(f57498f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57505a;
    }

    /* renamed from: b */
    public final List<AbstractC16270b> m7529b() {
        AbstractC20997a m163a = C20987b.m163a(f57501i, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57506b;
    }

    public boolean equals(Object obj) {
        AbstractC20997a m162a = C20987b.m162a(f57502j, this, this, obj);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16274e c16274e = (C16274e) obj;
        if (this.f57507e != c16274e.f57507e) {
            return false;
        }
        List<AbstractC16270b> list = this.f57506b;
        List<AbstractC16270b> list2 = c16274e.f57506b;
        return list != null ? list.equals(list2) : list2 == null;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        byteBuffer.put(C3514d.m37853a(this.f57505a));
        if (m7519h() == 1) {
            C3516f.m37835b(byteBuffer, this.f57507e);
        }
        C3516f.m37835b(byteBuffer, this.f57506b.size());
        for (AbstractC16270b abstractC16270b : this.f57506b) {
            if (m7519h() == 1 && this.f57507e == 0) {
                C3516f.m37835b(byteBuffer, abstractC16270b.mo5961b().limit());
            }
            byteBuffer.put(abstractC16270b.mo5961b());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        ?? r6 = (m7519h() == 1 ? '\f' : '\b') + 4;
        for (AbstractC16270b abstractC16270b : this.f57506b) {
            ?? r10 = r6;
            if (m7519h() == 1) {
                r10 = r6;
                if (this.f57507e == 0) {
                    r10 = r6 + 4;
                }
            }
            r6 = r10 + abstractC16270b.mo5964c();
        }
        return r6 == true ? 1L : 0L;
    }

    public int hashCode() {
        AbstractC20997a m163a = C20987b.m163a(f57503k, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        int i = this.f57507e;
        int i2 = 0;
        List<AbstractC16270b> list = this.f57506b;
        if (list != null) {
            i2 = list.hashCode();
        }
        return ((i + 0) * 31) + i2;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f57504l, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder("SampleGroupDescriptionBox{groupingType='");
        sb.append(this.f57506b.size() > 0 ? this.f57506b.get(0).mo5963a() : "????");
        sb.append('\'');
        sb.append(", defaultLength=");
        sb.append(this.f57507e);
        sb.append(", groupEntries=");
        sb.append(this.f57506b);
        sb.append('}');
        return sb.toString();
    }
}
