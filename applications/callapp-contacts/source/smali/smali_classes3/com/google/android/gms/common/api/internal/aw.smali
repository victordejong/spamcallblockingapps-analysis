.class public final Lcom/google/android/gms/common/api/internal/aw;
.super Lcom/google/android/gms/common/api/internal/u;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/gms/common/api/internal/o$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o$a;Lcom/google/android/gms/common/api/internal/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aw;->b:Lcom/google/android/gms/common/api/internal/o$a;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/i$a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b;",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aw;->b:Lcom/google/android/gms/common/api/internal/o$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/o$a;->b:Lcom/google/android/gms/common/api/internal/p;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
