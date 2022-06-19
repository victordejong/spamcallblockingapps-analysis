.class final Lcom/google/android/exoplayer2/n;
.super Lcom/google/android/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field final b:Lcom/google/android/exoplayer2/trackselection/i;

.field final c:Lcom/google/android/exoplayer2/trackselection/h;

.field final d:Landroid/os/Looper;

.field e:I

.field f:Z

.field g:Lcom/google/android/exoplayer2/z;

.field private final h:[Lcom/google/android/exoplayer2/af;

.field private final i:Lcom/google/android/exoplayer2/util/k;

.field private final j:Lcom/google/android/exoplayer2/o$e;

.field private final k:Lcom/google/android/exoplayer2/o;

.field private final l:Lcom/google/android/exoplayer2/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/m<",
            "Lcom/google/android/exoplayer2/ac$a;",
            "Lcom/google/android/exoplayer2/ac$b;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/android/exoplayer2/al$a;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private final p:Lcom/google/android/exoplayer2/source/t;

.field private final q:Lcom/google/android/exoplayer2/a/a;

.field private final r:Lcom/google/android/exoplayer2/upstream/c;

.field private final s:Lcom/google/android/exoplayer2/util/c;

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lcom/google/android/exoplayer2/ai;

.field private y:Lcom/google/android/exoplayer2/source/ac;

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/af;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/t;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;Lcom/google/android/exoplayer2/a/a;ZLcom/google/android/exoplayer2/ai;Lcom/google/android/exoplayer2/r;JZLcom/google/android/exoplayer2/util/c;Landroid/os/Looper;Lcom/google/android/exoplayer2/ac;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p13

    move-object/from16 v14, p14

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/d;-><init>()V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Init "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [ExoPlayerLib/2.13.3] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/android/exoplayer2/util/af;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    .line 150
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/af;

    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->h:[Lcom/google/android/exoplayer2/af;

    .line 152
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/h;

    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/trackselection/h;

    move-object/from16 v1, p3

    .line 153
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->p:Lcom/google/android/exoplayer2/source/t;

    .line 154
    iput-object v6, v0, Lcom/google/android/exoplayer2/n;->r:Lcom/google/android/exoplayer2/upstream/c;

    .line 155
    iput-object v9, v0, Lcom/google/android/exoplayer2/n;->q:Lcom/google/android/exoplayer2/a/a;

    move/from16 v1, p7

    .line 156
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/n;->o:Z

    move-object/from16 v10, p8

    .line 157
    iput-object v10, v0, Lcom/google/android/exoplayer2/n;->x:Lcom/google/android/exoplayer2/ai;

    move/from16 v12, p12

    .line 158
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/n;->z:Z

    .line 159
    iput-object v14, v0, Lcom/google/android/exoplayer2/n;->d:Landroid/os/Looper;

    .line 160
    iput-object v15, v0, Lcom/google/android/exoplayer2/n;->s:Lcom/google/android/exoplayer2/util/c;

    .line 161
    iput v3, v0, Lcom/google/android/exoplayer2/n;->e:I

    if-eqz p15, :cond_1

    move-object/from16 v1, p15

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 163
    :goto_1
    new-instance v4, Lcom/google/android/exoplayer2/util/m;

    sget-object v5, Lcom/google/android/exoplayer2/-$$Lambda$-iO1wn2nBlVJ7gDW--ChsAzobvo;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$-iO1wn2nBlVJ7gDW--ChsAzobvo;

    new-instance v7, Lcom/google/android/exoplayer2/-$$Lambda$n$Exp3py02o9am369lqlKYEOEMlPI;

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/-$$Lambda$n$Exp3py02o9am369lqlKYEOEMlPI;-><init>(Lcom/google/android/exoplayer2/ac;)V

    invoke-direct {v4, v14, v15, v5, v7}, Lcom/google/android/exoplayer2/util/m;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    .line 170
    new-instance v4, Lcom/google/android/exoplayer2/source/ac$a;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/ac$a;-><init>(I)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    .line 171
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/i;

    array-length v3, v2

    new-array v3, v3, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v5, v2

    new-array v5, v5, [Lcom/google/android/exoplayer2/trackselection/c;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v5, v7}, Lcom/google/android/exoplayer2/trackselection/i;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/c;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/n;->b:Lcom/google/android/exoplayer2/trackselection/i;

    .line 176
    new-instance v3, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    const/4 v3, -0x1

    .line 177
    iput v3, v0, Lcom/google/android/exoplayer2/n;->A:I

    .line 178
    invoke-interface {v15, v14, v7}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/k;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/util/k;

    .line 179
    new-instance v13, Lcom/google/android/exoplayer2/-$$Lambda$n$9EqdHfiuhCqIaWI6nUl0M4y8mEU;

    invoke-direct {v13, v0}, Lcom/google/android/exoplayer2/-$$Lambda$n$9EqdHfiuhCqIaWI6nUl0M4y8mEU;-><init>(Lcom/google/android/exoplayer2/n;)V

    iput-object v13, v0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/o$e;

    .line 182
    invoke-static {v4}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/trackselection/i;)Lcom/google/android/exoplayer2/z;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    if-eqz v9, :cond_2

    .line 184
    invoke-virtual {v9, v1, v14}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/ac;Landroid/os/Looper;)V

    .line 185
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 186
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/google/android/exoplayer2/upstream/c;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;)V

    .line 188
    :cond_2
    new-instance v11, Lcom/google/android/exoplayer2/o;

    move-object v1, v11

    iget v7, v0, Lcom/google/android/exoplayer2/n;->e:I

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/n;->f:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object v0, v11

    move-object/from16 v11, p9

    move-object/from16 v17, v13

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p13

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/o;-><init>([Lcom/google/android/exoplayer2/af;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/trackselection/i;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;IZLcom/google/android/exoplayer2/a/a;Lcom/google/android/exoplayer2/ai;Lcom/google/android/exoplayer2/r;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/android/exoplayer2/o$e;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    return-void
.end method

.method private L()I
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget v0, p0, Lcom/google/android/exoplayer2/n;->A:I

    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    return v0
.end method

.method private M()Lcom/google/android/exoplayer2/al;
    .locals 3

    .line 1256
    new-instance v0, Lcom/google/android/exoplayer2/ae;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ae;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ac;)V

    return-object v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/r$a;J)J
    .locals 2

    .line 1419
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p2

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 1421
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 13523
    iget-wide v0, p1, Lcom/google/android/exoplayer2/al$a;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1402
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1404
    iput p2, p0, Lcom/google/android/exoplayer2/n;->A:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    .line 1405
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/n;->C:J

    const/4 p1, 0x0

    .line 1406
    iput p1, p0, Lcom/google/android/exoplayer2/n;->B:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1409
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 1412
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/n;->f:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p2

    .line 1413
    iget-object p3, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    .line 12809
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p3

    .line 13291
    iget-wide p3, p3, Lcom/google/android/exoplayer2/al$b;->p:J

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 1415
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            "Lcom/google/android/exoplayer2/al;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->F()J

    move-result-wide v0

    .line 1363
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1370
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v9

    .line 1372
    iget-object v7, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    iget-object v8, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1374
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v10

    move-object v6, p1

    .line 1373
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1375
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1376
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    .line 1382
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    iget-object v7, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget v8, p0, Lcom/google/android/exoplayer2/n;->e:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/n;->f:Z

    move-object v11, p1

    move-object v12, p2

    .line 1383
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IZLjava/lang/Object;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 1388
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget p1, p1, Lcom/google/android/exoplayer2/al$a;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v2, 0x0

    .line 11809
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 12291
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$b;->p:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    .line 1388
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1394
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1364
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 1367
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;->L()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    .line 1365
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/z;ZIZ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z;",
            "Lcom/google/android/exoplayer2/z;",
            "ZIZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-object v0, p2, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1112
    iget-object v1, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1113
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    const/4 v3, -0x1

    .line 1114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 1113
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1115
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    .line 1116
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1119
    :cond_1
    iget-object p2, p2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1120
    invoke-virtual {v0, p2, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1121
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v6, 0x0

    .line 7809
    invoke-virtual {v0, p2, v2, v6, v7}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p2

    .line 1121
    iget-object p2, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 1122
    iget-object v0, p1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1123
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1124
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    .line 8809
    invoke-virtual {v1, v0, v2, v6, v7}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 1124
    iget-object v0, v0, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 1125
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    iget v2, v2, Lcom/google/android/exoplayer2/al$b;->n:I

    .line 1126
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p1, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, p1, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    .line 1140
    :goto_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1138
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    .line 1141
    iget-object p1, p1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 1143
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 1145
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1147
    :cond_6
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al;Landroid/util/Pair;)Lcom/google/android/exoplayer2/z;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z;",
            "Lcom/google/android/exoplayer2/al;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/z;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1261
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    move-object/from16 v3, p1

    .line 1262
    iget-object v6, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1264
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/z;

    move-result-object v7

    .line 1266
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1268
    invoke-static {}, Lcom/google/android/exoplayer2/z;->a()Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v1

    .line 1269
    iget-wide v2, v0, Lcom/google/android/exoplayer2/n;->C:J

    .line 1272
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v9

    iget-wide v2, v0, Lcom/google/android/exoplayer2/n;->C:J

    .line 1273
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    sget-object v15, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/n;->b:Lcom/google/android/exoplayer2/trackselection/i;

    .line 1277
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v17

    move-object v8, v1

    move-object/from16 v16, v2

    .line 1270
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;

    move-result-object v2

    .line 1278
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    .line 1279
    iget-wide v2, v1, Lcom/google/android/exoplayer2/z;->r:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/z;->p:J

    return-object v1

    .line 1283
    :cond_2
    iget-object v3, v7, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 1284
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    .line 1286
    new-instance v9, Lcom/google/android/exoplayer2/source/r$a;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/source/r$a;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    :goto_2
    move-object v15, v9

    .line 1287
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/n;->F()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v9

    .line 1289
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1290
    iget-object v2, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1291
    invoke-virtual {v6, v3, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v2

    .line 10532
    iget-wide v2, v2, Lcom/google/android/exoplayer2/al$a;->e:J

    sub-long/2addr v9, v2

    :cond_4
    if-nez v8, :cond_a

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 1310
    iget-object v2, v7, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 1311
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1312
    iget-object v3, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 10955
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v2

    .line 1313
    iget v2, v2, Lcom/google/android/exoplayer2/al$a;->c:I

    iget-object v3, v15, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1314
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/al$a;->c:I

    if-eq v2, v3, :cond_e

    .line 1317
    :cond_6
    iget-object v2, v15, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 1319
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1320
    iget-object v1, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget v2, v15, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v3, v15, Lcom/google/android/exoplayer2/source/r$a;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/al$a;->b(II)J

    move-result-wide v1

    goto :goto_3

    .line 1321
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    .line 1322
    :goto_3
    iget-wide v9, v7, Lcom/google/android/exoplayer2/z;->r:J

    iget-wide v11, v7, Lcom/google/android/exoplayer2/z;->r:J

    iget-wide v3, v7, Lcom/google/android/exoplayer2/z;->r:J

    sub-long v13, v1, v3

    iget-object v3, v7, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, v7, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v5, v7, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    move-object v8, v15

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1323
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;

    move-result-object v3

    .line 1331
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object v7

    .line 1332
    iput-wide v1, v7, Lcom/google/android/exoplayer2/z;->p:J

    goto/16 :goto_8

    :cond_8
    move-object v6, v15

    .line 1335
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const-wide/16 v1, 0x0

    .line 1337
    iget-wide v3, v7, Lcom/google/android/exoplayer2/z;->q:J

    sub-long v8, v13, v9

    sub-long/2addr v3, v8

    .line 1338
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1341
    iget-wide v3, v7, Lcom/google/android/exoplayer2/z;->p:J

    .line 1342
    iget-object v5, v7, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v8, v7, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    add-long v3, v13, v1

    .line 1345
    :cond_9
    iget-object v15, v7, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v5, v7, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v11, v7, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    move-object v8, v6

    move-wide v9, v13

    move-object v6, v11

    move-wide v11, v13

    move-wide v13, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 1346
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;

    move-result-object v7

    .line 1354
    iput-wide v3, v7, Lcom/google/android/exoplayer2/z;->p:J

    goto :goto_8

    :cond_a
    :goto_4
    move-object v6, v15

    .line 1295
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const-wide/16 v1, 0x0

    if-eqz v8, :cond_b

    .line 1303
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_5

    :cond_b
    iget-object v3, v7, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_5
    move-object v15, v3

    if-eqz v8, :cond_c

    .line 1304
    iget-object v3, v0, Lcom/google/android/exoplayer2/n;->b:Lcom/google/android/exoplayer2/trackselection/i;

    goto :goto_6

    :cond_c
    iget-object v3, v7, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    :goto_6
    move-object/from16 v16, v3

    if-eqz v8, :cond_d

    .line 1305
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v3

    goto :goto_7

    :cond_d
    iget-object v3, v7, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    :goto_7
    move-object/from16 v17, v3

    move-object v8, v6

    move-wide v9, v13

    move-wide v11, v13

    move-wide v3, v13

    move-wide v13, v1

    .line 1298
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    .line 1306
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object v7

    .line 1307
    iput-wide v3, v7, Lcom/google/android/exoplayer2/z;->p:J

    :cond_e
    :goto_8
    return-object v7
.end method

.method private a(II)V
    .locals 1

    add-int/lit8 p1, p2, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1252
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/ac;->b(II)Lcom/google/android/exoplayer2/source/ac;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    return-void
.end method

.method private static synthetic a(ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1007
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->f(I)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1021
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    .line 168
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/o$d;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/util/k;

    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$n$FlI0-niP_JuQ1bnI1N_xiM8C6fo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$FlI0-niP_JuQ1bnI1N_xiM8C6fo;-><init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/o$d;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1064
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/z;->k:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/ac$a;->c(ZI)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1099
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac$a;->q_()V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/z;ZIIIZ)V
    .locals 8

    .line 986
    iget-object v6, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 988
    iput-object p1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 990
    iget-object v0, v6, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 996
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v3, p2

    move v4, p3

    .line 991
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/z;ZIZ)Landroid/util/Pair;

    move-result-object v0

    .line 997
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 998
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 999
    iget-object v2, v6, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/-$$Lambda$n$RqCszl92RIzOIsbDh1InQBr6sd0;

    invoke-direct {v4, p1, p4}, Lcom/google/android/exoplayer2/-$$Lambda$n$RqCszl92RIzOIsbDh1InQBr6sd0;-><init>(Lcom/google/android/exoplayer2/z;I)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1005
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 p4, 0xc

    new-instance v2, Lcom/google/android/exoplayer2/-$$Lambda$n$eFY5rmNSFEocZIQdmnzZ_JL5iS8;

    invoke-direct {v2, p3}, Lcom/google/android/exoplayer2/-$$Lambda$n$eFY5rmNSFEocZIQdmnzZ_JL5iS8;-><init>(I)V

    invoke-virtual {p2, p4, v2}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_1
    if-eqz v1, :cond_3

    .line 1011
    iget-object p2, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1012
    iget-object p2, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 1013
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1015
    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object p4, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v1, 0x0

    .line 6809
    invoke-virtual {p3, p2, p4, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p2

    .line 1015
    iget-object p2, p2, Lcom/google/android/exoplayer2/al$b;->d:Lcom/google/android/exoplayer2/MediaItem;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1019
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    new-instance p4, Lcom/google/android/exoplayer2/-$$Lambda$n$oCjXo7YtkP2IAC4jF6HbBnrfIX0;

    invoke-direct {p4, p2, v0}, Lcom/google/android/exoplayer2/-$$Lambda$n$oCjXo7YtkP2IAC4jF6HbBnrfIX0;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    invoke-virtual {p3, v7, p4}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1023
    :cond_3
    iget-object p2, v6, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq p2, p3, :cond_4

    iget-object p2, p1, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz p2, :cond_4

    .line 1025
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 p3, 0xb

    new-instance p4, Lcom/google/android/exoplayer2/-$$Lambda$n$gCFpyw0gSvQpibVCEyYuhuoYbjA;

    invoke-direct {p4, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$gCFpyw0gSvQpibVCEyYuhuoYbjA;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1029
    :cond_4
    iget-object p2, v6, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    if-eq p2, p3, :cond_5

    .line 1030
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/trackselection/h;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/i;->d:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/trackselection/h;->a(Ljava/lang/Object;)V

    .line 1031
    new-instance p2, Lcom/google/android/exoplayer2/trackselection/g;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/trackselection/g;-><init>([Lcom/google/android/exoplayer2/trackselection/f;)V

    .line 1033
    iget-object p3, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p4, 0x2

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$n$VeLjpfta74w884_T5hfxFuix4hY;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/-$$Lambda$n$VeLjpfta74w884_T5hfxFuix4hY;-><init>(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/trackselection/g;)V

    invoke-virtual {p3, p4, v0}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1037
    :cond_5
    iget-object p2, v6, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1038
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p3, 0x3

    new-instance p4, Lcom/google/android/exoplayer2/-$$Lambda$n$05a--4jMlp4sXveJHBJwWyvpiL4;

    invoke-direct {p4, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$05a--4jMlp4sXveJHBJwWyvpiL4;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1042
    :cond_6
    iget-boolean p2, v6, Lcom/google/android/exoplayer2/z;->f:Z

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/z;->f:Z

    if-eq p2, p3, :cond_7

    .line 1043
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p3, 0x4

    new-instance p4, Lcom/google/android/exoplayer2/-$$Lambda$n$1V78WlxQjN6PC3-7FMwgkgNfb5I;

    invoke-direct {p4, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$1V78WlxQjN6PC3-7FMwgkgNfb5I;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1047
    :cond_7
    iget p2, v6, Lcom/google/android/exoplayer2/z;->d:I

    iget p3, p1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 p4, -0x1

    if-ne p2, p3, :cond_8

    iget-boolean p2, v6, Lcom/google/android/exoplayer2/z;->k:Z

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/z;->k:Z

    if-eq p2, p3, :cond_9

    .line 1049
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    new-instance p3, Lcom/google/android/exoplayer2/-$$Lambda$n$Pu0PTaP7jtj9A1m-mQhEtdOfXpQ;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$Pu0PTaP7jtj9A1m-mQhEtdOfXpQ;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p4, p3}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1055
    :cond_9
    iget p2, v6, Lcom/google/android/exoplayer2/z;->d:I

    iget p3, p1, Lcom/google/android/exoplayer2/z;->d:I

    if-eq p2, p3, :cond_a

    .line 1056
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p3, 0x5

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$n$PIt6zFYrGp8QsGYxQ-NBlQzCDKE;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$PIt6zFYrGp8QsGYxQ-NBlQzCDKE;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1060
    :cond_a
    iget-boolean p2, v6, Lcom/google/android/exoplayer2/z;->k:Z

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/z;->k:Z

    if-eq p2, p3, :cond_b

    .line 1061
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p3, 0x6

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$n$ItxlYlBXvsMPvVwA2x2_Uoyee24;

    invoke-direct {v0, p1, p5}, Lcom/google/android/exoplayer2/-$$Lambda$n$ItxlYlBXvsMPvVwA2x2_Uoyee24;-><init>(Lcom/google/android/exoplayer2/z;I)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1067
    :cond_b
    iget p2, v6, Lcom/google/android/exoplayer2/z;->l:I

    iget p3, p1, Lcom/google/android/exoplayer2/z;->l:I

    if-eq p2, p3, :cond_c

    .line 1069
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/4 p3, 0x7

    new-instance p5, Lcom/google/android/exoplayer2/-$$Lambda$n$zZ5mEEn0HErVFL8sQ0vOdHUQ1RA;

    invoke-direct {p5, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$zZ5mEEn0HErVFL8sQ0vOdHUQ1RA;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p5}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1075
    :cond_c
    invoke-static {v6}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;)Z

    move-result p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;)Z

    move-result p3

    if-eq p2, p3, :cond_d

    .line 1076
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 p3, 0x8

    new-instance p5, Lcom/google/android/exoplayer2/-$$Lambda$n$H_wiUOEG_-UcdGP0HZElvjz6J_g;

    invoke-direct {p5, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$H_wiUOEG_-UcdGP0HZElvjz6J_g;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p5}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1080
    :cond_d
    iget-object p2, v6, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    iget-object p3, p1, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/aa;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 1081
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 p3, 0xd

    new-instance p5, Lcom/google/android/exoplayer2/-$$Lambda$n$_QONt1W-wAmVLxa1joskSl4yPFk;

    invoke-direct {p5, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$_QONt1W-wAmVLxa1joskSl4yPFk;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p3, p5}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_e
    if-eqz p6, :cond_f

    .line 1086
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    sget-object p3, Lcom/google/android/exoplayer2/-$$Lambda$UiV5FKGUHLRSSQHMQHet3x5tp6E;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$UiV5FKGUHLRSSQHMQHet3x5tp6E;

    invoke-virtual {p2, p4, p3}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1088
    :cond_f
    iget-boolean p2, v6, Lcom/google/android/exoplayer2/z;->n:Z

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/z;->n:Z

    if-eq p2, p3, :cond_10

    .line 1089
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    new-instance p3, Lcom/google/android/exoplayer2/-$$Lambda$n$m2gCWkk4pGIxBhB9rxbcZ9QIvpU;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$m2gCWkk4pGIxBhB9rxbcZ9QIvpU;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p4, p3}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1095
    :cond_10
    iget-boolean p2, v6, Lcom/google/android/exoplayer2/z;->o:Z

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/z;->o:Z

    if-eq p2, p3, :cond_11

    .line 1096
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    new-instance p3, Lcom/google/android/exoplayer2/-$$Lambda$n$mps-D8khkefQC7OYtptCQ_wJMN4;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$mps-D8khkefQC7OYtptCQ_wJMN4;-><init>(Lcom/google/android/exoplayer2/z;)V

    invoke-virtual {p2, p4, p3}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 1101
    :cond_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/m;->a()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/r;",
            ">;)V"
        }
    .end annotation

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 397
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/n;->a(Ljava/util/List;IJZ)V

    return-void
