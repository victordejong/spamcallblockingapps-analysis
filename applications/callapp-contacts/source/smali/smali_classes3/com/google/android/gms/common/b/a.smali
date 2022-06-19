.class public final Lcom/google/android/gms/common/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/b/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/b/a$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/common/b/a$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/gms/common/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/b/b;

    invoke-direct {v1}, Lcom/google/android/gms/common/b/b;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
