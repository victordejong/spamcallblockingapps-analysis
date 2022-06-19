.class final Lcom/google/android/exoplayer2/text/a/c$b;
.super Lcom/google/android/exoplayer2/text/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/google/android/exoplayer2/decoder/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/text/a/c$b;",
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
            "Lcom/google/android/exoplayer2/text/a/c$b;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/i;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/c$b;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/c$b;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
