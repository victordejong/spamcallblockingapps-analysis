.class public Lcom/google/android/gms/common/j/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/j/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/j/a$a;


# direct methods
.method public static declared-synchronized a()Lcom/google/android/gms/common/j/a$a;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/common/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/j/a;->a:Lcom/google/android/gms/common/j/a$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/j/b;

    invoke-direct {v1}, Lcom/google/android/gms/common/j/b;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/j/a;->a:Lcom/google/android/gms/common/j/a$a;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/j/a;->a:Lcom/google/android/gms/common/j/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
