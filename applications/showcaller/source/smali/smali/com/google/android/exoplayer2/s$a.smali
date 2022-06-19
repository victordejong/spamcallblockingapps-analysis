.class Lcom/google/android/exoplayer2/s$a;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/exoplayer2/s;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/s;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/s$a;->b:Lcom/google/android/exoplayer2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/s$a;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s$a;->b:Lcom/google/android/exoplayer2/s;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/s;->e(Lcom/google/android/exoplayer2/s;I)V

    return-void
.end method


# virtual methods
.method public synthetic b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/s$a;->a(I)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/a;-><init>(Lcom/google/android/exoplayer2/s$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
