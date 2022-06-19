.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/k;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/i$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/i$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;->f$0:Lcom/google/android/exoplayer2/drm/k;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;->f$1:Lcom/google/android/exoplayer2/drm/i$c;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;->f$0:Lcom/google/android/exoplayer2/drm/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;->f$1:Lcom/google/android/exoplayer2/drm/i$c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/k;->lambda$Gx_4WBid3YFD_Cq6KlZN7diuSvk(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/i$c;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method
