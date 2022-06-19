.class final Lcom/google/android/gms/common/api/internal/be;
.super Lcom/google/android/gms/common/api/internal/s;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/common/api/internal/s$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/s$a;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/be;->d:Lcom/google/android/gms/common/api/internal/s$a;

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/s;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/be;->d:Lcom/google/android/gms/common/api/internal/s$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s$a;->a:Lcom/google/android/gms/common/api/internal/p;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
