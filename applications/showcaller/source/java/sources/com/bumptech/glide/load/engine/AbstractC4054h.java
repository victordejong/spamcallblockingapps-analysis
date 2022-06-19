package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
/* renamed from: com.bumptech.glide.load.engine.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h.class */
public abstract class AbstractC4054h {

    /* renamed from: a */
    public static final AbstractC4054h f12790a = new C4055a();

    /* renamed from: b */
    public static final AbstractC4054h f12791b = new C4056b();

    /* renamed from: c */
    public static final AbstractC4054h f12792c = new C4057c();

    /* renamed from: d */
    public static final AbstractC4054h f12793d = new C4058d();

    /* renamed from: e */
    public static final AbstractC4054h f12794e = new C4059e();

    /* renamed from: com.bumptech.glide.load.engine.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$a.class */
    class C4055a extends AbstractC4054h {
        C4055a() {
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: a */
        public boolean mo23376a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: b */
        public boolean mo23375b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: c */
        public boolean mo23374c(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: d */
        public boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$b.class */
    class C4056b extends AbstractC4054h {
        C4056b() {
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: a */
        public boolean mo23376a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: b */
        public boolean mo23375b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: c */
        public boolean mo23374c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: d */
        public boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$c.class */
    class C4057c extends AbstractC4054h {
        C4057c() {
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: a */
        public boolean mo23376a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: b */
        public boolean mo23375b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: c */
        public boolean mo23374c(DataSource dataSource) {
            return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: d */
        public boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$d.class */
    class C4058d extends AbstractC4054h {
        C4058d() {
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: a */
        public boolean mo23376a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: b */
        public boolean mo23375b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: c */
        public boolean mo23374c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: d */
        public boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.h$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/h$e.class */
    class C4059e extends AbstractC4054h {
        C4059e() {
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: a */
        public boolean mo23376a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: b */
        public boolean mo23375b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: c */
        public boolean mo23374c(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC4054h
        /* renamed from: d */
        public boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return ((z && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED;
        }
    }

    /* renamed from: a */
    public abstract boolean mo23376a();

    /* renamed from: b */
    public abstract boolean mo23375b();

    /* renamed from: c */
    public abstract boolean mo23374c(DataSource dataSource);

    /* renamed from: d */
    public abstract boolean mo23373d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);
}
