.class public final Lcom/google/android/gms/tasks/c0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/google/android/gms/tasks/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tasks/e0;->a:Lcom/google/android/gms/tasks/d0;

    sput-object v0, Lcom/google/android/gms/tasks/c0;->a:Lcom/google/android/gms/tasks/d0;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tasks/c0;->a:Lcom/google/android/gms/tasks/d0;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tasks/d0;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static final synthetic b(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method
