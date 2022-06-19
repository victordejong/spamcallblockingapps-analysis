.class public Ldg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyg;


# instance fields
.field public final a:Lps;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:J

.field public final j:Z

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lps;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lps;-><init>(ZI)V

    invoke-direct {p0, v0}, Ldg;-><init>(Lps;)V

    return-void
.end method

.method public constructor <init>(Lps;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Ldg;-><init>(Lps;IIIIIIZIZ)V

    return-void
.end method

.method public constructor <init>(Lps;IIIIIIZIZ)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-string v8, "bufferForPlaybackMs"

    const-string v9, "0"

    invoke-static {v4, v7, v8, v9}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v5, v7, v10, v9}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    invoke-static {p2, v4, v11, v8}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    invoke-static {v2, v4, v12, v8}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v5, v11, v10}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v12, v10}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    invoke-static {v3, p2, v8, v11}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2, v8, v12}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    invoke-static {v6, v7, v8, v9}, Ldg;->b(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    iput-object v7, v0, Ldg;->a:Lps;

    int-to-long v7, v1

    invoke-static {v7, v8}, Lcg;->a(J)J

    move-result-wide v7

    iput-wide v7, v0, Ldg;->b:J

    int-to-long v1, v2

    invoke-static {v1, v2}, Lcg;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Ldg;->c:J

    int-to-long v1, v3

    invoke-static {v1, v2}, Lcg;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Ldg;->d:J

    int-to-long v1, v4

    invoke-static {v1, v2}, Lcg;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Ldg;->e:J

    int-to-long v1, v5

    invoke-static {v1, v2}, Lcg;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Ldg;->f:J

    move/from16 v1, p7

    iput v1, v0, Ldg;->g:I

    move/from16 v1, p8

    iput-boolean v1, v0, Ldg;->h:Z

    int-to-long v1, v6

    invoke-static {v1, v2}, Lcg;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Ldg;->i:J

    move/from16 v1, p10

    iput-boolean v1, v0, Ldg;->j:Z

    return-void
.end method

.method public static b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be less than "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lit;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static d([Ljh;Lzr;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljh;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1}, Lzr;->a(I)Lyr;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a([Ljh;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V
    .locals 1

    invoke-static {p1, p3}, Ldg;->d([Ljh;Lzr;)Z

    move-result p2

    iput-boolean p2, p0, Ldg;->m:Z

    iget p2, p0, Ldg;->g:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Ldg;->c([Ljh;Lzr;)I

    move-result p2

    :cond_0
    iput p2, p0, Ldg;->k:I

    iget-object p1, p0, Ldg;->a:Lps;

    invoke-virtual {p1, p2}, Lps;->e(I)V

    return-void
.end method

.method public c([Ljh;Lzr;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Lzr;->a(I)Lyr;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljh;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lnu;->y(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldg;->k:I

    iput-boolean v0, p0, Ldg;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldg;->a:Lps;

    invoke-virtual {p1}, Lps;->d()V

    :cond_0
    return-void
.end method

.method public getAllocator()Les;
    .locals 1

    iget-object v0, p0, Ldg;->a:Lps;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    iget-wide v0, p0, Ldg;->i:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldg;->e(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldg;->e(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldg;->e(Z)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    iget-boolean v0, p0, Ldg;->j:Z

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 8

    iget-object v0, p0, Ldg;->a:Lps;

    invoke-virtual {v0}, Lps;->c()I

    move-result v0

    iget v1, p0, Ldg;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Ldg;->m:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Ldg;->c:J

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Ldg;->b:J

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    invoke-static {v4, v5, p3}, Lnu;->D(JF)J

    move-result-wide v4

    iget-wide v6, p0, Ldg;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    cmp-long p3, p1, v4

    if-gez p3, :cond_5

    iget-boolean p1, p0, Ldg;->h:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    iput-boolean v2, p0, Ldg;->l:Z

    goto :goto_3

    :cond_5
    iget-wide v1, p0, Ldg;->d:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    iput-boolean v3, p0, Ldg;->l:Z

    :cond_7
    :goto_3
    iget-boolean p1, p0, Ldg;->l:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 3

    invoke-static {p1, p2, p3}, Lnu;->I(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    iget-wide p3, p0, Ldg;->f:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Ldg;->e:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    iget-boolean p1, p0, Ldg;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ldg;->a:Lps;

    invoke-virtual {p1}, Lps;->c()I

    move-result p1

    iget p2, p0, Ldg;->k:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
