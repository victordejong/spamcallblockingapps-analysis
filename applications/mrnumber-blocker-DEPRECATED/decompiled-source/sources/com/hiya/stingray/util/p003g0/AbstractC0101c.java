package com.hiya.stingray.util.p003g0;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.g0.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c.class */
public abstract class AbstractC0101c implements Parcelable {

    /* renamed from: com.hiya.stingray.util.g0.c$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c$a.class */
    public static final class C0102a {

        /* renamed from: a */
        private Bundle f200a = new Bundle();

        /* renamed from: b */
        public static C0102a m985b() {
            return new C0102a();
        }

        /* renamed from: a */
        public AbstractC0101c m986a() {
            return AbstractC0101c.m988b(this.f200a);
        }

        /* renamed from: c */
        public C0102a m984c(String str) {
            this.f200a.putString("action", str);
            return this;
        }

        /* renamed from: d */
        public C0102a m983d(String str) {
            this.f200a.putString("category", str);
            return this;
        }

        /* renamed from: e */
        public C0102a m982e(String str) {
            this.f200a.putString("content_type", str);
            return this;
        }

        /* renamed from: f */
        public C0102a m981f(String str) {
            this.f200a.putString("identity", str);
            return this;
        }

        /* renamed from: g */
        public C0102a m980g(String str) {
            this.f200a.putString("label", str);
            return this;
        }

        /* renamed from: h */
        public C0102a m979h(String str) {
            this.f200a.putString("name", str);
            return this;
        }

        /* renamed from: i */
        public C0102a m978i(Boolean bool) {
            this.f200a.putBoolean("overlay_shown", bool.booleanValue());
            return this;
        }

        /* renamed from: j */
        public C0102a m977j(String str) {
            this.f200a.putString("reputation", str);
            return this;
        }

        /* renamed from: k */
        public C0102a m976k(String str) {
            this.f200a.putString("screen", str);
            return this;
        }

        /* renamed from: l */
        public C0102a m975l(String str) {
            this.f200a.putString("source", str);
            return this;
        }

        /* renamed from: m */
        public C0102a m974m(String str) {
            this.f200a.putString("type", str);
            return this;
        }

        /* renamed from: n */
        public C0102a m973n(String str) {
            this.f200a.putString("value", str);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static AbstractC0101c m988b(Bundle bundle) {
        return new b(bundle);
    }

    /* renamed from: c */
    public abstract Bundle m987c();
}
