.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lcom/google/android/exoplayer2/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$a;,
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:[Lcom/google/android/exoplayer2/source/r;

.field private final e:[Lcom/google/android/exoplayer2/al;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/r;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/source/f;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/common/collect/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ah<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:[[J

.field private l:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 9150
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/exoplayer2/source/f;[Lcom/google/android/exoplayer2/source/r;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;-><init>()V

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Z

    .line 155
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Z

    .line 156
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    .line 157
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/f;

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 159
    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    .line 160
    array-length p1, p4

    new-array p1, p1, [Lcom/google/android/exoplayer2/al;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    .line 161
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    .line 162
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Ljava/util/Map;

    const/16 p1, 0x8

    const-string p2, "expectedKeys"

    .line 1086
    invoke-static {p1, p2}, Lcom/google/common/collect/i;->a(ILjava/lang/String;)I

    .line 1087
    new-instance p2, Lcom/google/common/collect/ai$1;

    invoke-direct {p2, p1}, Lcom/google/common/collect/ai$1;-><init>(I)V

    .line 1282
    invoke-virtual {p2}, Lcom/google/common/collect/ai$c;->b()Lcom/google/common/collect/ai$b;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/google/common/collect/ai$b;->a()Lcom/google/common/collect/ac;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:Lcom/google/common/collect/ah;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lcom/google/android/exoplayer2/source/r;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/source/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/g;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(ZZLcom/google/android/exoplayer2/source/f;[Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(ZZ[Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 11

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/p;

    .line 201
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 203
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    aget-object v4, v4, v3

    .line 204
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v4

    .line 205
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    .line 206
    invoke-interface {v5, v4, p2, v6, v7}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    new-instance v5, Lcom/google/android/exoplayer2/source/u;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:Lcom/google/android/exoplayer2/source/f;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    aget-object p3, p3, v2

    invoke-direct {v5, p2, p3, v1}, Lcom/google/android/exoplayer2/source/u;-><init>(Lcom/google/android/exoplayer2/source/f;[J[Lcom/google/android/exoplayer2/source/p;)V

    .line 212
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Z

    if-eqz p2, :cond_1

    .line 213
    new-instance p2, Lcom/google/android/exoplayer2/source/c;

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Ljava/util/Map;

    iget-object p4, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 218
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/c;-><init>(Lcom/google/android/exoplayer2/source/p;ZJJ)V

    .line 219
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:Lcom/google/common/collect/ah;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lcom/google/android/exoplayer2/source/c;

    invoke-interface {p3, p1, p4}, Lcom/google/common/collect/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v5, p2

    :cond_1
    return-object v5
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Integer;

    .line 3286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Z

    if-eqz v0, :cond_2

    .line 227
    check-cast p1, Lcom/google/android/exoplayer2/source/c;

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:Lcom/google/common/collect/ah;

    invoke-interface {v0}, Lcom/google/common/collect/ah;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:Lcom/google/common/collect/ah;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/ah;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/p;

    .line 236
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/source/u;

    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 238
    aget-object v1, v1, v0

    .line 2073
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/google/android/exoplayer2/source/u$a;

    if-eqz v2, :cond_3

    .line 2074
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/source/u$a;

    .line 2287
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/u$a;->a:Lcom/google/android/exoplayer2/source/p;

    goto :goto_1

    .line 2075
    :cond_3
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v2, v2, v0

    .line 238
    :goto_1
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    const/4 p1, 0x0

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 11

    .line 45
    check-cast p1, Ljava/lang/Integer;

    .line 4255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_b

    .line 4258
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4259
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    goto :goto_0

    .line 4260
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    if-eq v0, v1, :cond_1

    .line 4261
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    return-void

    .line 4264
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4265
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    array-length v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    aput v0, v4, v2

    const-class v0, J

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    .line 4267
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4268
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 4269
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4270
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Z

    if-eqz p1, :cond_4

    .line 4290
    new-instance p1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    const/4 p2, 0x0

    .line 4291
    :goto_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    if-ge p2, p3, :cond_4

    .line 4292
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    aget-object p3, p3, v2

    .line 4955
    invoke-virtual {p3, p2, p1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p3

    .line 5532
    iget-wide v3, p3, Lcom/google/android/exoplayer2/al$a;->e:J

    neg-long v3, v3

    const/4 p3, 0x1

    .line 4294
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    array-length v5, v0

    if-ge p3, v5, :cond_3

    .line 4295
    aget-object v0, v0, p3

    .line 5955
    invoke-virtual {v0, p2, p1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    .line 6532
    iget-wide v5, v0, Lcom/google/android/exoplayer2/al$a;->e:J

    neg-long v5, v5

    .line 4297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    aget-object v0, v0, p2

    sub-long v5, v3, v5

    aput-wide v5, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4273
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    aget-object p1, p1, v2

    .line 4274
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Z

    if-eqz p2, :cond_a

    .line 7304
    new-instance p2, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    const/4 p3, 0x0

    .line 7305
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    if-ge p3, v0, :cond_9

    const-wide/high16 v0, -0x8000000000000000L

    move-wide v4, v0

    const/4 v3, 0x0

    .line 7307
    :goto_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    array-length v7, v6

    if-ge v3, v7, :cond_7

    .line 7308
    aget-object v6, v6, v3

    .line 7955
    invoke-virtual {v6, p3, p2, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v6

    .line 8514
    iget-wide v6, v6, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-eqz v10, :cond_6

    .line 7312
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:[[J

    aget-object v8, v8, p3

    aget-wide v9, v8, v3

    add-long/2addr v6, v9

    cmp-long v8, v4, v0

    if-eqz v8, :cond_5

    cmp-long v8, v6, v4

    if-gez v8, :cond_6

    :cond_5
    move-wide v4, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 7317
    :cond_7
    aget-object v0, v6, v2

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 7318
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7319
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:Lcom/google/common/collect/ah;

    invoke-interface {v1, v0}, Lcom/google/common/collect/ah;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c;

    const-wide/16 v6, 0x0

    .line 7320
    invoke-virtual {v1, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/source/c;->a(JJ)V

    goto :goto_5

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 4276
    :cond_9
    new-instance p2, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Ljava/util/Map;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;-><init>(Lcom/google/android/exoplayer2/al;Ljava/util/Map;)V

    move-object p1, p2

    .line 4278
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/al;)V

    :cond_b
    return-void
.end method

.method protected final c()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->c()V

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:[Lcom/google/android/exoplayer2/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:I

    .line 247
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:[Lcom/google/android/exoplayer2/source/r;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 195
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->f()V

    return-void

    .line 193
    :cond_0
    throw v0
.end method
