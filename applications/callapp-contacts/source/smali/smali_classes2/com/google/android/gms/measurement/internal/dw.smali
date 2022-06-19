.class final Lcom/google/android/gms/measurement/internal/dw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "com.google.android.gms.measurement.internal.dw"


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/jo;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/dw;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/dw;->d:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->c:Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Unregistering connectivity change receiver"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/dw;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to unregister the network broadcast receiver"

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 1000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "NetworkBroadcastReceiver received action"

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/du;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/measurement/internal/dw;->d:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/dw;->d:Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/dv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/dv;-><init>(Lcom/google/android/gms/measurement/internal/dw;Z)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/dw;->b:Lcom/google/android/gms/measurement/internal/jo;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 2000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
