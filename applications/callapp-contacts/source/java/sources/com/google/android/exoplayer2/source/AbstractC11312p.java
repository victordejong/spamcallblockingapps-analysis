package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.source.AbstractC11270ab;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/p.class */
public interface AbstractC11312p extends AbstractC11270ab {

    /* renamed from: com.google.android.exoplayer2.source.p$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/p$a.class */
    public interface AbstractC11313a extends AbstractC11270ab.AbstractC11271a<AbstractC11312p> {
        /* renamed from: a */
        void mo20915a(AbstractC11312p abstractC11312p);
    }

    /* renamed from: D_ */
    void mo20908D_() throws IOException;

    /* renamed from: a */
    long mo20903a(long j, C10855ai c10855ai);

    /* renamed from: a */
    long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j);

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    void mo20904a(long j);

    /* renamed from: a */
    void mo20902a(long j, boolean z);

    /* renamed from: a */
    void mo20900a(AbstractC11313a abstractC11313a, long j);

    /* renamed from: b */
    long mo20891b(long j);

    /* renamed from: b */
    TrackGroupArray mo20893b();

    /* renamed from: c */
    long mo20888c();

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    boolean mo20887c(long j);

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    long mo20885d();

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    long mo20883e();

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    boolean mo20881f();
}
