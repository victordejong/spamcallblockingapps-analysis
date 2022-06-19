.class public final Lcom/google/android/gms/common/api/internal/bo;
.super Lcom/google/android/gms/common/api/internal/ap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/ap;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/s<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/i<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/internal/s<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/i<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ap;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bo;->a:Lcom/google/android/gms/common/api/internal/s;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/bo;->d:Lcom/google/android/gms/common/api/internal/q;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 1000
    iget-boolean p1, p2, Lcom/google/android/gms/common/api/internal/s;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bo;->d:Lcom/google/android/gms/common/api/internal/q;

    .line 1
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/q;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/v;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/v;->b:Ljava/util/Map;

    .line 2001
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object p2, v0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 2002
    new-instance v1, Lcom/google/android/gms/common/api/internal/ca;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/api/internal/ca;-><init>(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/tasks/i;)V

    .line 2003
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/af;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bo;->a:Lcom/google/android/gms/common/api/internal/s;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/s;->a:[Lcom/google/android/gms/common/Feature;

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/af;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bo;->a:Lcom/google/android/gms/common/api/internal/s;

    .line 5000
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/s;->b:Z

    return p1
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->a:Lcom/google/android/gms/common/api/internal/s;

    .line 2000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/s;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bo;->b:Lcom/google/android/gms/tasks/i;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/bq;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/bo;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 4
    throw p1
.end method
