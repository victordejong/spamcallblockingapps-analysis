package com.truecaller.videocallerid.p186db;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25651h;
import p1727n3.p1751c0.C25670o;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p973n.p974d.AbstractC16156a;
import p193e.p194a.p947k.p973n.p974d.C16157b;
import p193e.p194a.p947k.p973n.p975e.AbstractC16177e;
import p193e.p194a.p947k.p973n.p975e.C16178f;
import p193e.p194a.p947k.p973n.p976f.AbstractC16189b;
import p193e.p194a.p947k.p973n.p976f.C16190c;
import p193e.p194a.p947k.p973n.p977g.AbstractC16211c;
import p193e.p194a.p947k.p973n.p977g.C16212d;
/* renamed from: com.truecaller.videocallerid.db.VideoCallerIdDatabase_Impl */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl.class */
public final class VideoCallerIdDatabase_Impl extends VideoCallerIdDatabase {

    /* renamed from: b */
    public volatile AbstractC16177e f16008b;

    /* renamed from: c */
    public volatile AbstractC16211c f16009c;

    /* renamed from: d */
    public volatile AbstractC16189b f16010d;

    /* renamed from: e */
    public volatile AbstractC16156a f16011e;

    /* renamed from: com.truecaller.videocallerid.db.VideoCallerIdDatabase_Impl$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/db/VideoCallerIdDatabase_Impl$a.class */
    public class C4727a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4727a(int i) {
            super(i);
            VideoCallerIdDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `hidden_contact` (`number` TEXT NOT NULL, PRIMARY KEY(`number`))", "CREATE TABLE IF NOT EXISTS `outgoing_video` (`_id` TEXT NOT NULL, `raw_video_path` TEXT, `video_url` TEXT NOT NULL, `size_bytes` INTEGER NOT NULL, `duration_millis` INTEGER NOT NULL, `mirror_playback` INTEGER NOT NULL, PRIMARY KEY(`_id`))", "CREATE TABLE IF NOT EXISTS `incoming_video` (`phone_number` TEXT NOT NULL, `_id` TEXT NOT NULL, `video_url` TEXT NOT NULL, `call_id` TEXT NOT NULL, `received_at` INTEGER NOT NULL, `size_bytes` INTEGER NOT NULL, `duration_millis` INTEGER NOT NULL, `mirror_playback` INTEGER NOT NULL, PRIMARY KEY(`phone_number`))", "CREATE TABLE IF NOT EXISTS `video_id_availability` (`number` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL, PRIMARY KEY(`number`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'a85c2d4ee496b7102c94b55d4827281e')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `hidden_contact`", "DROP TABLE IF EXISTS `outgoing_video`", "DROP TABLE IF EXISTS `incoming_video`", "DROP TABLE IF EXISTS `video_id_availability`");
            List<AbstractC25677q.AbstractC25679b> list = VideoCallerIdDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VideoCallerIdDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = VideoCallerIdDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VideoCallerIdDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            VideoCallerIdDatabase_Impl.this.mDatabase = abstractC26147b;
            VideoCallerIdDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = VideoCallerIdDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VideoCallerIdDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPostMigrate(AbstractC26147b abstractC26147b) {
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPreMigrate(AbstractC26147b abstractC26147b) {
            C25653b.m3091a(abstractC26147b);
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public C25683x.C25685b onValidateSchema(AbstractC26147b abstractC26147b) {
            HashMap hashMap = new HashMap(1);
            C25656e c25656e = new C25656e("hidden_contact", hashMap, C22128a.m8658W(hashMap, "number", new C25656e.C25657a("number", "TEXT", true, 1, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "hidden_contact");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("hidden_contact(com.truecaller.videocallerid.db.hiddencontacts.HiddenContact).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(6);
            hashMap2.put("_id", new C25656e.C25657a("_id", "TEXT", true, 1, null, 1));
            hashMap2.put("raw_video_path", new C25656e.C25657a("raw_video_path", "TEXT", false, 0, null, 1));
            hashMap2.put("video_url", new C25656e.C25657a("video_url", "TEXT", true, 0, null, 1));
            hashMap2.put("size_bytes", new C25656e.C25657a("size_bytes", "INTEGER", true, 0, null, 1));
            hashMap2.put("duration_millis", new C25656e.C25657a("duration_millis", "INTEGER", true, 0, null, 1));
            C25656e c25656e2 = new C25656e("outgoing_video", hashMap2, C22128a.m8658W(hashMap2, "mirror_playback", new C25656e.C25657a("mirror_playback", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "outgoing_video");
            if (!c25656e2.equals(m3085a2)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("outgoing_video(com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoId).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(8);
            hashMap3.put("phone_number", new C25656e.C25657a("phone_number", "TEXT", true, 1, null, 1));
            hashMap3.put("_id", new C25656e.C25657a("_id", "TEXT", true, 0, null, 1));
            hashMap3.put("video_url", new C25656e.C25657a("video_url", "TEXT", true, 0, null, 1));
            hashMap3.put("call_id", new C25656e.C25657a("call_id", "TEXT", true, 0, null, 1));
            hashMap3.put("received_at", new C25656e.C25657a("received_at", "INTEGER", true, 0, null, 1));
            hashMap3.put("size_bytes", new C25656e.C25657a("size_bytes", "INTEGER", true, 0, null, 1));
            hashMap3.put("duration_millis", new C25656e.C25657a("duration_millis", "INTEGER", true, 0, null, 1));
            C25656e c25656e3 = new C25656e("incoming_video", hashMap3, C22128a.m8658W(hashMap3, "mirror_playback", new C25656e.C25657a("mirror_playback", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, "incoming_video");
            if (!c25656e3.equals(m3085a3)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("incoming_video(com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoId).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3));
            }
            HashMap hashMap4 = new HashMap(3);
            hashMap4.put("number", new C25656e.C25657a("number", "TEXT", true, 1, null, 1));
            hashMap4.put("enabled", new C25656e.C25657a("enabled", "INTEGER", true, 0, null, 1));
            C25656e c25656e4 = new C25656e("video_id_availability", hashMap4, C22128a.m8658W(hashMap4, "version", new C25656e.C25657a("version", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a4 = C25656e.m3085a(abstractC26147b, "video_id_availability");
            return !c25656e4.equals(m3085a4) ? new C25683x.C25685b(false, C22128a.m8563u2("video_id_availability(com.truecaller.videocallerid.db.availability.VideoIdAvailabilityDto).\n Expected:\n", c25656e4, "\n Found:\n", m3085a4)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.videocallerid.p186db.VideoCallerIdDatabase
    /* renamed from: a */
    public AbstractC16177e mo34467a() {
        AbstractC16177e abstractC16177e;
        if (this.f16008b != null) {
            return this.f16008b;
        }
        synchronized (this) {
            if (this.f16008b == null) {
                this.f16008b = new C16178f(this);
            }
            abstractC16177e = this.f16008b;
        }
        return abstractC16177e;
    }

    @Override // com.truecaller.videocallerid.p186db.VideoCallerIdDatabase
    /* renamed from: b */
    public AbstractC16189b mo34466b() {
        AbstractC16189b abstractC16189b;
        if (this.f16010d != null) {
            return this.f16010d;
        }
        synchronized (this) {
            if (this.f16010d == null) {
                this.f16010d = new C16190c(this);
            }
            abstractC16189b = this.f16010d;
        }
        return abstractC16189b;
    }

    @Override // com.truecaller.videocallerid.p186db.VideoCallerIdDatabase
    /* renamed from: c */
    public AbstractC16211c mo34465c() {
        AbstractC16211c abstractC16211c;
        if (this.f16009c != null) {
            return this.f16009c;
        }
        synchronized (this) {
            if (this.f16009c == null) {
                this.f16009c = new C16212d(this);
            }
            abstractC16211c = this.f16009c;
        }
        return abstractC16211c;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `hidden_contact`");
            writableDatabase.mo2668S0("DELETE FROM `outgoing_video`");
            writableDatabase.mo2668S0("DELETE FROM `incoming_video`");
            writableDatabase.mo2668S0("DELETE FROM `video_id_availability`");
            super.setTransactionSuccessful();
            super.endTransaction();
            if (C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                return;
            }
            writableDatabase.mo2668S0("VACUUM");
        } catch (Throwable th) {
            super.endTransaction();
            if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                writableDatabase.mo2668S0("VACUUM");
            }
            throw th;
        }
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public C25670o createInvalidationTracker() {
        return new C25670o(this, new HashMap(0), new HashMap(0), "hidden_contact", "outgoing_video", "incoming_video", "video_id_availability");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4727a(7), "a85c2d4ee496b7102c94b55d4827281e", "917d27701a3aef2d5d7dfeb04d2c66b4");
        Context context = c25651h.f71846b;
        String str = c25651h.f71847c;
        if (context != null) {
            return c25651h.f71845a.mo1435a(new AbstractC26148c.C26150b(context, str, c25683x, false));
        }
        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
    }

    @Override // com.truecaller.videocallerid.p186db.VideoCallerIdDatabase
    /* renamed from: d */
    public AbstractC16156a mo34464d() {
        AbstractC16156a abstractC16156a;
        if (this.f16011e != null) {
            return this.f16011e;
        }
        synchronized (this) {
            if (this.f16011e == null) {
                this.f16011e = new C16157b(this);
            }
            abstractC16156a = this.f16011e;
        }
        return abstractC16156a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(AbstractC16177e.class, Collections.emptyList());
        hashMap.put(AbstractC16211c.class, Collections.emptyList());
        hashMap.put(AbstractC16189b.class, Collections.emptyList());
        hashMap.put(AbstractC16156a.class, Collections.emptyList());
        return hashMap;
    }
}
