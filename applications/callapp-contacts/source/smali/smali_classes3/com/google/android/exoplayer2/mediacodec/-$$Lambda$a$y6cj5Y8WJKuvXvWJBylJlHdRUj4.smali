.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/mediacodec/a;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/mediacodec/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;->f$0:Lcom/google/android/exoplayer2/mediacodec/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;->f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;->f$0:Lcom/google/android/exoplayer2/mediacodec/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;->f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/a;->lambda$y6cj5Y8WJKuvXvWJBylJlHdRUj4(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
