.class public final Landroidx/media2/exoplayer/external/source/ao;
.super Landroidx/media2/exoplayer/external/al;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:Z

.field private final j:Z

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/ao;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    .line 149
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/al;-><init>()V

    move-wide v1, p1

    .line 150
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->c:J

    move-wide v1, p3

    .line 151
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->d:J

    move-wide v1, p5

    .line 152
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->e:J

    move-wide v1, p7

    .line 153
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->f:J

    move-wide v1, p9

    .line 154
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->g:J

    move-wide v1, p11

    .line 155
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->h:J

    move/from16 v1, p13

    .line 156
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ao;->i:Z

    move/from16 v1, p14

    .line 157
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ao;->j:Z

    move-object/from16 v1, p15

    .line 158
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/ao;->l:Ljava/lang/Object;

    move-object/from16 v1, p16

    .line 159
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/ao;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    invoke-direct/range {v0 .. v16}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 55
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 73
    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 211
    sget-object v0, Landroidx/media2/exoplayer/external/source/ao;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 7

    const/4 v0, 0x1

    .line 204
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/a;->a(II)I

    if-eqz p3, :cond_0

    .line 205
    sget-object p1, Landroidx/media2/exoplayer/external/source/ao;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    .line 206
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ao;->e:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ao;->g:J

    neg-long v5, v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    .line 169
    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/a;->a(II)I

    .line 170
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->h:J

    .line 171
    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/ao;->j:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v11, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-eqz v7, :cond_1

    .line 172
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/ao;->f:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    :goto_0
    move-wide v12, v3

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide v12, v1

    .line 183
    :goto_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ao;->k:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/ao;->l:Ljava/lang/Object;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/ao;->c:J

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/source/ao;->d:J

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/source/ao;->i:Z

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/ao;->f:J

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ao;->g:J

    move-object/from16 v3, p2

    move-wide/from16 v16, v1

    invoke-virtual/range {v3 .. v17}, Landroidx/media2/exoplayer/external/al$b;->a(Ljava/lang/Object;Ljava/lang/Object;JJZZJJJ)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v1

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 216
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/a;->a(II)I

    .line 217
    sget-object p1, Landroidx/media2/exoplayer/external/source/ao;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