.end method

.method private static synthetic a(ZLcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 593
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->c(Z)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/z;)Z
    .locals 2

    .line 1426
    iget v0, p0, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/z;->k:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/z;->l:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/r;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;"
        }
    .end annotation

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1207
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1208
    new-instance v3, Lcom/google/android/exoplayer2/y$c;

    .line 1209
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/r;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/n;->o:Z

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/y$c;-><init>(Lcom/google/android/exoplayer2/source/r;Z)V

    .line 1210
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    add-int/lit8 v5, v2, 0x0

    new-instance v6, Lcom/google/android/exoplayer2/n$a;

    iget-object v7, v3, Lcom/google/android/exoplayer2/y$c;->b:Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/source/n;

    .line 9076
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 1212
    invoke-direct {v6, v7, v3}, Lcom/google/android/exoplayer2/n$a;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/al;)V

    .line 1211
    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    .line 1216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1215
    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/source/ac;->a(II)Lcom/google/android/exoplayer2/source/ac;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    return-object v0
.end method

.method private static synthetic b(ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 577
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->e(I)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/o$d;)V
    .locals 11

    .line 13939
    iget v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    iget v1, p1, Lcom/google/android/exoplayer2/o$d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 13940
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/o$d;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 13941
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/n;->u:Z

    .line 13942
    iget v0, p1, Lcom/google/android/exoplayer2/o$d;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/n;->v:I

    .line 13944
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/o$d;->f:Z

    if-eqz v0, :cond_1

    .line 13945
    iget v0, p1, Lcom/google/android/exoplayer2/o$d;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/n;->w:I

    .line 13947
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    if-nez v0, :cond_5

    .line 13948
    iget-object v0, p1, Lcom/google/android/exoplayer2/o$d;->b:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 13949
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 13952
    iput v2, p0, Lcom/google/android/exoplayer2/n;->A:I

    const-wide/16 v4, 0x0

    .line 13953
    iput-wide v4, p0, Lcom/google/android/exoplayer2/n;->C:J

    .line 13954
    iput v3, p0, Lcom/google/android/exoplayer2/n;->B:I

    .line 13956
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13957
    check-cast v0, Lcom/google/android/exoplayer2/ae;

    .line 14065
    iget-object v0, v0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13958
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const/4 v1, 0x0

    .line 13959
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 13960
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/n$a;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/al;

    .line 14431
    iput-object v4, v2, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/al;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13963
    :cond_4
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/n;->u:Z

    .line 13964
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/n;->u:Z

    .line 13965
    iget-object v5, p1, Lcom/google/android/exoplayer2/o$d;->b:Lcom/google/android/exoplayer2/z;

    iget v7, p0, Lcom/google/android/exoplayer2/n;->v:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/exoplayer2/n;->w:I

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    :cond_5
    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1002
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/al;I)V

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    return-void
.end method

