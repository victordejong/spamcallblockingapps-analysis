.class public final Lcom/google/android/gms/common/api/internal/w;
.super Lcom/google/android/gms/common/api/internal/bv;
.source "SourceFile"


# instance fields
.field final b:Landroidx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/b<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/bv;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/b;)V

    .line 2
    new-instance p1, Landroidx/b/b;

    invoke-direct {p1}, Landroidx/b/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->b:Landroidx/b/b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/w;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->a:Lcom/google/android/gms/common/api/internal/h;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/h;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/f;",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/g;

    .line 1001
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/g;-><init>(Landroid/app/Activity;)V

    .line 1003
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/g;->a:Ljava/lang/Object;

    .line 2001
    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    .line 1004
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/g;->a:Ljava/lang/Object;

    .line 3001
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 1004
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/cd;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/google/android/gms/common/api/internal/cd;

    move-result-object p0

    goto :goto_0

    .line 1005
    :cond_0
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/g;->a:Ljava/lang/Object;

    .line 4001
    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_2

    .line 5000
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/g;->a:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    .line 1006
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zzb;->a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzb;

    move-result-object p0

    .line 1
    :goto_0
    const-class v0, Lcom/google/android/gms/common/api/internal/w;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/h;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/w;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/internal/w;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/w;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/b;)V

    :cond_1
    const-string p0, "ApiKey cannot be null"

    .line 4
    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/w;->b:Landroidx/b/b;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/w;)V

    return-void

    .line 1005
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get fragment for unexpected activity."

    .line 1007
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Landroidx/b/b;

    .line 1
    invoke-virtual {v0}, Landroidx/b/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/api/internal/w;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/bv;->b()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/w;->f()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/bv;->c()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/w;->f()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/bv;->d()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    sget-object v1, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    .line 5001
    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f;->f:Ljava/util/Set;

    .line 5002
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5003
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->f:Lcom/google/android/gms/common/api/internal/f;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()V

    return-void
.end method
