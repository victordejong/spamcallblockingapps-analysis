.class public final Lcom/google/android/gms/common/api/internal/t;
.super Lcom/google/android/gms/common/api/internal/g1;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field private final i:Lb/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/b<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/common/api/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/g1;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/b;)V

    .line 2
    new-instance p1, Lb/e/b;

    invoke-direct {p1}, Lb/e/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/t;->i:Lb/e/b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/t;->j:Lcom/google/android/gms/common/api/internal/f;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d:Lcom/google/android/gms/common/api/internal/h;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/h;->b(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static t(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/b;)V
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
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/h;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/t;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/h;->d(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/t;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/b;->m()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/b;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    .line 4
    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/t;->i:Lb/e/b;

    .line 5
    invoke-virtual {p0, p2}, Lb/e/b;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/f;->q(Lcom/google/android/gms/common/api/internal/t;)V

    return-void
.end method

.method private final v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->i:Lb/e/b;

    .line 1
    invoke-virtual {v0}, Lb/e/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->j:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->q(Lcom/google/android/gms/common/api/internal/t;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/t;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/g1;->j()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/t;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/g1;->k()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->j:Lcom/google/android/gms/common/api/internal/f;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/f;->r(Lcom/google/android/gms/common/api/internal/t;)V

    return-void
.end method

.method protected final o(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->j:Lcom/google/android/gms/common/api/internal/f;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->y(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->j:Lcom/google/android/gms/common/api/internal/f;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->t()V

    return-void
.end method

.method final u()Lb/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/b<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->i:Lb/e/b;

    return-object v0
.end method
