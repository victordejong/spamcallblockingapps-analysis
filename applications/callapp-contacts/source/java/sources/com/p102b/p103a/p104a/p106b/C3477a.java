package com.p102b.p103a.p104a.p106b;

import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p414a.p418c.C16233a;
import com.googlecode.mp4parser.p414a.p418c.C16235b;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.p105a.C3456a;
import java.util.AbstractList;
import java.util.List;
/* renamed from: com.b.a.a.b.a */
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/a.class */
public final class C3477a extends AbstractList<AbstractC16243f> {

    /* renamed from: a */
    List<AbstractC16243f> f13202a;

    public C3477a(C3473ag c3473ag, C3514d... c3514dArr) {
        AbstractC3487e parent = ((AbstractC3476b) c3473ag.getParent()).getParent();
        if (!c3473ag.getParent().mo7494a(C3456a.class).isEmpty()) {
            this.f13202a = new C16235b(c3473ag.m37908a().m37905a(), parent, c3514dArr);
        } else if (c3514dArr.length > 0) {
            throw new RuntimeException("The TrackBox comes from a standard MP4 file. Only use the additionalFragments param if you are dealing with ( fragmented MP4 files AND additional fragments in standalone files )");
        } else {
            this.f13202a = new C16233a(c3473ag.m37908a().m37905a(), parent);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f13202a.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13202a.size();
    }
}
