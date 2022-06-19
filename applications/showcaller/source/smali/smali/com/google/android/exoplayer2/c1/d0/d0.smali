.class public final Lcom/google/android/exoplayer2/c1/d0/d0;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/d0/a0;


# instance fields
.field private a:Lcom/google/android/exoplayer2/util/e0;

.field private b:Lcom/google/android/exoplayer2/c1/v;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->a:Lcom/google/android/exoplayer2/util/e0;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->a()V

    .line 3
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->b:Lcom/google/android/exoplayer2/c1/v;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lcom/google/android/exoplayer2/Format;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/v;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->a:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->b:Lcom/google/android/exoplayer2/c1/v;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->a:Lcom/google/android/exoplayer2/util/e0;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/e0;->e()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    .line 5
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/Format;->t(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->c:Z

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v5

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->b:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->b:Lcom/google/android/exoplayer2/c1/v;

    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/d0;->a:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/e0;->d()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    return-void
.end method
