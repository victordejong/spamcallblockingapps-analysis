.class public final Lcom/google/android/gms/common/api/internal/av;
.super Lcom/google/android/gms/common/api/internal/n;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/api/internal/o$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o$a;Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/av;->e:Lcom/google/android/gms/common/api/internal/o$a;

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/Feature;ZI)V

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->e:Lcom/google/android/gms/common/api/internal/o$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/o$a;->a:Lcom/google/android/gms/common/api/internal/p;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
