.class public abstract Lcom/linkedin/android/litr/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final d:Lcom/linkedin/android/litr/d/d;

.field protected final e:Lcom/linkedin/android/litr/d/e;

.field protected final f:Lcom/linkedin/android/litr/e/d;

.field protected final g:Lcom/linkedin/android/litr/b/a;

.field protected final h:Lcom/linkedin/android/litr/b/b;

.field protected final i:Lcom/linkedin/android/litr/d/c;

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Landroid/media/MediaFormat;

.field protected n:J

.field protected o:F


# direct methods
.method constructor <init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/linkedin/android/litr/g/c;->n:J

    .line 59
    iput-object p1, p0, Lcom/linkedin/android/litr/g/c;->d:Lcom/linkedin/android/litr/d/d;

    .line 60
    iput p2, p0, Lcom/linkedin/android/litr/g/c;->j:I

    .line 61
    iput p4, p0, Lcom/linkedin/android/litr/g/c;->k:I

    .line 62
    iput-object p3, p0, Lcom/linkedin/android/litr/g/c;->e:Lcom/linkedin/android/litr/d/e;

    .line 63
    iput-object p5, p0, Lcom/linkedin/android/litr/g/c;->m:Landroid/media/MediaFormat;

    .line 64
    iput-object p6, p0, Lcom/linkedin/android/litr/g/c;->f:Lcom/linkedin/android/litr/e/d;

    .line 65
    iput-object p7, p0, Lcom/linkedin/android/litr/g/c;->g:Lcom/linkedin/android/litr/b/a;

    .line 66
    iput-object p8, p0, Lcom/linkedin/android/litr/g/c;->h:Lcom/linkedin/android/litr/b/b;

    .line 67
    invoke-interface {p1}, Lcom/linkedin/android/litr/d/d;->h()Lcom/linkedin/android/litr/d/c;

    move-result-object p3

    iput-object p3, p0, Lcom/linkedin/android/litr/g/c;->i:Lcom/linkedin/android/litr/d/c;

    .line 69
    invoke-interface {p1, p2}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "durationUs"

    .line 70
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p6

    iput-wide p6, p0, Lcom/linkedin/android/litr/g/c;->n:J

    if-eqz p5, :cond_0

    .line 73
    invoke-virtual {p5, p2, p6, p7}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 1040
    :cond_0
    iget-wide p1, p3, Lcom/linkedin/android/litr/d/c;->b:J

    .line 2033
    iget-wide p4, p3, Lcom/linkedin/android/litr/d/c;->a:J

    cmp-long p6, p1, p4

    if-ltz p6, :cond_1

    .line 83
    iget-wide p1, p0, Lcom/linkedin/android/litr/g/c;->n:J

    .line 2040
    iget-wide p4, p3, Lcom/linkedin/android/litr/d/c;->b:J

    .line 83
    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/linkedin/android/litr/g/c;->n:J

    .line 3033
    iget-wide p3, p3, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long/2addr p1, p3

    .line 84
    iput-wide p1, p0, Lcom/linkedin/android/litr/g/c;->n:J

    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range end should be greater than range start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation
.end method

.method public abstract b()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->h:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->g:Lcom/linkedin/android/litr/b/a;

    invoke-interface {v0}, Lcom/linkedin/android/litr/b/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/linkedin/android/litr/g/c;->o:F

    return v0
.end method

.method public final g()Landroid/media/MediaFormat;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->m:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->b()I

    move-result v0

    iget v1, p0, Lcom/linkedin/android/litr/g/c;->j:I

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->e()V

    .line 124
    iget-object v0, p0, Lcom/linkedin/android/litr/g/c;->d:Lcom/linkedin/android/litr/d/d;

    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
