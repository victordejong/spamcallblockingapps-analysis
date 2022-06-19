.class public abstract Lag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag$b;,
        Lag$a;
    }
.end annotation


# instance fields
.field public final a:Lph$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lph$c;

    invoke-direct {v0}, Lph$c;-><init>()V

    iput-object v0, p0, Lag;->a:Lph$c;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 9

    invoke-interface {p0}, Lfh;->getBufferedPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lfh;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lnu;->n(III)I

    move-result v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public final c()J
    .locals 3

    invoke-interface {p0}, Lfh;->getCurrentTimeline()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lfh;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lag;->a:Lph$c;

    invoke-virtual {v0, v1, v2}, Lph;->m(ILph$c;)Lph$c;

    move-result-object v0

    invoke-virtual {v0}, Lph$c;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final d(J)V
    .locals 1

    invoke-interface {p0}, Lfh;->getCurrentWindowIndex()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lfh;->seekTo(IJ)V

    return-void
.end method
