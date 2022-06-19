.class final synthetic Lcom/google/android/gms/internal/ads/z71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/b81;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z71;->b:Lcom/google/android/gms/internal/ads/b81;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z71;->b:Lcom/google/android/gms/internal/ads/b81;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/c81;->e(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/s71;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s71;->d()Lcom/google/android/gms/internal/ads/f90;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/f90;->s()V

    return-void
.end method
