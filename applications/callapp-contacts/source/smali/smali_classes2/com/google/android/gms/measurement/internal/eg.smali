.class public final Lcom/google/android/gms/measurement/internal/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/eh;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/eh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/eg;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/eg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/eg;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cu;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/du;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Install Referrer Service implementation was not found"

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 2000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Install Referrer Service connected"

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/ef;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/gms/measurement/internal/ef;-><init>(Lcom/google/android/gms/measurement/internal/eg;Lcom/google/android/gms/internal/measurement/du;Landroid/content/ServiceConnection;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 4000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 6
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Install Referrer connection returned with null binder"

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/eg;->a:Lcom/google/android/gms/measurement/internal/eh;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Install Referrer Service disconnected"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void
.end method
