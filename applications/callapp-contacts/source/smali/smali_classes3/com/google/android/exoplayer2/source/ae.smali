.class final Lcom/google/android/exoplayer2/source/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ae$b;,
        Lcom/google/android/exoplayer2/source/ae$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/p;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lcom/google/android/exoplayer2/source/ae$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/s$a;

.field final b:Lcom/google/android/exoplayer2/upstream/Loader;

.field final c:Lcom/google/android/exoplayer2/Format;

.field final d:Z

.field e:Z

.field f:[B

.field g:I

.field private final h:Lcom/google/android/exoplayer2/upstream/j;

.field private final i:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final j:Lcom/google/android/exoplayer2/upstream/v;

.field private final k:Lcom/google/android/exoplayer2/upstream/r;

.field private final l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/ae$a;",
            ">;"
        }
    .end annotation
.end field

.field private final n:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/upstream/v;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/source/s$a;Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae;->h:Lcom/google/android/exoplayer2/upstream/j;

    .line 82
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ae;->i:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 83
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ae;->j:Lcom/google/android/exoplayer2/upstream/v;

    .line 84
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    .line 85
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ae;->n:J

    .line 86
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ae;->k:Lcom/google/android/exoplayer2/upstream/r;

    .line 87
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    .line 88
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/ae;->d:Z

    .line 89
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance p5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array p2, p2, [Lcom/google/android/exoplayer2/Format;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    invoke-direct {p5, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object p5, p3, p6

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae;->m:Ljava/util/ArrayList;

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 0

    return-void
.end method

.method public final a(JLcom/google/android/exoplayer2/ai;)J
    .locals 0

    return-wide p1
.end method

.method public final a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 120
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 121
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae;->m:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    aput-object v2, p3, v0

    .line 125
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 126
    new-instance v1, Lcom/google/android/exoplayer2/source/ae$a;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/ae$a;-><init>(Lcom/google/android/exoplayer2/source/ae;Lcom/google/android/exoplayer2/source/ae$1;)V

    .line 127
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ae;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 129
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v9, p6

    move/from16 v1, p7

    .line 46
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/ae$b;

    .line 2402
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    .line 2268
    new-instance v4, Lcom/google/android/exoplayer2/source/l;

    iget-wide v11, v2, Lcom/google/android/exoplayer2/source/ae$b;->a:J

    iget-object v13, v2, Lcom/google/android/exoplayer2/source/ae$b;->b:Lcom/google/android/exoplayer2/upstream/j;

    .line 3065
    iget-object v14, v3, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 3070
    iget-object v15, v3, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 4057
    iget-wide v2, v3, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v10, v4

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-wide/from16 v20, v2

    .line 2276
    invoke-direct/range {v10 .. v21}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 2277
    new-instance v2, Lcom/google/android/exoplayer2/source/o;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/ae;->n:J

    .line 2285
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v24

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v25}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 2286
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ae;->k:Lcom/google/android/exoplayer2/upstream/r;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/r$a;

    invoke-direct {v5, v4, v2, v9, v1}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;I)V

    .line 2287
    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/upstream/r;->a(Lcom/google/android/exoplayer2/upstream/r$a;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v2, v7

    if-eqz v10, :cond_1

    .line 2289
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/ae;->k:Lcom/google/android/exoplayer2/upstream/r;

    .line 2292
    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/upstream/r;->a(I)I

    move-result v7

    if-lt v1, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2295
    :goto_1
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/source/ae;->d:Z

    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    .line 2296
    invoke-static {v1, v2, v9}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2297
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    .line 2298
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    .line 2302
    invoke-static {v5, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v1

    goto :goto_2

    .line 2303
    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    :goto_2
    move-object v11, v1

    .line 2305
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    .line 2306
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    const/4 v3, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    const-wide/16 v6, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/ae;->n:J

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v12

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V

    return-object v11
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(JZ)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p$a;J)V
    .locals 0

    .line 100
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/p;)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 46
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ae$b;

    .line 6402
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    .line 7057
    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/t;->a:J

    long-to-int v3, v2

    .line 6210
    iput v3, v0, Lcom/google/android/exoplayer2/source/ae;->g:I

    .line 7402
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ae$b;->d:[B

    .line 6211
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/ae;->f:[B

    const/4 v2, 0x1

    .line 6212
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    .line 8402
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    .line 6214
    new-instance v15, Lcom/google/android/exoplayer2/source/l;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ae$b;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ae$b;->b:Lcom/google/android/exoplayer2/upstream/j;

    .line 9065
    iget-object v7, v2, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 9070
    iget-object v8, v2, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 6219
    iget v1, v0, Lcom/google/android/exoplayer2/source/ae;->g:I

    int-to-long v13, v1

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6224
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/ae;->n:J

    const-wide/16 v6, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 46
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ae$b;

    .line 4402
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ae$b;->c:Lcom/google/android/exoplayer2/upstream/t;

    .line 4239
    new-instance v15, Lcom/google/android/exoplayer2/source/l;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ae$b;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ae$b;->b:Lcom/google/android/exoplayer2/upstream/j;

    .line 5065
    iget-object v7, v2, Lcom/google/android/exoplayer2/upstream/t;->b:Landroid/net/Uri;

    .line 5070
    iget-object v8, v2, Lcom/google/android/exoplayer2/upstream/t;->c:Ljava/util/Map;

    .line 6057
    iget-wide v13, v2, Lcom/google/android/exoplayer2/upstream/t;->a:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 4247
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4249
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ae;->n:J

    const-wide/16 v4, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v15

    move-wide/from16 p3, v4

    move-wide/from16 p5, v2

    invoke-virtual/range {p1 .. p6}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;JJ)V

    return-void
.end method

.method public final b(J)J
    .locals 4

    const/4 v0, 0x0

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ae$a;

    .line 1333
    iget v2, v1, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1334
    iput v2, v1, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final c()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 147
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->i:Lcom/google/android/exoplayer2/upstream/h$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/h$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v1

    .line 151
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ae;->j:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 154
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/ae$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ae;->h:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/ae$b;-><init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/h;)V

    .line 155
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ae;->k:Lcom/google/android/exoplayer2/upstream/r;

    const/4 v4, 0x1

    .line 159
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/r;->a(I)I

    move-result v3

    .line 156
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v9

    .line 160
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    new-instance v12, Lcom/google/android/exoplayer2/source/l;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/ae$b;->a:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ae;->h:Lcom/google/android/exoplayer2/upstream/j;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;J)V

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    const-wide/16 v14, 0x0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ae;->n:J

    move-wide/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public final d()J
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    return v0
.end method
