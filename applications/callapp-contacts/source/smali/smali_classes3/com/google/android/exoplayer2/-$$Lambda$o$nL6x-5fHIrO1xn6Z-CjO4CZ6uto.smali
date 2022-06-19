.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/o;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/ad;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;->f$0:Lcom/google/android/exoplayer2/o;

    iput-object p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;->f$1:Lcom/google/android/exoplayer2/ad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;->f$0:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;->f$1:Lcom/google/android/exoplayer2/ad;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/o;->lambda$nL6x-5fHIrO1xn6Z-CjO4CZ6uto(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/ad;)V

    return-void
.end method
