.class public final Lcom/google/android/gms/common/api/internal/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/base/i;->a()Lcom/google/android/gms/internal/base/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/a/b;

    const-string v2, "GAC_Transform"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/a/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/base/f;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/ax;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/ax;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
