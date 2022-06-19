.class public final Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;,
        Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/t;

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/media2/exoplayer/external/al$b;

.field private i:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

.field private j:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 133
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/t;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;JJ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 114
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/t;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;JJZZZ)V
    .locals 3

    .line 181
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 183
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/t;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a:Landroidx/media2/exoplayer/external/source/t;

    .line 184
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->b:J

    .line 185
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->c:J

    .line 186
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->d:Z

    .line 187
    iput-boolean p7, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->e:Z

    .line 188
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->f:Z

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    .line 190
    new-instance p1, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->h:Landroidx/media2/exoplayer/external/al$b;

    return-void
.end method

.method private b(Landroidx/media2/exoplayer/external/al;)V
    .locals 17

    move-object/from16 v1, p0

    .line 252
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->h:Landroidx/media2/exoplayer/external/al$b;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v6, p1

    .line 1648
    invoke-virtual {v6, v2, v0, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    .line 253
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->h:Landroidx/media2/exoplayer/external/al$b;

    .line 2258
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/al$b;->k:J

    .line 254
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->i:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    iget-wide v9, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->k:J

    sub-long/2addr v9, v3

    .line 275
    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->c:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->l:J

    sub-long/2addr v7, v3

    :goto_0
    move-wide v15, v7

    move-wide v7, v9

    move-wide v9, v15

    goto :goto_4

    .line 255
    :cond_2
    :goto_1
    iget-wide v9, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->b:J

    .line 256
    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->c:J

    .line 257
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->f:Z

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->h:Landroidx/media2/exoplayer/external/al$b;

    .line 3228
    iget-wide v13, v0, Landroidx/media2/exoplayer/external/al$b;->i:J

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v3, v9

    .line 262
    iput-wide v13, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->k:J

    .line 264
    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->c:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v3, v11

    .line 266
    :goto_2
    iput-wide v7, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->l:J

    .line 267
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 269
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/c;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->k:J

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->l:J

    invoke-virtual {v3, v4, v5, v7, v8}, Landroidx/media2/exoplayer/external/source/c;->a(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v7, v9

    move-wide v9, v11

    .line 280
    :goto_4
    :try_start_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

    move-object v5, v0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;-><init>(Landroidx/media2/exoplayer/external/al;JJ)V

    iput-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->i:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a(Landroidx/media2/exoplayer/external/al;)V

    return-void

    :catch_0
    move-exception v0

    .line 282
    iput-object v0, v1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->j:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method


# virtual methods
.method protected final synthetic a(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 3293
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->b:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p1, v0

    .line 3294
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 3295
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 3296
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 8

    .line 215
    new-instance v7, Landroidx/media2/exoplayer/external/source/c;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a:Landroidx/media2/exoplayer/external/source/t;

    .line 217
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->d:Z

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->k:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->l:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/c;-><init>(Landroidx/media2/exoplayer/external/source/s;ZJJ)V

    .line 221
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a:Landroidx/media2/exoplayer/external/source/t;

    check-cast p1, Landroidx/media2/exoplayer/external/source/c;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/s;)V

    .line 229
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->e:Z

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->i:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->b:Landroidx/media2/exoplayer/external/al;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->b(Landroidx/media2/exoplayer/external/al;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 202
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a:Landroidx/media2/exoplayer/external/source/t;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 0

    .line 4243
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->j:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    if-nez p1, :cond_0

    .line 4246
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->b(Landroidx/media2/exoplayer/external/al;)V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 236
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->c()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->j:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    .line 238
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->i:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->a:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/t;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;->j:Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->f()V

    return-void

    .line 208
    :cond_0
    throw v0
.end method
