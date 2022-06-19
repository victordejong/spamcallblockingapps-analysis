.class final Lcom/google/android/exoplayer2/source/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/source/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/u$b;,
        Lcom/google/android/exoplayer2/source/u$a;
    }
.end annotation


# instance fields
.field final a:[Lcom/google/android/exoplayer2/source/p;

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/aa;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/source/f;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/p;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/exoplayer2/source/p$a;

.field private f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private g:[Lcom/google/android/exoplayer2/source/p;

.field private h:Lcom/google/android/exoplayer2/source/ab;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/f;[J[Lcom/google/android/exoplayer2/source/p;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u;->c:Lcom/google/android/exoplayer2/source/f;

    .line 54
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/ab;

    .line 57
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/f;->a([Lcom/google/android/exoplayer2/source/ab;)Lcom/google/android/exoplayer2/source/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    .line 58
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u;->b:Ljava/util/IdentityHashMap;

    new-array p1, v0, [Lcom/google/android/exoplayer2/source/p;

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    .line 60
    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_1

    .line 61
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    new-instance v1, Lcom/google/android/exoplayer2/source/u$a;

    aget-object v2, p3, v0

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/u$a;-><init>(Lcom/google/android/exoplayer2/source/p;J)V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 90
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/p;->D_()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JLcom/google/android/exoplayer2/ai;)J
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v0, v0, v2

    .line 254
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JLcom/google/android/exoplayer2/ai;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 107
    array-length v3, v1

    new-array v3, v3, [I

    .line 108
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 109
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 110
    aget-object v7, v2, v6

    if-nez v7, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/u;->b:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v8, :cond_1

    const/4 v8, -0x1

    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v3, v6

    .line 112
    aput v7, v4, v6

    .line 113
    aget-object v8, v1, v6

    if-eqz v8, :cond_3

    .line 114
    aget-object v8, v1, v6

    invoke-interface {v8}, Lcom/google/android/exoplayer2/trackselection/c;->d()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    const/4 v9, 0x0

    .line 115
    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 116
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v7, :cond_2

    .line 117
    aput v9, v4, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/u;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 125
    array-length v6, v1

    new-array v7, v6, [Lcom/google/android/exoplayer2/source/aa;

    .line 126
    array-length v9, v1

    new-array v9, v9, [Lcom/google/android/exoplayer2/source/aa;

    .line 127
    array-length v10, v1

    new-array v15, v10, [Lcom/google/android/exoplayer2/trackselection/c;

    .line 128
    new-instance v14, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v10, v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v17, p5

    const/4 v13, 0x0

    .line 129
    :goto_5
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v10, v10

    if-ge v13, v10, :cond_f

    const/4 v10, 0x0

    .line 130
    :goto_6
    array-length v11, v1

    if-ge v10, v11, :cond_7

    .line 131
    aget v11, v3, v10

    if-ne v11, v13, :cond_5

    aget-object v11, v2, v10

    goto :goto_7

    :cond_5
    const/4 v11, 0x0

    :goto_7
    aput-object v11, v9, v10

    .line 132
    aget v11, v4, v10

    if-ne v11, v13, :cond_6

    aget-object v11, v1, v10

    goto :goto_8

    :cond_6
    const/4 v11, 0x0

    :goto_8
    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 134
    :cond_7
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v10, v10, v13

    move-object v11, v15

    move-object/from16 v12, p2

    move v8, v13

    move-object v13, v9

    move-object v5, v14

    move-object/from16 v14, p4

    move-object/from16 v19, v15

    move-wide/from16 v15, v17

    .line 135
    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/p;->a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J

    move-result-wide v10

    if-nez v8, :cond_8

    move-wide/from16 v17, v10

    goto :goto_9

    :cond_8
    cmp-long v12, v10, v17

    if-nez v12, :cond_e

    :goto_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 143
    :goto_a
    array-length v12, v1

    if-ge v10, v12, :cond_c

    .line 144
    aget v12, v4, v10

    const/4 v13, 0x1

    if-ne v12, v8, :cond_9

    .line 146
    aget-object v11, v9, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/aa;

    .line 147
    aget-object v12, v9, v10

    aput-object v12, v7, v10

    .line 149
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/u;->b:Ljava/util/IdentityHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_c

    .line 150
    :cond_9
    aget v12, v3, v10

    if-ne v12, v8, :cond_b

    .line 152
    aget-object v12, v9, v10

    if-nez v12, :cond_a

    goto :goto_b

    :cond_a
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    :cond_b
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 156
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    aget-object v10, v10, v8

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v13, v8, 0x1

    move-object v14, v5

    move-object/from16 v15, v19

    goto :goto_5

    .line 140
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v5, v14

    const/4 v1, 0x0

    .line 160
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/p;

    .line 162
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/p;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    .line 163
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/u;->c:Lcom/google/android/exoplayer2/source/f;

    .line 164
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/f;->a([Lcom/google/android/exoplayer2/source/ab;)Lcom/google/android/exoplayer2/source/ab;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    return-wide v17
.end method

.method public final a(J)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ab;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 171
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/source/ab;)V
    .locals 0

    .line 1284
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->e:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p$a;J)V
    .locals 3

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u;->e:Lcom/google/android/exoplayer2/source/p$a;

    .line 81
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 83
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(Lcom/google/android/exoplayer2/source/p$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 10

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 267
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_1
    new-array p1, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->a:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 272
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    .line 273
    iget v6, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 275
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    aput-object v9, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/u;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 279
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/u;->e:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/p;)V

    return-void
.end method

.method public final b(J)J
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 244
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final c()J
    .locals 17

    move-object/from16 v0, p0

    .line 207
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_7

    aget-object v9, v1, v6

    .line 208
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/p;->c()J

    move-result-wide v10

    const-string v12, "Unexpected child seekToUs result."

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4

    cmp-long v13, v7, v4

    if-nez v13, :cond_2

    .line 213
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/u;->g:[Lcom/google/android/exoplayer2/source/p;

    array-length v8, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_1

    aget-object v14, v7, v13

    if-eq v14, v9, :cond_1

    .line 217
    invoke-interface {v14, v10, v11}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-wide v7, v10

    goto :goto_2

    :cond_2
    cmp-long v9, v10, v7

    if-nez v9, :cond_3

    goto :goto_2

    .line 222
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Conflicting discontinuities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    cmp-long v10, v7, v4

    if-eqz v10, :cond_6

    .line 226
    invoke-interface {v9, v7, v8}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_5

    goto :goto_2

    .line 227
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-wide v7
.end method

.method public final c(J)Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/p;->c(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ab;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ab;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ab;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u;->h:Lcom/google/android/exoplayer2/source/ab;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ab;->f()Z

    move-result v0

    return v0
.end method
