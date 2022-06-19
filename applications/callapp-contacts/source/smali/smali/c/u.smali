.class public final Lc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ad;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/PeekSource;",
        "Lokio/Source;",
        "upstream",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;)V",
        "buffer",
        "Lokio/Buffer;",
        "closed",
        "",
        "expectedPos",
        "",
        "expectedSegment",
        "Lokio/Segment;",
        "pos",
        "",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lc/f;

.field private b:Lc/y;

.field private c:I

.field private d:Z

.field private e:J

.field private final f:Lc/h;


# direct methods
.method public constructor <init>(Lc/h;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/u;->f:Lc/h;

    .line 31
    invoke-interface {p1}, Lc/h;->b()Lc/f;

    move-result-object p1

    iput-object p1, p0, Lc/u;->a:Lc/f;

    .line 32
    iget-object v0, p1, Lc/f;->a:Lc/y;

    iput-object v0, p0, Lc/u;->b:Lc/y;

    .line 33
    iget-object p1, p1, Lc/f;->a:Lc/y;

    if-eqz p1, :cond_0

    iget p1, p1, Lc/y;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lc/u;->c:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lc/u;->d:Z

    return-void
.end method

.method public final read(Lc/f;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v1

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_8

    .line 40
    iget-boolean v5, p0, Lc/u;->d:Z

    xor-int/2addr v5, v3

    if-eqz v5, :cond_7

    .line 44
    iget-object v5, p0, Lc/u;->b:Lc/y;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lc/u;->a:Lc/f;

    iget-object v6, v6, Lc/f;->a:Lc/y;

    if-ne v5, v6, :cond_2

    iget v5, p0, Lc/u;->c:I

    iget-object v6, p0, Lc/u;->a:Lc/f;

    iget-object v6, v6, Lc/f;->a:Lc/y;

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v6, v6, Lc/y;->b:I

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_6

    if-nez v4, :cond_3

    return-wide v1

    .line 48
    :cond_3
    iget-object v0, p0, Lc/u;->f:Lc/h;

    iget-wide v1, p0, Lc/u;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lc/h;->b(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 p1, -0x1

    return-wide p1

    .line 50
    :cond_4
    iget-object v0, p0, Lc/u;->b:Lc/y;

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/u;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/y;

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lc/u;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/y;

    iput-object v0, p0, Lc/u;->b:Lc/y;

    .line 55
    iget-object v0, p0, Lc/u;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v0, v0, Lc/y;->b:I

    iput v0, p0, Lc/u;->c:I

    .line 58
    :cond_5
    iget-object v0, p0, Lc/u;->a:Lc/f;

    .line 1073
    iget-wide v0, v0, Lc/f;->b:J

    .line 58
    iget-wide v2, p0, Lc/u;->e:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 59
    iget-object v2, p0, Lc/u;->a:Lc/f;

    iget-wide v4, p0, Lc/u;->e:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lc/f;->a(Lc/f;JJ)Lc/f;

    .line 60
    iget-wide v0, p0, Lc/u;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lc/u;->e:J

    return-wide p2

    .line 43
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 39
    :cond_8
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 65
    iget-object v0, p0, Lc/u;->f:Lc/h;

    invoke-interface {v0}, Lc/h;->timeout()Lc/ae;

    move-result-object v0

    return-object v0
.end method
