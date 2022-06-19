.class public final Lcom/google/android/gms/common/api/internal/bp;
.super Lcom/google/android/gms/common/api/internal/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/bl<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/common/api/internal/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/tasks/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "*>;",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/bl;-><init>(ILcom/google/android/gms/tasks/i;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Lcom/google/android/gms/common/api/internal/i$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/v;Z)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/af;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/af;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/as;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/n;->b:[Lcom/google/android/gms/common/Feature;

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/af;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;)Z"
        }
    .end annotation

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/af;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/as;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 6000
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/n;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/af;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bp;->b:Lcom/google/android/gms/common/api/internal/i$a;

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/as;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/as;->b:Lcom/google/android/gms/common/api/internal/u;

    .line 2000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bp;->a:Lcom/google/android/gms/tasks/i;

    .line 2
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/u;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/as;->a:Lcom/google/android/gms/common/api/internal/n;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 2001
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->a()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bp;->a:Lcom/google/android/gms/tasks/i;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Object;)Z

    return-void
.end method
