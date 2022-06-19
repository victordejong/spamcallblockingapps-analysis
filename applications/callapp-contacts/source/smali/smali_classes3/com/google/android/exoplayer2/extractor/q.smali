.class public Lcom/google/android/exoplayer2/extractor/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/i;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/i;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/i;->a(I)I

    move-result p1

    return p1
.end method

.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    return-void
.end method

.method public final a(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/i;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public final a([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/i;->a([BIIZ)Z

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final c([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->c([BII)I

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    return-void
.end method

.method public d()J
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/q;->a:Lcom/google/android/exoplayer2/extractor/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    return-void
.end method
