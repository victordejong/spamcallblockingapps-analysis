package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.EnumC1578c;
/* renamed from: com.bumptech.glide.load.engine.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i.class */
public abstract class AbstractC1745i {

    /* renamed from: a */
    public static final AbstractC1745i f5301a = new AbstractC1745i() { // from class: com.bumptech.glide.load.engine.i.1
        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16405a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16404a(EnumC1464a enumC1464a) {
            return enumC1464a == EnumC1464a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c) {
            return (enumC1464a == EnumC1464a.RESOURCE_DISK_CACHE || enumC1464a == EnumC1464a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: b */
        public boolean mo16402b() {
            return true;
        }
    };

    /* renamed from: b */
    public static final AbstractC1745i f5302b = new AbstractC1745i() { // from class: com.bumptech.glide.load.engine.i.2
        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16405a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16404a(EnumC1464a enumC1464a) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: b */
        public boolean mo16402b() {
            return false;
        }
    };

    /* renamed from: c */
    public static final AbstractC1745i f5303c = new AbstractC1745i() { // from class: com.bumptech.glide.load.engine.i.3
        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16405a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16404a(EnumC1464a enumC1464a) {
            return (enumC1464a == EnumC1464a.DATA_DISK_CACHE || enumC1464a == EnumC1464a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: b */
        public boolean mo16402b() {
            return true;
        }
    };

    /* renamed from: d */
    public static final AbstractC1745i f5304d = new AbstractC1745i() { // from class: com.bumptech.glide.load.engine.i.4
        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16405a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16404a(EnumC1464a enumC1464a) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c) {
            return (enumC1464a == EnumC1464a.RESOURCE_DISK_CACHE || enumC1464a == EnumC1464a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: b */
        public boolean mo16402b() {
            return false;
        }
    };

    /* renamed from: e */
    public static final AbstractC1745i f5305e = new AbstractC1745i() { // from class: com.bumptech.glide.load.engine.i.5
        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16405a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16404a(EnumC1464a enumC1464a) {
            return enumC1464a == EnumC1464a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: a */
        public boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c) {
            return ((z && enumC1464a == EnumC1464a.DATA_DISK_CACHE) || enumC1464a == EnumC1464a.LOCAL) && enumC1578c == EnumC1578c.TRANSFORMED;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1745i
        /* renamed from: b */
        public boolean mo16402b() {
            return true;
        }
    };

    /* renamed from: a */
    public abstract boolean mo16405a();

    /* renamed from: a */
    public abstract boolean mo16404a(EnumC1464a enumC1464a);

    /* renamed from: a */
    public abstract boolean mo16403a(boolean z, EnumC1464a enumC1464a, EnumC1578c enumC1578c);

    /* renamed from: b */
    public abstract boolean mo16402b();
}
