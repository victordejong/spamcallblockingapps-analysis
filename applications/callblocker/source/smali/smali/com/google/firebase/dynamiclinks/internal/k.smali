.class final Lcom/google/firebase/dynamiclinks/internal/k;
.super Lcom/google/android/gms/common/api/internal/p;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/p",
        "<",
        "Lcom/google/firebase/dynamiclinks/internal/e;",
        "Lcom/google/firebase/dynamiclinks/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/analytics/connector/a;


# direct methods
.method constructor <init>(Lcom/google/firebase/analytics/connector/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/p;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/k;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/k;->b:Lcom/google/firebase/analytics/connector/a;

    .line 4
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/h;)V
    .locals 3

    .prologue
    .line 5
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/e;

    .line 6
    new-instance v1, Lcom/google/firebase/dynamiclinks/internal/i;

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/k;->b:Lcom/google/firebase/analytics/connector/a;

    invoke-direct {v1, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/i;-><init>(Lcom/google/firebase/analytics/connector/a;Lcom/google/android/gms/tasks/h;)V

    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/k;->a:Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/e;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/l;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/internal/l;->a(Lcom/google/firebase/dynamiclinks/internal/j;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
