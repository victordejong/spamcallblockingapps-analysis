.class final Lcom/google/android/exoplayer2/b$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/b;

.field private final b:Lcom/google/android/exoplayer2/b$b;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/b;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/b$a;->a:Lcom/google/android/exoplayer2/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/b$a;->c:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/b$a;->b:Lcom/google/android/exoplayer2/b$b;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/b$a;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/b$a;->a:Lcom/google/android/exoplayer2/b;

    .line 1025
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b;->a:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/b$a;->b:Lcom/google/android/exoplayer2/b$b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/b$b;->a()V

    :cond_0
    return-void
.end method