.method private c(I)Lcom/google/android/exoplayer2/z;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    .line 1222
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1221
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v2

    .line 9918
    iget-object v3, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1225
    iget-object v4, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1226
    iget v5, p0, Lcom/google/android/exoplayer2/n;->t:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 1227
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/n;->a(II)V

    .line 1228
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;->M()Lcom/google/android/exoplayer2/al;

    move-result-object v5

    .line 1229
    iget-object v6, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 1233
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Landroid/util/Pair;

    move-result-object v3

    .line 1230
    invoke-direct {p0, v6, v5, v3}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al;Landroid/util/Pair;)Lcom/google/android/exoplayer2/z;

    move-result-object v3

    .line 1235
    iget v5, v3, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v6, 0x4

    if-eq v5, v0, :cond_1

    iget v5, v3, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v5, v6, :cond_1

    if-lez p1, :cond_1

    if-ne p1, v4, :cond_1

    iget-object v4, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1240
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1242
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object v3

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/o;->a(IILcom/google/android/exoplayer2/source/ac;)V

    return-object v3
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 2

    .line 757
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 758
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 757
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private static synthetic c(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1078
    invoke-static {p0}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->a(Z)V

    return-void
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1072
    iget p0, p0, Lcom/google/android/exoplayer2/z;->l:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->d(I)V

    return-void
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1058
    iget p0, p0, Lcom/google/android/exoplayer2/z;->d:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->b(I)V

    return-void
.end method

.method private static synthetic g(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 1

    .line 1052
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/z;->k:Z

    iget p0, p0, Lcom/google/android/exoplayer2/z;->d:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/ac$a;->b(ZI)V

    return-void
.end method

.method private static synthetic h(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1045
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/z;->f:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->b(Z)V

    return-void
.end method

.method private static synthetic i(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->c(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic j(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ac$a;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public static synthetic lambda$05a--4jMlp4sXveJHBJwWyvpiL4(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->i(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$1V78WlxQjN6PC3-7FMwgkgNfb5I(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->h(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$9EqdHfiuhCqIaWI6nUl0M4y8mEU(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/o$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/o$d;)V

    return-void
.end method

.method public static synthetic lambda$Exp3py02o9am369lqlKYEOEMlPI(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method public static synthetic lambda$FlI0-niP_JuQ1bnI1N_xiM8C6fo(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/o$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/o$d;)V

    return-void
.end method

.method public static synthetic lambda$H_wiUOEG_-UcdGP0HZElvjz6J_g(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->d(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$ItxlYlBXvsMPvVwA2x2_Uoyee24(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$PIt6zFYrGp8QsGYxQ-NBlQzCDKE(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->f(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$Pu0PTaP7jtj9A1m-mQhEtdOfXpQ(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->g(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$RqCszl92RIzOIsbDh1InQBr6sd0(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/z;ILcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$VeLjpfta74w884_T5hfxFuix4hY(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$_QONt1W-wAmVLxa1joskSl4yPFk(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->c(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$eFY5rmNSFEocZIQdmnzZ_JL5iS8(ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$gCFpyw0gSvQpibVCEyYuhuoYbjA(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->j(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$ikNlRtjPBrT8TV1lzdwJfD5Q6pg(ZLcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->a(ZLcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$m2gCWkk4pGIxBhB9rxbcZ9QIvpU(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$mps-D8khkefQC7OYtptCQ_wJMN4(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$oCjXo7YtkP2IAC4jF6HbBnrfIX0(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$q3CtLUtDG6UJULDVSivJVwcTShs(ILcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->b(ILcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$zZ5mEEn0HErVFL8sQ0vOdHUQ1RA(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n;->e(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public static synthetic lambda$zZT73xA4fT0JqkNOXCpQwxqu5H8(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n;->c(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 3

    .line 811
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n;->C:J

    return-wide v0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->r:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/z;->r:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/source/r$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final B()J
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    return v0
.end method

.method public final D()I
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final E()I
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final F()J
    .locals 5

    .line 852
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v3, 0x0

    .line 4809
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 5291
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$b;->p:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 5523
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$a;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    .line 856
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/z;->c:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()J
    .locals 6

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n;->C:J

    return-wide v0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/r$a;->d:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/r$a;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v3, 0x0

    .line 5809
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 6308
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$b;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->p:J

    .line 872
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    .line 874
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/r$a;->b:I

    .line 876
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/al$a;->a(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 878
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$a;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 881
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/source/r$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final I()Lcom/google/android/exoplayer2/trackselection/g;
    .locals 2

    .line 908
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/g;-><init>([Lcom/google/android/exoplayer2/trackselection/f;)V

    return-object v0
.end method

.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    return-object v0
.end method

.method public final K()Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad;
    .locals 8

    .line 774
    new-instance v7, Lcom/google/android/exoplayer2/ad;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 778
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->y()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/n;->s:Lcom/google/android/exoplayer2/util/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    .line 4417
    iget-object v6, v0, Lcom/google/android/exoplayer2/o;->b:Landroid/os/Looper;

    move-object v0, v7

    move-object v2, p1

    .line 780
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ad;-><init>(Lcom/google/android/exoplayer2/ad$a;Lcom/google/android/exoplayer2/ad$b;Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/util/c;Landroid/os/Looper;)V

    return-object v7
.end method

.method public final a(I)V
    .locals 3

    .line 573
    iget v0, p0, Lcom/google/android/exoplayer2/n;->e:I

    if-eq v0, p1, :cond_0

    .line 574
    iput p1, p0, Lcom/google/android/exoplayer2/n;->e:I

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    .line 3300
    iget-object v0, v0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/k;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/exoplayer2/-$$Lambda$n$q3CtLUtDG6UJULDVSivJVwcTShs;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$q3CtLUtDG6UJULDVSivJVwcTShs;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/m;->b(ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 10

    .line 609
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    if-ltz p1, :cond_3

    .line 610
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 613
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/n;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 614
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 618
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance p1, Lcom/google/android/exoplayer2/o$d;

    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/o$d;-><init>(Lcom/google/android/exoplayer2/z;)V

    .line 621
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 622
    iget-object p2, p0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/o$e;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/o$e;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/o$d;)V

    return-void

    .line 4289
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    .line 633
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 630
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al;Landroid/util/Pair;)Lcom/google/android/exoplayer2/z;

    move-result-object v4

    .line 634
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p2

    .line 4308
    iget-object v1, v1, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v2, 0x3

    new-instance v3, Lcom/google/android/exoplayer2/o$g;

    invoke-direct {v3, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/o$g;-><init>(Lcom/google/android/exoplayer2/al;IJ)V

    .line 4309
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4310
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    .line 635
    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void

    .line 611
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/al;IJ)V

    throw v1
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 8

    if-nez p1, :cond_0

    .line 647
    sget-object p1, Lcom/google/android/exoplayer2/aa;->a:Lcom/google/android/exoplayer2/aa;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/aa;)Lcom/google/android/exoplayer2/z;

    move-result-object v2

    .line 653
    iget v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    .line 4314
    iget-object v0, v0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    .line 655
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/source/r;)V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->q()V

    return-void
.end method

.method final a(Ljava/util/List;IJZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/r;",
            ">;IJZ)V"
        }
    .end annotation

    move-object v7, p0

    move/from16 v0, p2

    .line 1155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;->L()I

    move-result v1

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->A()J

    move-result-wide v2

    .line 1157
    iget v4, v7, Lcom/google/android/exoplayer2/n;->t:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v7, Lcom/google/android/exoplayer2/n;->t:I

    .line 1158
    iget-object v4, v7, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 1159
    iget-object v6, v7, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    .line 1160
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1159
    invoke-direct {p0, v4, v6}, Lcom/google/android/exoplayer2/n;->a(II)V

    .line 1163
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;->M()Lcom/google/android/exoplayer2/al;

    move-result-object v4

    .line 1165
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v6

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v6

    if-ge v0, v6, :cond_1

    goto :goto_0

    .line 1166
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v4, v0, v10, v11}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/al;IJ)V

    throw v1

    :cond_2
    :goto_0
    const/4 v6, -0x1

    if-eqz p5, :cond_3

    .line 1170
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/n;->f:Z

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result v0

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_4

    move v0, v1

    move-wide v10, v2

    goto :goto_1

    :cond_4
    move-wide/from16 v10, p3

    .line 1176
    :goto_1
    iget-object v1, v7, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 1180
    invoke-direct {p0, v4, v0, v10, v11}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/al;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 1177
    invoke-direct {p0, v1, v4, v2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al;Landroid/util/Pair;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    .line 1182
    iget v2, v1, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v0, v6, :cond_7

    .line 1183
    iget v3, v1, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v3, v5, :cond_7

    .line 1185
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v2

    if-lt v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x4

    .line 1192
    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    .line 1193
    iget-object v8, v7, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    .line 1194
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v11

    iget-object v13, v7, Lcom/google/android/exoplayer2/n;->y:Lcom/google/android/exoplayer2/source/ac;

    move v10, v0

    .line 1193
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer2/o;->a(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ac;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 1195
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 525
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/n;->a(ZII)V

    return-void
.end method

.method public final a(ZII)V
    .locals 8

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->l:I

    if-ne v0, p2, :cond_0

    return-void

    .line 553
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 555
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/z;->a(ZI)Lcom/google/android/exoplayer2/z;

    move-result-object v2

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/o;->a(ZI)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p3

    .line 557
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void
.end method

.method public final a(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->n:Ljava/util/List;

    .line 717
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 716
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n;->c(I)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    goto :goto_0

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, p1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    .line 721
    iget-wide v0, p1, Lcom/google/android/exoplayer2/z;->r:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/z;->p:J

    const-wide/16 v0, 0x0

    .line 722
    iput-wide v0, p1, Lcom/google/android/exoplayer2/z;->q:J

    :goto_0
    const/4 v0, 0x1

    .line 724
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 726
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 728
    iget p1, p0, Lcom/google/android/exoplayer2/n;->t:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 729
    iget-object p1, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    .line 730
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->h:[Lcom/google/android/exoplayer2/af;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/af;->a()I

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/android/exoplayer2/ac$a;)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    .line 2163
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/m$c;

    .line 2164
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2165
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/m;->d:Lcom/google/android/exoplayer2/util/m$b;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/m$c;->a(Lcom/google/android/exoplayer2/util/m$b;)V

    .line 2166
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/r;)V
    .locals 0

    .line 376
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2392
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 588
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/n;->f:Z

    if-eq v0, p1, :cond_0

    .line 589
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/n;->f:Z

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    .line 3304
    iget-object v0, v0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/k;->a(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/exoplayer2/-$$Lambda$n$ikNlRtjPBrT8TV1lzdwJfD5Q6pg;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/-$$Lambda$n$ikNlRtjPBrT8TV1lzdwJfD5Q6pg;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/m;->b(ILcom/google/android/exoplayer2/util/m$a;)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/n;->a(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public final j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->q()V

    return-void
.end method

.method public final k()Lcom/google/android/exoplayer2/ac$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/google/android/exoplayer2/ac$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Landroid/os/Looper;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->d:Landroid/os/Looper;

    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    return v0
.end method

.method public final o()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->l:I

    return v0
.end method

.method public final p()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public final q()V
    .locals 10

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    .line 326
    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 325
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object v4

    .line 331
    iget v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/n;->t:I

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->a()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    .line 333
    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/z;ZIIIZ)V

    return-void
.end method

.method public final r()Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    return v0
.end method

.method public final s()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/n;->e:I

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/n;->f:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->f:Z

    return v0
.end method

.method public final v()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    return-object v0
.end method

.method public final w()V
    .locals 3

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ExoPlayerLib/2.13.3] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-static {}, Lcom/google/android/exoplayer2/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/exoplayer2/-$$Lambda$n$zZT73xA4fT0JqkNOXCpQwxqu5H8;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$n$zZT73xA4fT0JqkNOXCpQwxqu5H8;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/m;->b(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->l:Lcom/google/android/exoplayer2/util/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->b()V

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->c()V

    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->q:Lcom/google/android/exoplayer2/a/a;

    if-eqz v0, :cond_1

    .line 764
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->r:Lcom/google/android/exoplayer2/upstream/c;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/c;->a(Lcom/google/android/exoplayer2/upstream/c$a;)V

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 767
    iget-object v1, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    .line 768
    iget-wide v1, v0, Lcom/google/android/exoplayer2/z;->r:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->p:J

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/exoplayer2/z;->q:J

    return-void
.end method

.method public final x()I
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget v0, p0, Lcom/google/android/exoplayer2/n;->B:I

    return v0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 2

    .line 794
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n;->L()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final z()J
    .locals 4

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 802
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 803
    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->m:Lcom/google/android/exoplayer2/al$a;

    iget v2, v0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v0, v0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/al$a;->b(II)J

    move-result-wide v0

    .line 804
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z_()Lcom/google/android/exoplayer2/trackselection/h;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/trackselection/h;

    return-object v0
.end method
