.class final Lcom/google/android/exoplayer2/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/PowerManager;

.field b:Landroid/os/PowerManager$WakeLock;

.field c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/am;->a:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/am;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/am;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/am;->d:Z

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/am;->d:Z

    .line 83
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/am;->a()V

    return-void
.end method
