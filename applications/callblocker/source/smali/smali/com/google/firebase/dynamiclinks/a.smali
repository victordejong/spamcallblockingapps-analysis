.class public abstract Lcom/google/firebase/dynamiclinks/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/firebase/dynamiclinks/a;
    .locals 2

    .prologue
    .line 2
    const-class v1, Lcom/google/firebase/dynamiclinks/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/dynamiclinks/a;->a(Lcom/google/firebase/b;)Lcom/google/firebase/dynamiclinks/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/google/firebase/b;)Lcom/google/firebase/dynamiclinks/a;
    .locals 2

    .prologue
    .line 3
    const-class v1, Lcom/google/firebase/dynamiclinks/a;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/google/firebase/dynamiclinks/a;

    invoke-virtual {p0, v0}, Lcom/google/firebase/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/dynamiclinks/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
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
.end method
