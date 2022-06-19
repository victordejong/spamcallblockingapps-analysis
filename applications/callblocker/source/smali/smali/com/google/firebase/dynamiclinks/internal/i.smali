.class final Lcom/google/firebase/dynamiclinks/internal/i;
.super Lcom/google/firebase/dynamiclinks/internal/h;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Lcom/google/firebase/dynamiclinks/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/analytics/connector/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/connector/a;Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/connector/a;",
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Lcom/google/firebase/dynamiclinks/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/internal/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/i;->b:Lcom/google/firebase/analytics/connector/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/i;->a:Lcom/google/android/gms/tasks/h;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/a;)V
    .locals 6

    .prologue
    .line 5
    .line 6
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/i;->a:Lcom/google/android/gms/tasks/h;

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/q;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/h;)V

    .line 8
    if-nez p2, :cond_2

    .line 19
    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/google/firebase/dynamiclinks/b;

    invoke-direct {v0, p2}, Lcom/google/firebase/dynamiclinks/b;-><init>(Lcom/google/firebase/dynamiclinks/internal/a;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/google/firebase/dynamiclinks/internal/a;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "scionData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/i;->b:Lcom/google/firebase/analytics/connector/a;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/google/firebase/dynamiclinks/internal/i;->b:Lcom/google/firebase/analytics/connector/a;

    const-string/jumbo v5, "fdl"

    invoke-interface {v4, v5, v0, v3}, Lcom/google/firebase/analytics/connector/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method
