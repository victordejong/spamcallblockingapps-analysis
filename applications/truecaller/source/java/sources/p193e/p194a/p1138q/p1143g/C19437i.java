package p193e.p194a.p1138q.p1143g;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.q.g.i */
/* loaded from: classes4-dex2jar.jar:e/a/q/g/i.class */
public final class C19437i {

    /* renamed from: a */
    public static final AbstractC25649a f53989a = new C19438a(2, 3);

    /* renamed from: b */
    public static final AbstractC25649a f53990b = new C19439b(3, 4);

    /* renamed from: c */
    public static final AbstractC25649a f53991c = new C19440c(4, 5);

    /* renamed from: d */
    public static final AbstractC25649a f53992d = new C19441d(5, 6);

    /* renamed from: e.a.q.g.i$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/i$a.class */
    public static final class C19438a extends AbstractC25649a {
        public C19438a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            C22128a.m8565u0(abstractC26147b, "db", "\n                    CREATE TABLE IF NOT EXISTS `contact_feedback_timestamp_table` (\n                    `_id` INTEGER NOT NULL, \n                    `contact_id` INTEGER NOT NULL, \n                    `feedback_timestamp` INTEGER NOT NULL, PRIMARY KEY(`_id`))\n                    ", "\n                    CREATE UNIQUE INDEX IF NOT EXISTS `index_contact_feedback_timestamp_table_contact_id` \n                    ON `contact_feedback_timestamp_table` (`contact_id`)\n                    ");
        }
    }

    /* renamed from: e.a.q.g.i$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/i$b.class */
    public static final class C19439b extends AbstractC25649a {
        public C19439b(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            C22128a.m8565u0(abstractC26147b, "db", "\n                CREATE TABLE IF NOT EXISTS `comment_feedback_table` \n                (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n                `creation_timestamp` INTEGER NOT NULL,\n                `phone_number` TEXT NOT NULL, \n                `text_body` TEXT NOT NULL,\n                `source` TEXT NOT NULL, \n                `sync_state` TEXT NOT NULL)\n                ", "\n                CREATE UNIQUE INDEX IF NOT EXISTS `index_comment_feedback_table_phone_number` \n                ON `comment_feedback_table` (`phone_number`)\n                ");
        }
    }

    /* renamed from: e.a.q.g.i$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/i$c.class */
    public static final class C19440c extends AbstractC25649a {
        public C19440c(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            l.e(abstractC26147b, "db");
            abstractC26147b.mo2668S0("\n                DROP TABLE IF EXISTS `comment_feedback_table`;\n                ");
            abstractC26147b.mo2668S0("\n                DROP INDEX IF EXISTS `index_comment_feedback_table_phone_number`;\n                ");
            abstractC26147b.mo2668S0("\n                CREATE TABLE IF NOT EXISTS `comment_feedback_table` \n                (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n                `creation_timestamp` INTEGER NOT NULL,\n                `phone_number` TEXT NOT NULL, \n                `text_body` TEXT NOT NULL,\n                `source` TEXT NOT NULL, \n                `sync_state` TEXT NOT NULL, \n                `anonymous` INTEGER NOT NULL,                \n                UNIQUE(`phone_number`) ON CONFLICT REPLACE)\n                ");
            abstractC26147b.mo2668S0("\n                CREATE UNIQUE INDEX IF NOT EXISTS `index_comment_feedback_table_phone_number` \n                ON `comment_feedback_table` (`phone_number`)\n                ");
        }
    }

    /* renamed from: e.a.q.g.i$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/i$d.class */
    public static final class C19441d extends AbstractC25649a {
        public C19441d(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            l.e(abstractC26147b, "db");
            long currentTimeMillis = System.currentTimeMillis();
            abstractC26147b.mo2668S0("\n                ALTER TABLE contact_feedback ADD COLUMN created_at INTEGER NOT NULL DEFAULT " + currentTimeMillis + "\n                ");
        }
    }
}
