.class public final Landroidx/media2/exoplayer/external/extractor/e/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/x$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/util/z;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/e/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/media2/exoplayer/external/util/p;

.field private final e:Landroidx/media2/exoplayer/external/extractor/e/w;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Landroidx/media2/exoplayer/external/extractor/e/v;

.field private k:Landroidx/media2/exoplayer/external/extractor/i;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e/y;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/x;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    new-instance v0, Landroidx/media2/exoplayer/external/util/z;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/x;-><init>(Landroidx/media2/exoplayer/external/util/z;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/util/z;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 86
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->c:Landroid/util/SparseArray;

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/w;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/e/w;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 45
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/x;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/e/x;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 170
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmp-long v15, v9, v11

    if-eqz v15, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0x1ba

    const-wide/16 v5, 0x0

    const/4 v4, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_b

    .line 172
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 3071
    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->c:Z

    if-nez v3, :cond_b

    .line 173
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 3095
    iget-boolean v9, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->e:Z

    const-wide/16 v10, 0x4e20

    if-nez v9, :cond_4

    .line 3183
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v5

    .line 3184
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    int-to-long v10, v9

    sub-long/2addr v5, v10

    .line 3186
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v10

    cmp-long v8, v10, v5

    if-eqz v8, :cond_1

    .line 3187
    iput-wide v5, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v13

    .line 3191
    :cond_1
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 3192
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 3193
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v14, v9}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 3195
    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 4142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 5125
    iget v5, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    sub-int/2addr v5, v4

    :goto_1
    if-lt v5, v2, :cond_3

    .line 3206
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/extractor/e/w;->a([BI)I

    move-result v4

    if-ne v4, v7, :cond_2

    add-int/lit8 v4, v5, 0x4

    .line 3208
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 3209
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v8

    cmp-long v4, v8, v16

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    move-wide/from16 v8, v16

    .line 3195
    :goto_2
    iput-wide v8, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->g:J

    .line 3196
    iput-boolean v13, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->e:Z

    return v14

    .line 3098
    :cond_4
    iget-wide v7, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->g:J

    cmp-long v4, v7, v16

    if-nez v4, :cond_5

    .line 3099
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 3101
    :cond_5
    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->d:Z

    if-nez v4, :cond_9

    .line 5147
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    .line 5149
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-eqz v9, :cond_6

    .line 5150
    iput-wide v5, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v13

    .line 5154
    :cond_6
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 5155
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 5156
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v14, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 5158
    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 6142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 7125
    iget v4, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v7, 0x3

    :goto_3
    add-int/lit8 v5, v4, -0x3

    if-ge v2, v5, :cond_8

    .line 5169
    iget-object v5, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v5, v2}, Landroidx/media2/exoplayer/external/extractor/e/w;->a([BI)I

    move-result v5

    const/16 v8, 0x1ba

    if-ne v5, v8, :cond_7

    add-int/lit8 v5, v2, 0x4

    .line 5171
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5172
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v5

    cmp-long v9, v5, v16

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move-wide/from16 v5, v16

    .line 5158
    :goto_4
    iput-wide v5, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->f:J

    .line 5159
    iput-boolean v13, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->d:Z

    return v14

    .line 3104
    :cond_9
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->f:J

    cmp-long v2, v4, v16

    if-nez v2, :cond_a

    .line 3105
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    .line 3108
    :cond_a
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->a:Landroidx/media2/exoplayer/external/util/z;

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->f:J

    invoke-virtual {v2, v4, v5}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v4

    .line 3109
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->a:Landroidx/media2/exoplayer/external/util/z;

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->g:J

    invoke-virtual {v2, v6, v7}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 3110
    iput-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->h:J

    .line 3111
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    return v1

    :cond_b
    const/4 v7, 0x3

    const/16 v8, 0x1ba

    .line 7289
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->l:Z

    if-nez v3, :cond_d

    .line 7290
    iput-boolean v13, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->l:Z

    .line 7291
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 8116
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->h:J

    cmp-long v3, v4, v16

    if-eqz v3, :cond_c

    .line 7292
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/e/v;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 9075
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 7294
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 9116
    iget-wide v7, v3, Landroidx/media2/exoplayer/external/extractor/e/w;->h:J

    move-object v3, v5

    const/4 v6, 0x4

    move-object v13, v5

    const/4 v14, 0x4

    move-wide v5, v7

    move-wide v7, v9

    .line 7295
    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/extractor/e/v;-><init>(Landroidx/media2/exoplayer/external/util/z;JJ)V

    iput-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->j:Landroidx/media2/exoplayer/external/extractor/e/v;

    .line 7297
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->k:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/extractor/e/v;->a()Landroidx/media2/exoplayer/external/extractor/o;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_5

    :cond_c
    const/4 v14, 0x4

    .line 7299
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->k:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/o$b;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->e:Landroidx/media2/exoplayer/external/extractor/e/w;

    .line 10116
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/extractor/e/w;->h:J

    .line 7299
    invoke-direct {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_5

    :cond_d
    const/4 v14, 0x4

    .line 176
    :goto_5
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->j:Landroidx/media2/exoplayer/external/extractor/e/v;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/e/v;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 177
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->j:Landroidx/media2/exoplayer/external/extractor/e/v;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/v;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I

    move-result v1

    return v1

    .line 181
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    if-eqz v15, :cond_f

    .line 183
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->b()J

    move-result-wide v2

    sub-long/2addr v9, v2

    goto :goto_6

    :cond_f
    move-wide v9, v11

    :goto_6
    const/4 v2, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_10

    const-wide/16 v3, 0x4

    cmp-long v5, v9, v3

    if-gez v5, :cond_10

    return v2

    .line 188
    :cond_10
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v14, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    .line 192
    :cond_11
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 193
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    const/16 v4, 0x1b9

    if-ne v3, v4, :cond_12

    return v2

    :cond_12
    const/16 v2, 0x1ba

    if-ne v3, v2, :cond_13

    .line 198
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v3, 0xa

    invoke-interface {v1, v2, v5, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 201
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 204
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 207
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v5

    :cond_13
    const/16 v2, 0x1bb

    const/4 v4, 0x2

    const/4 v6, 0x6

    if-ne v3, v2, :cond_14

    .line 211
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 214
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 215
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v2

    add-int/2addr v2, v6

    .line 216
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v5

    :cond_14
    and-int/lit16 v2, v3, -0x100

    const/16 v7, 0x8

    shr-int/2addr v2, v7

    const/4 v8, 0x1

    if-eq v2, v8, :cond_15

    .line 219
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v5

    :cond_15
    and-int/lit16 v2, v3, 0xff

    .line 228
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;

    .line 229
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->f:Z

    if-nez v5, :cond_1b

    if-nez v3, :cond_19

    const/4 v5, 0x0

    const/16 v8, 0xbd

    if-ne v2, v8, :cond_16

    .line 236
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/e/c;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/e/c;-><init>()V

    const/4 v8, 0x1

    .line 237
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->g:Z

    .line 238
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->i:J

    goto :goto_7

    :cond_16
    const/4 v8, 0x1

    and-int/lit16 v9, v2, 0xe0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_17

    .line 240
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/e/s;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/e/s;-><init>()V

    .line 241
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->g:Z

    .line 242
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->i:J

    goto :goto_7

    :cond_17
    and-int/lit16 v9, v2, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_18

    .line 244
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/e/n;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/e/n;-><init>()V

    .line 245
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->h:Z

    .line 246
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->i:J

    :cond_18
    :goto_7
    if-eqz v5, :cond_19

    .line 249
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/e/ah$d;

    const/16 v8, 0x100

    invoke-direct {v3, v2, v8}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(II)V

    .line 250
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->k:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v5, v8, v3}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    .line 251
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    invoke-direct {v3, v5, v8}, Landroidx/media2/exoplayer/external/extractor/e/x$a;-><init>(Landroidx/media2/exoplayer/external/extractor/e/m;Landroidx/media2/exoplayer/external/util/z;)V

    .line 252
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    :cond_19
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->g:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->h:Z

    if-eqz v2, :cond_1a

    .line 257
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->i:J

    const-wide/16 v10, 0x2000

    add-long/2addr v8, v10

    goto :goto_8

    :cond_1a
    const-wide/32 v8, 0x100000

    .line 259
    :goto_8
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    .line 260
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->f:Z

    .line 261
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->k:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 266
    :cond_1b
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 267
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 268
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v2

    add-int/2addr v2, v6

    if-nez v3, :cond_1c

    .line 273
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 275
    :cond_1c
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 277
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v4, v5, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 278
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 279
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 10346
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/o;->a:[B

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v5, v4}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 10347
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 10363
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10364
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    iput-boolean v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->d:Z

    .line 10365
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    iput-boolean v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->e:Z

    .line 10368
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10369
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    iput v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->g:I

    .line 10349
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/o;->a:[B

    iget v5, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->g:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 10350
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    const-wide/16 v5, 0x0

    .line 10373
    iput-wide v5, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->h:J

    .line 10374
    iget-boolean v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->d:Z

    if-eqz v2, :cond_1e

    .line 10375
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v14}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10376
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x1e

    shl-long/2addr v5, v2

    .line 10377
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10378
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v9, 0xf

    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    shl-int/2addr v7, v9

    int-to-long v10, v7

    or-long/2addr v5, v10

    .line 10379
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10380
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v7, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    int-to-long v10, v7

    or-long/2addr v5, v10

    .line 10381
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10382
    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->f:Z

    if-nez v7, :cond_1d

    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->e:Z

    if-eqz v7, :cond_1d

    .line 10383
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10384
    iget-object v7, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v7, v4}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    int-to-long v7, v4

    shl-long/2addr v7, v2

    .line 10385
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10386
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    shl-int/2addr v2, v9

    int-to-long v10, v2

    or-long/2addr v7, v10

    .line 10387
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10388
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    int-to-long v9, v2

    or-long/2addr v7, v9

    .line 10389
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 10395
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->b:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v2, v7, v8}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    .line 10396
    iput-boolean v4, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->f:Z

    .line 10398
    :cond_1d
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->b:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v2, v5, v6}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->h:J

    .line 10352
    :cond_1e
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    iget-wide v4, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->h:J

    invoke-interface {v2, v4, v5, v14}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(JI)V

    .line 10353
    iget-object v2, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(Landroidx/media2/exoplayer/external/util/p;)V

    .line 10355
    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/e/x$a;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/e/m;->b()V

    .line 280
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/x;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 11149
    iget-object v2, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v2, v2

    .line 280
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    goto/16 :goto_9

    :goto_a
    return v1
.end method

.method public final a(JJ)V
    .locals 6

    .line 139
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 140
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/z;->a()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 1072
    iget-wide p1, p1, Landroidx/media2/exoplayer/external/util/z;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    .line 142
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 2072
    iget-wide p1, p1, Landroidx/media2/exoplayer/external/util/z;->a:J

    cmp-long v3, p1, p3

    if-eqz v3, :cond_2

    .line 149
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 2106
    iput-wide v0, p1, Landroidx/media2/exoplayer/external/util/z;->c:J

    .line 150
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->b:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/util/z;->a(J)V

    .line 153
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->j:Landroidx/media2/exoplayer/external/extractor/e/v;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/e/v;->a(J)V

    :cond_3
    const/4 p1, 0x0

    .line 156
    :goto_1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 157
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/e/x$a;

    .line 2335
    iput-boolean v2, p2, Landroidx/media2/exoplayer/external/extractor/e/x$a;->f:Z

    .line 2336
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/e/x$a;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/e/m;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x;->k:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 96
    invoke-interface {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 99
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

    .line 104
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 108
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 112
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 116
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 120
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 124
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 125
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 127
    invoke-interface {p1, v1, v2, v5}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 128
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
