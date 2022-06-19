package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.EnumC3660c;
/* renamed from: com.bumptech.glide.load.engine.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j.class */
public abstract class AbstractC3782j {

    /* renamed from: a */
    public static final AbstractC3782j f14055a = new AbstractC3782j() { // from class: com.bumptech.glide.load.engine.j.1
        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37372a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37371a(EnumC3658a enumC3658a) {
            return enumC3658a == EnumC3658a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c) {
            return (enumC3658a == EnumC3658a.RESOURCE_DISK_CACHE || enumC3658a == EnumC3658a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: b */
        public final boolean mo37369b() {
            return true;
        }
    };

    /* renamed from: b */
    public static final AbstractC3782j f14056b = new AbstractC3782j() { // from class: com.bumptech.glide.load.engine.j.2
        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37372a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37371a(EnumC3658a enumC3658a) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: b */
        public final boolean mo37369b() {
            return false;
        }
    };

    /* renamed from: c */
    public static final AbstractC3782j f14057c = new AbstractC3782j() { // from class: com.bumptech.glide.load.engine.j.3
        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37372a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37371a(EnumC3658a enumC3658a) {
            return (enumC3658a == EnumC3658a.DATA_DISK_CACHE || enumC3658a == EnumC3658a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: b */
        public final boolean mo37369b() {
            return true;
        }
    };

    /* renamed from: d */
    public static final AbstractC3782j f14058d = new AbstractC3782j() { // from class: com.bumptech.glide.load.engine.j.4
        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37372a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37371a(EnumC3658a enumC3658a) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c) {
            return (enumC3658a == EnumC3658a.RESOURCE_DISK_CACHE || enumC3658a == EnumC3658a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: b */
        public final boolean mo37369b() {
            return false;
        }
    };

    /* renamed from: e */
    public static final AbstractC3782j f14059e = new AbstractC3782j() { // from class: com.bumptech.glide.load.engine.j.5
        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37372a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37371a(EnumC3658a enumC3658a) {
            return enumC3658a == EnumC3658a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: a */
        public final boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c) {
            return ((z && enumC3658a == EnumC3658a.DATA_DISK_CACHE) || enumC3658a == EnumC3658a.LOCAL) && enumC3660c == EnumC3660c.TRANSFORMED;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC3782j
        /* renamed from: b */
        public final boolean mo37369b() {
            return true;
        }
    };

    /* renamed from: a */
    public abstract boolean mo37372a();

    /* renamed from: a */
    public abstract boolean mo37371a(EnumC3658a enumC3658a);

    /* renamed from: a */
    public abstract boolean mo37370a(boolean z, EnumC3658a enumC3658a, EnumC3660c enumC3660c);

    /* renamed from: b */
    public abstract boolean mo37369b();
}
