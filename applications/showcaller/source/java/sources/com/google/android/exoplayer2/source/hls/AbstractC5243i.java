package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5509e0;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.hls.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/i.class */
public interface AbstractC5243i {

    /* renamed from: a */
    public static final AbstractC5243i f16487a = new C5236f();

    /* renamed from: com.google.android.exoplayer2.source.hls.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/i$a.class */
    public static final class C5244a {

        /* renamed from: a */
        public final AbstractC4978h f16488a;

        /* renamed from: b */
        public final boolean f16489b;

        /* renamed from: c */
        public final boolean f16490c;

        public C5244a(AbstractC4978h abstractC4978h, boolean z, boolean z2) {
            this.f16488a = abstractC4978h;
            this.f16489b = z;
            this.f16490c = z2;
        }
    }

    /* renamed from: a */
    C5244a mo20057a(AbstractC4978h abstractC4978h, Uri uri, Format format, List<Format> list, C5509e0 c5509e0, Map<String, List<String>> map, AbstractC4979i abstractC4979i);
}
