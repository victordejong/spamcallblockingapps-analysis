.class final Landroidx/media2/exoplayer/external/source/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/s;
.implements Landroidx/media2/exoplayer/external/source/s$a;


# instance fields
.field public final a:[Landroidx/media2/exoplayer/external/source/s;

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media2/exoplayer/external/source/al;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/media2/exoplayer/external/source/g;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/s;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/media2/exoplayer/external/source/s$a;

.field private f:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private g:[Landroidx/media2/exoplayer/external/source/s;

.field private h:Landroidx/media2/exoplayer/external/source/am;


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/g;[Landroidx/media2/exoplayer/external/source/s;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->c:Landroidx/media2/exoplayer/external/source/g;

    .line 54
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    new-array v0, p2, [Landroidx/media2/exoplayer/external/source/am;

    .line 57
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/source/g;->a([Landroidx/media2/exoplayer/external/source/am;)Landroidx/media2/exoplayer/external/source/am;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    .line 58
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->b:Ljava/util/IdentityHashMap;

    new-array p1, p2, [Landroidx/media2/exoplayer/external/source/s;

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media2/exoplayer/external/aj;)J
    .locals 3

    .line 223
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    aget-object v0, v0, v2

    .line 224
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JLandroidx/media2/exoplayer/external/aj;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 91
    array-length v3, v1

    new-array v3, v3, [I

    .line 92
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 93
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 94
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    .line 95
    :cond_0
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/ae;->b:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 96
    aput v8, v4, v6

    .line 97
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 98
    aget-object v7, v1, v6

    invoke-interface {v7}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 99
    :goto_2
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 100
    aget-object v10, v10, v9

    invoke-interface {v10}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 101
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/ae;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 109
    array-length v6, v1

    new-array v7, v6, [Landroidx/media2/exoplayer/external/source/al;

    .line 110
    array-length v8, v1

    new-array v8, v8, [Landroidx/media2/exoplayer/external/source/al;

    .line 111
    array-length v9, v1

    new-array v14, v9, [Landroidx/media2/exoplayer/external/trackselection/e;

    .line 112
    new-instance v15, Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v9, v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v13, 0x0

    .line 113
    :goto_4
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v9, v9

    if-ge v13, v9, :cond_e

    const/4 v9, 0x0

    .line 114
    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 115
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 116
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 118
    :cond_6
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    aget-object v9, v9, v13

    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v8

    move v5, v13

    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/source/s;->a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_7

    move-wide/from16 v16, v9

    goto :goto_7

    :cond_7
    cmp-long v11, v9, v16

    if-nez v11, :cond_d

    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 126
    :goto_8
    array-length v11, v1

    if-ge v9, v11, :cond_b

    .line 127
    aget v11, v4, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_8

    .line 129
    aget-object v10, v8, v9

    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/exoplayer/external/source/al;

    .line 130
    aget-object v11, v8, v9

    aput-object v11, v7, v9

    .line 132
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/ae;->b:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v10, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_a

    .line 133
    :cond_8
    aget v11, v3, v9

    if-ne v11, v5, :cond_a

    .line 135
    aget-object v11, v8, v9

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    .line 139
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    aget-object v9, v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v13, v5, 0x1

    move-object v15, v2

    move-object/from16 v14, v18

    move-object/from16 v2, p3

    goto :goto_4

    .line 123
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object v1, v2

    move-object v2, v15

    const/4 v3, 0x0

    .line 143
    invoke-static {v7, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media2/exoplayer/external/source/s;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    .line 146
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ae;->c:Landroidx/media2/exoplayer/external/source/g;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    .line 148
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/g;->a([Landroidx/media2/exoplayer/external/source/am;)Landroidx/media2/exoplayer/external/source/am;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    return-wide v16
.end method

.method public final a(J)V
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/am;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 4

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 155
    invoke-interface {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/source/am;)V
    .locals 0

    .line 1254
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->e:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s$a;J)V
    .locals 3

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->e:Landroidx/media2/exoplayer/external/source/s$a;

    .line 65
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 67
    invoke-interface {v2, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(Landroidx/media2/exoplayer/external/source/s$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 10

    .line 231
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 237
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_1
    new-array p1, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 242
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    .line 243
    iget v6, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 245
    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    aput-object v9, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->f:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 249
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ae;->e:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void
.end method

.method public final b(J)J
    .locals 4

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 213
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 214
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->f:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public final c()J
    .locals 9

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 187
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 188
    aget-object v4, v4, v0

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->g:[Landroidx/media2/exoplayer/external/source/s;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 195
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 196
    invoke-interface {v6, v2, v3}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_2

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected child seekToUs result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method public final c(J)Z
    .locals 4

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 170
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->c(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 174
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/am;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/am;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->h:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/am;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/s;->k_()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
