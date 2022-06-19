.class final Lcom/google/android/exoplayer2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c;Landroid/os/Handler;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/google/android/exoplayer2/c$a;->a:Lcom/google/android/exoplayer2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/google/android/exoplayer2/c$a;->b:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(I)V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/c$a;->a:Lcom/google/android/exoplayer2/c;

    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown focus change type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1359
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c;->a(I)V

    .line 1360
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c;->b(I)V

    return-void

    .line 1363
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/c;->b(I)V

    .line 1364
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c;->a()V

    return-void

    :cond_2
    if-eq p1, v2, :cond_4

    .line 1368
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 1372
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c;->a(I)V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 1369
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c;->b(I)V

    const/4 p1, 0x2

    .line 1370
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c;->a(I)V

    return-void
.end method

.method public static synthetic lambda$P9noghjh4KDiLtwbQDVQOfcn3DA(Lcom/google/android/exoplayer2/c$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c$a;->a(I)V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/c$a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$c$a$P9noghjh4KDiLtwbQDVQOfcn3DA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$c$a$P9noghjh4KDiLtwbQDVQOfcn3DA;-><init>(Lcom/google/android/exoplayer2/c$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
