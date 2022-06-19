.class final Lcom/google/android/exoplayer2/extractor/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/i/c$a;->a:I

    .line 165
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/i/c$a;->b:J

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/i/c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 178
    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 179
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p0

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->i()J

    move-result-wide v0

    .line 184
    new-instance p1, Lcom/google/android/exoplayer2/extractor/i/c$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/i/c$a;-><init>(IJ)V

    return-object p1
.end method
