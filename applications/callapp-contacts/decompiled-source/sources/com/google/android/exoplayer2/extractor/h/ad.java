package com.google.android.exoplayer2.extractor.h;

import android.util.SparseArray;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.util.u;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad.class */
public interface ad {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f21159a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21160b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f21161c;

        public a(String str, int i, byte[] bArr) {
            this.f21159a = str;
            this.f21160b = i;
            this.f21161c = bArr;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f21162a;

        /* renamed from: b  reason: collision with root package name */
        public final String f21163b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f21164c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f21165d;

        public b(int i, String str, List<a> list, byte[] bArr) {
            this.f21162a = i;
            this.f21163b = str;
            this.f21164c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f21165d = bArr;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$c.class */
    public interface c {
        SparseArray<ad> a();

        ad a(int i, b bVar);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ad$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f21166a;

        /* renamed from: b  reason: collision with root package name */
        private final int f21167b;

        /* renamed from: c  reason: collision with root package name */
        private final int f21168c;

        /* renamed from: d  reason: collision with root package name */
        private int f21169d;
        private String e;

        public d(int i, int i2) {
            this(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, i2);
        }

        public d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.f21166a = str;
            this.f21167b = i2;
            this.f21168c = i3;
            this.f21169d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            this.e = "";
        }

        private void d() {
            if (this.f21169d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public final void a() {
            int i = this.f21169d;
            this.f21169d = i == Integer.MIN_VALUE ? this.f21167b : i + this.f21168c;
            this.e = this.f21166a + this.f21169d;
        }

        public final int b() {
            d();
            return this.f21169d;
        }

        public final String c() {
            d();
            return this.e;
        }
    }

    void a();

    void a(com.google.android.exoplayer2.util.ad adVar, j jVar, d dVar);

    void a(u uVar, int i) throws ParserException;
}
