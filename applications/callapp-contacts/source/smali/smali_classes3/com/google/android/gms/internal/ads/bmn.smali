.class final synthetic Lcom/google/android/gms/internal/ads/bmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;

.field private final b:Lcom/google/android/gms/internal/ads/zp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmn;->b:Lcom/google/android/gms/internal/ads/zp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmn;->b:Lcom/google/android/gms/internal/ads/zp;

    .line 1164
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/bmq;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/bmq;-><init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/zp;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
