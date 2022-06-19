.class public final Lcom/google/android/gms/internal/consent_sdk/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/bx;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/cb;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/bx;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/bz;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/bz;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/cb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
