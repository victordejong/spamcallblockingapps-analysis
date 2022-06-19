.class final Lcom/google/android/gms/internal/ads/dqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqd;
.implements Lcom/google/android/gms/internal/ads/dqe;


# instance fields
.field public final a:[Lcom/google/android/gms/internal/ads/dqe;

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/gms/internal/ads/dqo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/dqd;

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/dqv;

.field private f:[Lcom/google/android/gms/internal/ads/dqe;

.field private g:Lcom/google/android/gms/internal/ads/dqr;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dqe;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->b:Ljava/util/IdentityHashMap;

    .line 4
    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/gms/internal/ads/dre;[Z[Lcom/google/android/gms/internal/ads/dqo;[ZJ)J
    .locals 17

    .prologue
    .line 16
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [I

    .line 17
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v13, v2, [I

    .line 18
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 19
    aget-object v2, p3, v3

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 20
    :goto_1
    aput v2, v12, v3

    .line 21
    const/4 v2, -0x1

    aput v2, v13, v3

    .line 22
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 23
    aget-object v2, p1, v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dre;->a()Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v4

    .line 24
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dqe;->d()Lcom/google/android/gms/internal/ads/dqv;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/dqv;->a(Lcom/google/android/gms/internal/ads/dqs;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 26
    aput v2, v13, v3

    .line 29
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 20
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->b:Ljava/util/IdentityHashMap;

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 28
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 30
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    .line 31
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v14, v2, [Lcom/google/android/gms/internal/ads/dqo;

    .line 32
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v6, v2, [Lcom/google/android/gms/internal/ads/dqo;

    .line 33
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/gms/internal/ads/dre;

    .line 34
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v2, v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    const/4 v2, 0x0

    move-wide/from16 v8, p5

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 36
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v3, v5, :cond_6

    .line 37
    aget v5, v12, v3

    if-ne v5, v2, :cond_4

    aget-object v5, p3, v3

    :goto_5
    aput-object v5, v6, v3

    .line 38
    aget v5, v13, v3

    if-ne v5, v2, :cond_5

    aget-object v5, p1, v3

    :goto_6
    aput-object v5, v4, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 37
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 38
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 40
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v3, v3, v2

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/dqe;->a([Lcom/google/android/gms/internal/ads/dre;[Z[Lcom/google/android/gms/internal/ads/dqo;[ZJ)J

    move-result-wide v10

    .line 41
    if-nez v2, :cond_9

    move-wide v8, v10

    .line 45
    :cond_7
    const/4 v5, 0x0

    .line 46
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v3, v7, :cond_d

    .line 47
    aget v7, v13, v3

    if-ne v7, v2, :cond_b

    .line 48
    aget-object v5, v6, v3

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 49
    aget-object v5, v6, v3

    aput-object v5, v14, v3

    .line 50
    const/4 v5, 0x1

    .line 51
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dqi;->b:Ljava/util/IdentityHashMap;

    aget-object v10, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_8
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 43
    :cond_9
    cmp-long v3, v10, v8

    if-eqz v3, :cond_7

    .line 44
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Children enabled at different positions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_a
    const/4 v5, 0x0

    goto :goto_8

    .line 52
    :cond_b
    aget v7, v12, v3

    if-ne v7, v2, :cond_8

    .line 53
    aget-object v7, v6, v3

    if-nez v7, :cond_c

    const/4 v7, 0x1

    :goto_a
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_a

    .line 55
    :cond_d
    if-eqz v5, :cond_e

    .line 56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v3, v3, v2

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 58
    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v14

    move-object/from16 v0, p3

    invoke-static {v14, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dqe;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    new-instance v2, Lcom/google/android/gms/internal/ads/dpq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dpq;-><init>([Lcom/google/android/gms/internal/ads/dqr;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dqi;->g:Lcom/google/android/gms/internal/ads/dqr;

    .line 62
    return-wide v8
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqd;J)V
    .locals 4

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqi;->c:Lcom/google/android/gms/internal/ads/dqd;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqi;->d:I

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 8
    invoke-interface {v3, p0, p2, p3}, Lcom/google/android/gms/internal/ads/dqe;->a(Lcom/google/android/gms/internal/ads/dqd;J)V

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqe;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqi;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqi;->d:I

    if-lez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 98
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dqe;->d()Lcom/google/android/gms/internal/ads/dqv;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/internal/ads/dqv;->b:I

    add-int/2addr v2, v5

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_1
    new-array v5, v2, [Lcom/google/android/gms/internal/ads/dqs;

    .line 102
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v7, v6

    move v4, v1

    move v2, v1

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v0, v6, v4

    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->d()Lcom/google/android/gms/internal/ads/dqv;

    move-result-object v8

    .line 104
    iget v9, v8, Lcom/google/android/gms/internal/ads/dqv;->b:I

    move v0, v1

    .line 105
    :goto_3
    if-ge v0, v9, :cond_2

    .line 106
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v10

    aput-object v10, v5, v2

    .line 107
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    .line 108
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 109
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/dqv;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/dqv;-><init>([Lcom/google/android/gms/internal/ads/dqs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->e:Lcom/google/android/gms/internal/ads/dqv;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->c:Lcom/google/android/gms/internal/ads/dqd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqe;)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dqr;)V
    .locals 1

    .prologue
    .line 112
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->e:Lcom/google/android/gms/internal/ads/dqv;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->c:Lcom/google/android/gms/internal/ads/dqd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dqd;->a(Lcom/google/android/gms/internal/ads/dqr;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final a(J)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->g:Lcom/google/android/gms/internal/ads/dqr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dqr;->a(J)Z

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 64
    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/dqe;->b(J)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public final c(J)J
    .locals 7

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dqe;->c(J)J

    move-result-wide v2

    .line 89
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dqe;->c(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-wide v2
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dqe;->c()V

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dqv;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->e:Lcom/google/android/gms/internal/ads/dqv;

    return-object v0
.end method

.method public final e()J
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->e()J

    move-result-wide v2

    .line 70
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 71
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqe;->e()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Child reported discontinuity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    .line 75
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 76
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dqi;->a:[Lcom/google/android/gms/internal/ads/dqe;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_2

    .line 77
    invoke-interface {v6, v2, v3}, Lcom/google/android/gms/internal/ads/dqe;->c(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_3
    return-wide v2
.end method

.method public final f()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 81
    .line 82
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dqi;->f:[Lcom/google/android/gms/internal/ads/dqe;

    array-length v8, v5

    const/4 v4, 0x0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 83
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dqe;->f()J

    move-result-wide v10

    .line 84
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 85
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 86
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public final n_()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqi;->g:Lcom/google/android/gms/internal/ads/dqr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqr;->n_()J

    move-result-wide v0

    return-wide v0
.end method
