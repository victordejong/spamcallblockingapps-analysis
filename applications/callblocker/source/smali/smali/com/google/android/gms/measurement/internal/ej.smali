.class Lcom/google/android/gms/measurement/internal/ej;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/jo;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/android/gms/measurement/internal/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/ej;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ej;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ej;->c:Z

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ej;->d:Z

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ej;->d:Z

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ej;->c:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ej;->c:Z

    .line 46
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 51
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ej;->c:Z

    .line 52
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ej;->d:Z

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v0

    .line 56
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/ej;->d:Z

    if-eq v1, v0, :cond_0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ej;->d:Z

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/em;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/em;-><init>(Lcom/google/android/gms/measurement/internal/ej;Z)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ej;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
