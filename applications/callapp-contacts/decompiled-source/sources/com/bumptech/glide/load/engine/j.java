package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j.class */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7554a = new j() { // from class: com.bumptech.glide.load.engine.j.1
        @Override // com.bumptech.glide.load.engine.j
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(a aVar) {
            return aVar == a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(boolean z, a aVar, c cVar) {
            return (aVar == a.RESOURCE_DISK_CACHE || aVar == a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean b() {
            return true;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final j f7555b = new j() { // from class: com.bumptech.glide.load.engine.j.2
        @Override // com.bumptech.glide.load.engine.j
        public final boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(boolean z, a aVar, c cVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean b() {
            return false;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final j f7556c = new j() { // from class: com.bumptech.glide.load.engine.j.3
        @Override // com.bumptech.glide.load.engine.j
        public final boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(a aVar) {
            return (aVar == a.DATA_DISK_CACHE || aVar == a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(boolean z, a aVar, c cVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean b() {
            return true;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final j f7557d = new j() { // from class: com.bumptech.glide.load.engine.j.4
        @Override // com.bumptech.glide.load.engine.j
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(a aVar) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(boolean z, a aVar, c cVar) {
            return (aVar == a.RESOURCE_DISK_CACHE || aVar == a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean b() {
            return false;
        }
    };
    public static final j e = new j() { // from class: com.bumptech.glide.load.engine.j.5
        @Override // com.bumptech.glide.load.engine.j
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(a aVar) {
            return aVar == a.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean a(boolean z, a aVar, c cVar) {
            return ((z && aVar == a.DATA_DISK_CACHE) || aVar == a.LOCAL) && cVar == c.TRANSFORMED;
        }

        @Override // com.bumptech.glide.load.engine.j
        public final boolean b() {
            return true;
        }
    };

    public abstract boolean a();

    public abstract boolean a(a aVar);

    public abstract boolean a(boolean z, a aVar, c cVar);

    public abstract boolean b();
}
