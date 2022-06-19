.class public Lcom/google/android/gms/common/b/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/b/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/b/a$a;


# direct methods
.method public static declared-synchronized a()Lcom/google/android/gms/common/b/a$a;
    .locals 2

    .prologue
    .line 1
    const-class v1, Lcom/google/android/gms/common/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/common/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/b/b;-><init>()V

    .line 3
    sput-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
