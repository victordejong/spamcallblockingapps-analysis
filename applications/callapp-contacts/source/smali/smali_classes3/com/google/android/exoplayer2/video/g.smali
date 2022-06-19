.class public final Lcom/google/android/exoplayer2/video/g;
.super Lcom/google/android/exoplayer2/decoder/f;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:[Ljava/nio/ByteBuffer;

.field public g:[I

.field public h:I

.field private final i:Lcom/google/android/exoplayer2/decoder/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/video/g;",
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
            "Lcom/google/android/exoplayer2/video/g;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/f;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/g;->i:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/g;->i:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
