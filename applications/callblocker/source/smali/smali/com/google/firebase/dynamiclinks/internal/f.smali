.class public final Lcom/google/firebase/dynamiclinks/internal/f;
.super Lcom/google/firebase/dynamiclinks/a;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/analytics/connector/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/c;Lcom/google/firebase/analytics/connector/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;",
            "Lcom/google/firebase/analytics/connector/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/a;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/f;->a:Lcom/google/android/gms/common/api/c;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/f;->b:Lcom/google/firebase/analytics/connector/a;

    .line 6
    if-nez p2, :cond_0

    .line 7
    const-string/jumbo v0, "FDL"

    const-string/jumbo v1, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/analytics/connector/a;)V
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/d;

    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/dynamiclinks/internal/d;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/f;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/firebase/analytics/connector/a;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/firebase/dynamiclinks/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/f;->a:Lcom/google/android/gms/common/api/c;

    new-instance v1, Lcom/google/firebase/dynamiclinks/internal/k;

    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/f;->b:Lcom/google/firebase/analytics/connector/a;

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/dynamiclinks/internal/k;-><init>(Lcom/google/firebase/analytics/connector/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/internal/p;)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    .line 12
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA"

    sget-object v2, Lcom/google/firebase/dynamiclinks/internal/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/c;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/dynamiclinks/internal/a;

    .line 14
    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/firebase/dynamiclinks/b;

    invoke-direct {v2, v0}, Lcom/google/firebase/dynamiclinks/b;-><init>(Lcom/google/firebase/dynamiclinks/internal/a;)V

    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 18
    :goto_1
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
