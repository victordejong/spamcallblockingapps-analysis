.class final Lcom/google/android/exoplayer2/source/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/aa;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/aa;J)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    .line 424
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/u$b;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/u$b;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/aa;->a(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 6

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/aa;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    const-wide/16 v0, 0x0

    .line 446
    iget-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/u$b;->b:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    :cond_0
    return p1
.end method

.method public final a()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/u$b;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->b()V

    return-void
.end method
