.class public final Lcom/google/android/exoplayer2/extractor/h/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/w$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/ad;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/h/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/util/u;

.field private final e:Lcom/google/android/exoplayer2/extractor/h/v;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/extractor/h/u;

.field private k:Lcom/google/android/exoplayer2/extractor/j;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$w$GIQAk8KOsCi70-XJWBYDc7aUCIs;->INSTANCE:Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$w$GIQAk8KOsCi70-XJWBYDc7aUCIs;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/w;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/util/ad;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/w;-><init>(Lcom/google/android/exoplayer2/util/ad;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/ad;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 85
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->c:Landroid/util/SparseArray;

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/h/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    return-void
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 43
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/w;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h/w;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$GIQAk8KOsCi70-XJWBYDc7aUCIs()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/h/w;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 165
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    const/4 v3, 0x1

    const/4 v14, 0x0

    cmp-long v15, v10, v12

    if-eqz v15, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v8, 0x1ba

    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_b

    .line 169
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 2067
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/extractor/h/v;->c:Z

    if-nez v4, :cond_b

    .line 170
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 2089
    iget-boolean v10, v4, Lcom/google/android/exoplayer2/extractor/h/v;->e:Z

    const-wide/16 v11, 0x4e20

    if-nez v10, :cond_4

    .line 2177
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v6

    .line 2178
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    int-to-long v11, v10

    sub-long/2addr v6, v11

    .line 2180
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v11

    cmp-long v9, v11, v6

    if-eqz v9, :cond_1

    .line 2181
    iput-wide v6, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v3

    .line 2185
    :cond_1
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 2186
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 2187
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2187
    invoke-interface {v1, v2, v14, v10}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 2189
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5127
    iget v6, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    sub-int/2addr v6, v5

    :goto_1
    if-lt v6, v2, :cond_3

    .line 5169
    iget-object v5, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3200
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/h/v;->a([BI)I

    move-result v5

    if-ne v5, v8, :cond_2

    add-int/lit8 v5, v6, 0x4

    .line 3202
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3203
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v9

    cmp-long v5, v9, v16

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    move-wide/from16 v9, v16

    .line 2189
    :goto_2
    iput-wide v9, v4, Lcom/google/android/exoplayer2/extractor/h/v;->g:J

    .line 2190
    iput-boolean v3, v4, Lcom/google/android/exoplayer2/extractor/h/v;->e:Z

    return v14

    .line 2092
    :cond_4
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/h/v;->g:J

    cmp-long v5, v8, v16

    if-nez v5, :cond_5

    .line 2093
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 2095
    :cond_5
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->d:Z

    if-nez v5, :cond_9

    .line 6141
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v5, v8

    .line 6143
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    .line 6144
    iput-wide v6, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v3

    .line 6148
    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 6149
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 6150
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 6150
    invoke-interface {v1, v2, v14, v5}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 6152
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/h/v;->b:Lcom/google/android/exoplayer2/util/u;

    .line 8144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 9127
    iget v5, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 v8, 0x3

    :goto_3
    add-int/lit8 v6, v5, -0x3

    if-ge v2, v6, :cond_8

    .line 9169
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 7163
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/extractor/h/v;->a([BI)I

    move-result v6

    const/16 v9, 0x1ba

    if-ne v6, v9, :cond_7

    add-int/lit8 v6, v2, 0x4

    .line 7165
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 7166
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v6

    cmp-long v10, v6, v16

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move-wide/from16 v6, v16

    .line 6152
    :goto_4
    iput-wide v6, v4, Lcom/google/android/exoplayer2/extractor/h/v;->f:J

    .line 6153
    iput-boolean v3, v4, Lcom/google/android/exoplayer2/extractor/h/v;->d:Z

    return v14

    .line 2098
    :cond_9
    iget-wide v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->f:J

    cmp-long v5, v2, v16

    if-nez v5, :cond_a

    .line 2099
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    .line 2102
    :cond_a
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/h/v;->a:Lcom/google/android/exoplayer2/util/ad;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->f:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v2

    .line 2103
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->a:Lcom/google/android/exoplayer2/util/ad;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/extractor/h/v;->g:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 2104
    iput-wide v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->h:J

    .line 2105
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v1

    return v1

    :cond_b
    const/4 v8, 0x3

    const/16 v9, 0x1ba

    .line 9286
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->l:Z

    if-nez v4, :cond_d

    .line 9287
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->l:Z

    .line 9288
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 10110
    iget-wide v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->h:J

    cmp-long v4, v5, v16

    if-eqz v4, :cond_c

    .line 9289
    new-instance v6, Lcom/google/android/exoplayer2/extractor/h/u;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 11071
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/h/v;->a:Lcom/google/android/exoplayer2/util/ad;

    .line 9291
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 11110
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/h/v;->h:J

    move-object v4, v6

    const/4 v7, 0x4

    move-object v3, v6

    const/4 v14, 0x4

    move-wide v6, v8

    move-wide v8, v10

    .line 9292
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/h/u;-><init>(Lcom/google/android/exoplayer2/util/ad;JJ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->j:Lcom/google/android/exoplayer2/extractor/h/u;

    .line 9294
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/u;->a()Lcom/google/android/exoplayer2/extractor/v;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    goto :goto_5

    :cond_c
    const/4 v14, 0x4

    .line 9296
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/w;->e:Lcom/google/android/exoplayer2/extractor/h/v;

    .line 12110
    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/h/v;->h:J

    .line 9296
    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    goto :goto_5

    :cond_d
    const/4 v14, 0x4

    .line 173
    :goto_5
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->j:Lcom/google/android/exoplayer2/extractor/h/u;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/u;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 174
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->j:Lcom/google/android/exoplayer2/extractor/h/u;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/h/u;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v1

    return v1

    .line 177
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    if-eqz v15, :cond_f

    .line 179
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v2

    sub-long/2addr v10, v2

    goto :goto_6

    :cond_f
    move-wide v10, v12

    :goto_6
    const/4 v2, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_10

    const-wide/16 v3, 0x4

    cmp-long v5, v10, v3

    if-gez v5, :cond_10

    return v2

    .line 184
    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 12169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    invoke-interface {v1, v3, v5, v14, v4}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    .line 188
    :cond_11
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 189
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    const/16 v4, 0x1b9

    if-ne v3, v4, :cond_12

    return v2

    :cond_12
    const/16 v2, 0x1ba

    if-ne v3, v2, :cond_13

    .line 194
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 13169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v3, 0xa

    .line 194
    invoke-interface {v1, v2, v5, v3}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 197
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 200
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 203
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v5

    :cond_13
    const/16 v2, 0x1bb

    const/4 v4, 0x2

    const/4 v6, 0x6

    if-ne v3, v2, :cond_14

    .line 207
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 14169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 207
    invoke-interface {v1, v2, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 210
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 211
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    add-int/2addr v2, v6

    .line 212
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v5

    :cond_14
    and-int/lit16 v2, v3, -0x100

    const/16 v7, 0x8

    shr-int/2addr v2, v7

    const/4 v8, 0x1

    if-eq v2, v8, :cond_15

    .line 215
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v5

    :cond_15
    and-int/lit16 v2, v3, 0xff

    .line 224
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/w;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/h/w$a;

    .line 225
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/w;->f:Z

    if-nez v5, :cond_1b

    if-nez v3, :cond_19

    const/4 v5, 0x0

    const/16 v8, 0xbd

    if-ne v2, v8, :cond_16

    .line 232
    new-instance v5, Lcom/google/android/exoplayer2/extractor/h/b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/h/b;-><init>()V

    const/4 v8, 0x1

    .line 233
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->g:Z

    .line 234
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/h/w;->i:J

    goto :goto_7

    :cond_16
    const/4 v8, 0x1

    and-int/lit16 v9, v2, 0xe0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_17

    .line 236
    new-instance v5, Lcom/google/android/exoplayer2/extractor/h/q;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/h/q;-><init>()V

    .line 237
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->g:Z

    .line 238
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/h/w;->i:J

    goto :goto_7

    :cond_17
    and-int/lit16 v9, v2, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_18

    .line 240
    new-instance v5, Lcom/google/android/exoplayer2/extractor/h/k;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/h/k;-><init>()V

    .line 241
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->h:Z

    .line 242
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->i:J

    :cond_18
    :goto_7
    if-eqz v5, :cond_19

    .line 245
    new-instance v3, Lcom/google/android/exoplayer2/extractor/h/ad$d;

    const/16 v8, 0x100

    invoke-direct {v3, v2, v8}, Lcom/google/android/exoplayer2/extractor/h/ad$d;-><init>(II)V

    .line 246
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v5, v8, v3}, Lcom/google/android/exoplayer2/extractor/h/j;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    .line 247
    new-instance v3, Lcom/google/android/exoplayer2/extractor/h/w$a;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-direct {v3, v5, v8}, Lcom/google/android/exoplayer2/extractor/h/w$a;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;Lcom/google/android/exoplayer2/util/ad;)V

    .line 248
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/w;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_19
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->g:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->h:Z

    if-eqz v2, :cond_1a

    .line 253
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/h/w;->i:J

    const-wide/16 v10, 0x2000

    add-long/2addr v8, v10

    goto :goto_8

    :cond_1a
    const-wide/32 v8, 0x100000

    .line 255
    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    .line 256
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->f:Z

    .line 257
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 262
    :cond_1b
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 15169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v5, 0x0

    .line 262
    invoke-interface {v1, v2, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 263
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 264
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    add-int/2addr v2, v6

    if-nez v3, :cond_1c

    .line 269
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 271
    :cond_1c
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 273
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 16169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 273
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 274
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 275
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 16343
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v5, v4}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 16344
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 16360
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16361
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    iput-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->d:Z

    .line 16362
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    iput-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->e:Z

    .line 16365
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16366
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    iput v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->g:I

    .line 16346
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->g:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 16347
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    const-wide/16 v5, 0x0

    .line 16370
    iput-wide v5, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->h:J

    .line 16371
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->d:Z

    if-eqz v2, :cond_1e

    .line 16372
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16373
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x1e

    shl-long/2addr v5, v2

    .line 16374
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16375
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    const/16 v9, 0xf

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v7

    shl-int/2addr v7, v9

    int-to-long v10, v7

    or-long/2addr v5, v10

    .line 16376
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16377
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v7

    int-to-long v10, v7

    or-long/2addr v5, v10

    .line 16378
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16379
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->f:Z

    if-nez v7, :cond_1d

    iget-boolean v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->e:Z

    if-eqz v7, :cond_1d

    .line 16380
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v7, v14}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16381
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    int-to-long v7, v4

    shl-long/2addr v7, v2

    .line 16382
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16383
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    shl-int/2addr v2, v9

    int-to-long v10, v2

    or-long/2addr v7, v10

    .line 16384
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16385
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    int-to-long v9, v2

    or-long/2addr v7, v9

    .line 16386
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 16392
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    .line 16393
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->f:Z

    .line 16395
    :cond_1d
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->h:J

    .line 16349
    :cond_1e
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->h:J

    invoke-interface {v2, v4, v5, v14}, Lcom/google/android/exoplayer2/extractor/h/j;->a(JI)V

    .line 16350
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/h/j;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 16352
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/h/w$a;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/h/j;->b()V

    .line 276
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/w;->d:Lcom/google/android/exoplayer2/util/u;

    .line 17174
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v2, v2

    .line 276
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    goto/16 :goto_9

    :goto_a
    return v1
.end method

.method public final a(JJ)V
    .locals 4

    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ad;->c()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ad;->a()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    .line 141
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ad;->a()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->b:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/util/ad;->a(J)V

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->j:Lcom/google/android/exoplayer2/extractor/h/u;

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/h/u;->a(J)V

    :cond_3
    const/4 p1, 0x0

    .line 153
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/w;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 154
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/w;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/h/w$a;

    .line 1332
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/extractor/h/w$a;->f:Z

    .line 1333
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/w$a;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/h/j;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/w;->k:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 94
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 97
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 102
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 106
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 110
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 114
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 118
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 122
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 123
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 125
    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 126
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    return v2
.end method
