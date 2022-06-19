.class final Lcom/google/android/exoplayer2/text/d;
.super Lcom/google/android/exoplayer2/text/i;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/exoplayer2/decoder/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/text/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/text/i;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/i;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/d;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/d;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
