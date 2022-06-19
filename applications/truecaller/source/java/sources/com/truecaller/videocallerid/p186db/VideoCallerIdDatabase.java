package com.truecaller.videocallerid.p186db;

import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p973n.p974d.AbstractC16156a;
import p193e.p194a.p947k.p973n.p975e.AbstractC16177e;
import p193e.p194a.p947k.p973n.p976f.AbstractC16189b;
import p193e.p194a.p947k.p973n.p977g.AbstractC16211c;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b!\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;", "Ln3/c0/q;", "Le/a/k/n/e/e;", "a", "()Le/a/k/n/e/e;", "Le/a/k/n/g/c;", AbstractC2405c.f7629a, "()Le/a/k/n/g/c;", "Le/a/k/n/f/b;", C22021b.f61237c, "()Le/a/k/n/f/b;", "Le/a/k/n/d/a;", "d", "()Le/a/k/n/d/a;", "<init>", "()V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.db.VideoCallerIdDatabase */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/db/VideoCallerIdDatabase.class */
public abstract class VideoCallerIdDatabase extends AbstractC25677q {

    /* renamed from: a */
    public static final AbstractC25649a f16007a = new C4726a(6, 7);

    /* renamed from: com.truecaller.videocallerid.db.VideoCallerIdDatabase$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/db/VideoCallerIdDatabase$a.class */
    public static final class C4726a extends AbstractC25649a {
        public C4726a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            C22128a.m8565u0(abstractC26147b, "database", "ALTER TABLE incoming_video ADD COLUMN mirror_playback INTEGER NOT NULL DEFAULT 0", "ALTER TABLE outgoing_video ADD COLUMN mirror_playback INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: a */
    public abstract AbstractC16177e mo34467a();

    /* renamed from: b */
    public abstract AbstractC16189b mo34466b();

    /* renamed from: c */
    public abstract AbstractC16211c mo34465c();

    /* renamed from: d */
    public abstract AbstractC16156a mo34464d();
}
