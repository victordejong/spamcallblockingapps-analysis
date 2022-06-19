.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/mediacodec/j;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/j;Lcom/google/android/exoplayer2/mediacodec/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;->f$0:Lcom/google/android/exoplayer2/mediacodec/j;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;->f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;->f$0:Lcom/google/android/exoplayer2/mediacodec/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;->f$1:Lcom/google/android/exoplayer2/mediacodec/f$b;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/j;->lambda$jiVH4GxxEL_IJCS_k-ncHqSFCZQ(Lcom/google/android/exoplayer2/mediacodec/j;Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
