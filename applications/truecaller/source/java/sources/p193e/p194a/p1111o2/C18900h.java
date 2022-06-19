package p193e.p194a.p1111o2;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o2.h */
/* loaded from: classes4-dex2jar.jar:e/a/o2/h.class */
public final class C18900h {

    /* renamed from: a */
    public final String f53001a;

    /* renamed from: b */
    public final int f53002b;

    /* renamed from: c */
    public final long f53003c;

    /* renamed from: d */
    public final View f53004d;

    /* renamed from: e */
    public final Object f53005e;

    public C18900h(String str, int i, long j, View view, Object obj) {
        l.e(str, "action");
        l.e(view, ViewAction.VIEW);
        this.f53001a = str;
        this.f53002b = i;
        this.f53003c = j;
        this.f53004d = view;
        this.f53005e = obj;
        if (i >= -1) {
            return;
        }
        throw new IllegalStateException(C22128a.m8611i2("Illegal position: ", i));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18900h(String str, RecyclerView.AbstractC0313c0 abstractC0313c0, View view, Object obj) {
        this(str, abstractC0313c0.getAdapterPosition(), abstractC0313c0.getItemId(), view, obj);
        l.e(str, "action");
        l.e(abstractC0313c0, "holder");
        l.e(view, ViewAction.VIEW);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C18900h(java.lang.String r7, androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r8, android.view.View r9, java.lang.Object r10, int r11) {
        /*
            r6 = this;
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = r8
            android.view.View r0 = r0.itemView
            r9 = r0
            r0 = r9
            java.lang.String r1 = "holder.itemView"
            s1.z.c.l.d(r0, r1)
        L12:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L1d
            r0 = 0
            r10 = r0
        L1d:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1111o2.C18900h.<init>(java.lang.String, androidx.recyclerview.widget.RecyclerView$c0, android.view.View, java.lang.Object, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* renamed from: a */
    public static C18900h m14346a(C18900h c18900h, String str, int i, long j, View view, Object obj, int i2) {
        Object obj2 = null;
        String str2 = (i2 & 1) != 0 ? c18900h.f53001a : null;
        if ((i2 & 2) != 0) {
            i = c18900h.f53002b;
        }
        ?? r12 = j;
        if ((i2 & 4) != 0) {
            r12 = c18900h.f53003c;
        }
        View view2 = (i2 & 8) != 0 ? c18900h.f53004d : null;
        if ((i2 & 16) != 0) {
            obj2 = c18900h.f53005e;
        }
        l.e(str2, "action");
        l.e(view2, ViewAction.VIEW);
        return new C18900h(str2, i, (long) r12, view2, obj2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18900h)) {
                return false;
            }
            C18900h c18900h = (C18900h) obj;
            return l.a(this.f53001a, c18900h.f53001a) && this.f53002b == c18900h.f53002b && this.f53003c == c18900h.f53003c && l.a(this.f53004d, c18900h.f53004d) && l.a(this.f53005e, c18900h.f53005e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f53001a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f53002b;
        long j = this.f53003c;
        int i3 = (int) (j ^ (j >>> 32));
        View view = this.f53004d;
        int hashCode2 = view != null ? view.hashCode() : 0;
        Object obj = this.f53005e;
        if (obj != null) {
            i = obj.hashCode();
        }
        return (((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ItemEvent(action=");
        m8728C.append(this.f53001a);
        m8728C.append(", position=");
        m8728C.append(this.f53002b);
        m8728C.append(", id=");
        m8728C.append(this.f53003c);
        m8728C.append(", view=");
        m8728C.append(this.f53004d);
        m8728C.append(", data=");
        return C22128a.m8634d(m8728C, this.f53005e, ")");
    }
}
