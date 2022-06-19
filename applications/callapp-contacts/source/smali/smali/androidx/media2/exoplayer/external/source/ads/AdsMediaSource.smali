.class public final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;,
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;,
        Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Landroidx/media2/exoplayer/external/source/t$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/media2/exoplayer/external/source/t$a;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/source/t;

.field private final c:Landroidx/media2/exoplayer/external/source/ad;

.field private final d:Landroidx/media2/exoplayer/external/source/ads/b;

.field private final e:Landroidx/media2/exoplayer/external/source/ads/b$a;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/t;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroidx/media2/exoplayer/external/al$a;

.field private i:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

.field private j:Landroidx/media2/exoplayer/external/al;

.field private k:Landroidx/media2/exoplayer/external/source/ads/a;

.field private l:[[Landroidx/media2/exoplayer/external/source/t;

.field private m:[[Landroidx/media2/exoplayer/external/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/source/t$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a:Landroidx/media2/exoplayer/external/source/t$a;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/ad;Landroidx/media2/exoplayer/external/source/ads/b;Landroidx/media2/exoplayer/external/source/ads/b$a;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    .line 182
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->b:Landroidx/media2/exoplayer/external/source/t;

    .line 183
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->c:Landroidx/media2/exoplayer/external/source/ad;

    .line 184
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->d:Landroidx/media2/exoplayer/external/source/ads/b;

    .line 185
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->e:Landroidx/media2/exoplayer/external/source/ads/b$a;

    .line 186
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->f:Landroid/os/Handler;

    .line 187
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    .line 188
    new-instance p1, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->h:Landroidx/media2/exoplayer/external/al$a;

    const/4 p1, 0x0

    new-array p2, p1, [[Landroidx/media2/exoplayer/external/source/t;

    .line 189
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->l:[[Landroidx/media2/exoplayer/external/source/t;

    new-array p1, p1, [[Landroidx/media2/exoplayer/external/al;

    .line 190
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/exoplayer/external/source/ads/b;Landroidx/media2/exoplayer/external/source/ads/b$a;)V
    .locals 1

    .line 161
    new-instance v0, Landroidx/media2/exoplayer/external/source/ai$a;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/source/ai$a;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/ad;Landroidx/media2/exoplayer/external/source/ads/b;Landroidx/media2/exoplayer/external/source/ads/b$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroidx/media2/exoplayer/external/source/ads/b;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->d:Landroidx/media2/exoplayer/external/source/ads/b;

    return-object p0
.end method

.method private g()V
    .locals 18

    move-object/from16 v0, p0

    .line 336
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->j:Landroidx/media2/exoplayer/external/al;

    .line 337
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->k:Landroidx/media2/exoplayer/external/source/ads/a;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 338
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->h:Landroidx/media2/exoplayer/external/al$a;

    .line 2349
    array-length v5, v3

    new-array v5, v5, [[J

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2350
    :goto_0
    array-length v8, v3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v8, :cond_2

    .line 2351
    aget-object v8, v3, v7

    array-length v8, v8

    new-array v8, v8, [J

    aput-object v8, v5, v7

    const/4 v8, 0x0

    .line 2352
    :goto_1
    aget-object v11, v3, v7

    array-length v11, v11

    if-ge v8, v11, :cond_1

    .line 2353
    aget-object v11, v5, v7

    .line 2354
    aget-object v12, v3, v7

    aget-object v12, v12, v8

    if-nez v12, :cond_0

    move-wide v12, v9

    goto :goto_2

    .line 2356
    :cond_0
    aget-object v12, v3, v7

    aget-object v12, v12, v8

    .line 2795
    invoke-virtual {v12, v6, v4, v6}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v12

    .line 3373
    iget-wide v12, v12, Landroidx/media2/exoplayer/external/al$a;->d:J

    .line 2356
    :goto_2
    aput-wide v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3427
    :cond_2
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    array-length v4, v4

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Landroidx/media2/exoplayer/external/source/ads/a$a;

    const/4 v3, 0x0

    .line 3428
    :goto_3
    iget v4, v2, Landroidx/media2/exoplayer/external/source/ads/a;->b:I

    if-ge v3, v4, :cond_6

    .line 3429
    aget-object v4, v13, v3

    aget-object v7, v5, v3

    .line 4200
    iget v8, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    array-length v8, v7

    iget-object v11, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v11, v11

    if-gt v8, v11, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v8, 0x1

    :goto_5
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 4201
    array-length v8, v7

    iget-object v11, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v11, v11

    if-ge v8, v11, :cond_5

    .line 4202
    iget-object v8, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    array-length v8, v8

    .line 4241
    array-length v11, v7

    .line 4242
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4243
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 4244
    invoke-static {v7, v11, v8, v9, v10}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 4204
    :cond_5
    new-instance v8, Landroidx/media2/exoplayer/external/source/ads/a$a;

    iget v11, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    iget-object v12, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    invoke-direct {v8, v11, v12, v4, v7}, Landroidx/media2/exoplayer/external/source/ads/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    .line 3429
    aput-object v8, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3431
    :cond_6
    new-instance v3, Landroidx/media2/exoplayer/external/source/ads/a;

    iget-object v12, v2, Landroidx/media2/exoplayer/external/source/ads/a;->c:[J

    iget-wide v14, v2, Landroidx/media2/exoplayer/external/source/ads/a;->e:J

    iget-wide v4, v2, Landroidx/media2/exoplayer/external/source/ads/a;->f:J

    move-object v11, v3

    move-wide/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Landroidx/media2/exoplayer/external/source/ads/a;-><init>([J[Landroidx/media2/exoplayer/external/source/ads/a$a;JJ)V

    .line 338
    iput-object v3, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->k:Landroidx/media2/exoplayer/external/source/ads/a;

    .line 340
    iget v2, v3, Landroidx/media2/exoplayer/external/source/ads/a;->b:I

    if-nez v2, :cond_7

    goto :goto_6

    .line 342
    :cond_7
    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/f;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->k:Landroidx/media2/exoplayer/external/source/ads/a;

    invoke-direct {v2, v1, v3}, Landroidx/media2/exoplayer/external/source/ads/f;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/ads/a;)V

    move-object v1, v2

    .line 343
    :goto_6
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Landroidx/media2/exoplayer/external/al;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 13

    move-object v0, p0

    move-object v7, p1

    .line 211
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->k:Landroidx/media2/exoplayer/external/source/ads/a;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ads/a;

    .line 212
    iget v2, v1, Landroidx/media2/exoplayer/external/source/ads/a;->b:I

    if-lez v2, :cond_3

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget v8, v7, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    .line 214
    iget v9, v7, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    .line 215
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ads/a;->d:[Landroidx/media2/exoplayer/external/source/ads/a$a;

    aget-object v1, v1, v8

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    aget-object v1, v1, v9

    .line 216
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/net/Uri;

    .line 217
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->l:[[Landroidx/media2/exoplayer/external/source/t;

    aget-object v2, v1, v8

    array-length v2, v2

    if-gt v2, v9, :cond_0

    add-int/lit8 v2, v9, 0x1

    .line 219
    aget-object v3, v1, v8

    .line 220
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media2/exoplayer/external/source/t;

    aput-object v3, v1, v8

    .line 221
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    aget-object v3, v1, v8

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/al;

    aput-object v2, v1, v8

    .line 223
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->l:[[Landroidx/media2/exoplayer/external/source/t;

    aget-object v1, v1, v8

    aget-object v1, v1, v9

    if-nez v1, :cond_1

    .line 225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->c:Landroidx/media2/exoplayer/external/source/ad;

    invoke-interface {v1, v10}, Landroidx/media2/exoplayer/external/source/ad;->b(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/t;

    move-result-object v1

    .line 226
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->l:[[Landroidx/media2/exoplayer/external/source/t;

    aget-object v2, v2, v8

    aput-object v1, v2, v9

    .line 227
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, p1, v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    :cond_1
    move-object v11, v1

    .line 230
    new-instance v12, Landroidx/media2/exoplayer/external/source/q;

    move-object v1, v12

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/q;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)V

    .line 232
    new-instance v1, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;

    invoke-direct {v1, p0, v10, v8, v9}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroid/net/Uri;II)V

    .line 1091
    iput-object v1, v12, Landroidx/media2/exoplayer/external/source/q;->d:Landroidx/media2/exoplayer/external/source/q$a;

    .line 234
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 236
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    aget-object v1, v1, v8

    aget-object v1, v1, v9

    .line 237
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/al;

    const/4 v2, 0x0

    .line 238
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 239
    new-instance v2, Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v3, v7, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    invoke-direct {v2, v1, v3, v4}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;J)V

    .line 240
    invoke-virtual {v12, v2}, Landroidx/media2/exoplayer/external/source/q;->a(Landroidx/media2/exoplayer/external/source/t$a;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v12

    .line 248
    :cond_3
    new-instance v8, Landroidx/media2/exoplayer/external/source/q;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->b:Landroidx/media2/exoplayer/external/source/t;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/q;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)V

    .line 250
    invoke-virtual {v8, p1}, Landroidx/media2/exoplayer/external/source/q;->a(Landroidx/media2/exoplayer/external/source/t$a;)V

    return-object v8
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 1

    .line 62
    check-cast p1, Landroidx/media2/exoplayer/external/source/t$a;

    .line 4296
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 2

    .line 257
    check-cast p1, Landroidx/media2/exoplayer/external/source/q;

    .line 258
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/q;->a:Landroidx/media2/exoplayer/external/source/t;

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/q;->f()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 203
    new-instance p1, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)V

    .line 204
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->i:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

    .line 205
    sget-object v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->b:Landroidx/media2/exoplayer/external/source/t;

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->f:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/source/ads/c;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/ads/c;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 4

    .line 62
    check-cast p1, Landroidx/media2/exoplayer/external/source/t$a;

    .line 5282
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5283
    iget v0, p1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    .line 5284
    iget p1, p1, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    .line 5320
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 5321
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    aget-object v0, v2, v0

    aput-object p3, v0, p1

    .line 5322
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5324
    invoke-virtual {p3, v1}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p2

    .line 5325
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_1

    .line 5326
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media2/exoplayer/external/source/q;

    .line 5327
    new-instance v0, Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v2, p3, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    invoke-direct {v0, p2, v2, v3}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;J)V

    .line 5329
    invoke-virtual {p3, v0}, Landroidx/media2/exoplayer/external/source/q;->a(Landroidx/media2/exoplayer/external/source/t$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5332
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g()V

    return-void

    .line 6313
    :cond_2
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 6314
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->j:Landroidx/media2/exoplayer/external/al;

    .line 6315
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 268
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->c()V

    .line 269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->i:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

    const/4 v1, 0x1

    .line 1379
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;->b:Z

    .line 1380
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->i:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;

    .line 271
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->j:Landroidx/media2/exoplayer/external/al;

    .line 273
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->k:Landroidx/media2/exoplayer/external/source/ads/a;

    const/4 v0, 0x0

    new-array v1, v0, [[Landroidx/media2/exoplayer/external/source/t;

    .line 274
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->l:[[Landroidx/media2/exoplayer/external/source/t;

    new-array v0, v0, [[Landroidx/media2/exoplayer/external/al;

    .line 275
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->m:[[Landroidx/media2/exoplayer/external/al;

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->d:Landroidx/media2/exoplayer/external/source/ads/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/ads/d;->a(Landroidx/media2/exoplayer/external/source/ads/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->b:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/t;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
