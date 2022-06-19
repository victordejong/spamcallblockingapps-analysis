.class final Lcom/google/android/exoplayer2/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/net/wifi/WifiManager;

.field b:Landroid/net/wifi/WifiManager$WifiLock;

.field c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/an;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/an;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/an;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/an;->d:Z

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/an;->d:Z

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/an;->a()V

    return-void
.end method
