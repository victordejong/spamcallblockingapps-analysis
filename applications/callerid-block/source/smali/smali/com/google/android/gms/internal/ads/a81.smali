.class final synthetic Lcom/google/android/gms/internal/ads/a81;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/b81;

.field private final c:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b81;Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a81;->b:Lcom/google/android/gms/internal/ads/b81;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a81;->c:Lcom/google/android/gms/internal/ads/zzym;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a81;->b:Lcom/google/android/gms/internal/ads/b81;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a81;->c:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c81;->e(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/s71;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s71;->e()Lcom/google/android/gms/internal/ads/v70;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/v70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
