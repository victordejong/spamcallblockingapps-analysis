.class final synthetic Lcom/google/android/gms/internal/ads/bjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjh;->a:Lcom/google/android/gms/internal/ads/bji;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjh;->a:Lcom/google/android/gms/internal/ads/bji;

    .line 1065
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bji;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/bjj;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bjj;-><init>(Lcom/google/android/gms/internal/ads/bji;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
