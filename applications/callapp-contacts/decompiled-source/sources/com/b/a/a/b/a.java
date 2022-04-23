package com.b.a.a.b;

import com.b.a.a.ag;
import com.b.a.a.b;
import com.b.a.a.e;
import com.b.a.d;
import com.googlecode.mp4parser.a.f;
import java.util.AbstractList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/a.class */
public final class a extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    List<f> f7093a;

    public a(ag agVar, d... dVarArr) {
        e parent = ((b) agVar.getParent()).getParent();
        if (!agVar.getParent().a(com.b.a.a.a.a.class).isEmpty()) {
            this.f7093a = new com.googlecode.mp4parser.a.c.b(agVar.a().a(), parent, dVarArr);
        } else if (dVarArr.length <= 0) {
            this.f7093a = new com.googlecode.mp4parser.a.c.a(agVar.a().a(), parent);
        } else {
            throw new RuntimeException("The TrackBox comes from a standard MP4 file. Only use the additionalFragments param if you are dealing with ( fragmented MP4 files AND additional fragments in standalone files )");
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f7093a.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7093a.size();
    }
}
