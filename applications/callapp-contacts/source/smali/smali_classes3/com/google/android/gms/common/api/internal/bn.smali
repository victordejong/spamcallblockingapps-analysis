.class public final Lcom/google/android/gms/common/api/internal/bn;
.super Lcom/google/android/gms/common/api/internal/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/bl<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/common/api/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/as;Lcom/google/android/gms/tasks/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/as;",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/bl;-><init>(ILcom/google/android/gms/tasks/i;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/v;Z)V
    .locals 0

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

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/n;->b:[Lcom/google/android/gms/common/Feature;

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

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 5000
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/n;->c:Z

    return p1
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/af;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bn;->a:Lcom/google/android/gms/tasks/i;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/n;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    if-eqz v0, :cond_0

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/af;->d:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bn;->b:Lcom/google/android/gms/common/api/internal/as;

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
