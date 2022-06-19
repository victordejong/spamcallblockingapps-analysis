.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/r;

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/al$b;

.field private i:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

.field private j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/r;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;JJ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 112
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/r;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;JJZZZ)V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 181
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/r;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/r;

    .line 182
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b:J

    .line 183
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    .line 184
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->d:Z

    .line 185
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->e:Z

    .line 186
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->f:Z

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    .line 188
    new-instance p1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/al$b;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/al;)V
    .locals 17

    move-object/from16 v1, p0

    .line 260
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/al$b;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v6, p1

    .line 1809
    invoke-virtual {v6, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 261
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/al$b;

    .line 2331
    iget-wide v3, v0, Lcom/google/android/exoplayer2/al$b;->r:J

    .line 262
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:J

    sub-long/2addr v9, v3

    .line 283
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    sub-long/2addr v7, v3

    :goto_0
    move-wide v15, v7

    move-wide v7, v9

    move-wide v9, v15

    goto :goto_4

    .line 263
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b:J

    .line 264
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    .line 265
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->f:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->h:Lcom/google/android/exoplayer2/al$b;

    .line 3301
    iget-wide v13, v0, Lcom/google/android/exoplayer2/al$b;->p:J

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v3, v9

    .line 270
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:J

    .line 272
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v3, v11

    .line 274
    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    .line 275
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 277
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/c;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/source/c;->a(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v7, v9

    move-wide v9, v11

    .line 288
    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    move-object v5, v0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;-><init>(Lcom/google/android/exoplayer2/al;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Lcom/google/android/exoplayer2/al;)V

    return-void

    :catch_0
    move-exception v0

    .line 290
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method


# virtual methods
.method protected final synthetic a(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 4301
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p1, v0

    .line 4302
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4303
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->c:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 4304
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 8

    .line 223
    new-instance v7, Lcom/google/android/exoplayer2/source/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/r;

    .line 225
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->d:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/c;-><init>(Lcom/google/android/exoplayer2/source/p;ZJJ)V

    .line 229
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/r;

    check-cast p1, Lcom/google/android/exoplayer2/source/c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/p;)V

    .line 237
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->e:Z

    if-nez p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->a:Lcom/google/android/exoplayer2/al;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b(Lcom/google/android/exoplayer2/al;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 210
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/r;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    .line 5251
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez p1, :cond_0

    .line 5254
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->b(Lcom/google/android/exoplayer2/al;)V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->c()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 246
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->i:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

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

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->j:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 218
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->f()V

    return-void

    .line 216
    :cond_0
    throw v0
.end method
