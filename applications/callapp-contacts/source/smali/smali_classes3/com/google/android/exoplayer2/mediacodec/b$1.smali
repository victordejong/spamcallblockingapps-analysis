.class final Lcom/google/android/exoplayer2/mediacodec/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/mediacodec/b;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/mediacodec/b;Landroid/os/Looper;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/b$1;->a:Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b$1;->a:Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Lcom/google/android/exoplayer2/mediacodec/b;Landroid/os/Message;)V

    return-void
.end method
