.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/mediacodec/c;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;->f$0:Lcom/google/android/exoplayer2/mediacodec/c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;->f$0:Lcom/google/android/exoplayer2/mediacodec/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/c;->lambda$eMZGCvJlY14Mc9_ybAXmHvmGjjw(Lcom/google/android/exoplayer2/mediacodec/c;Ljava/lang/Runnable;)V

    return-void
.end method
