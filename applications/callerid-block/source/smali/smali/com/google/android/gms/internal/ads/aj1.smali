.class final synthetic Lcom/google/android/gms/internal/ads/aj1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dj1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj1;->b:Lcom/google/android/gms/internal/ads/dj1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj1;->b:Lcom/google/android/gms/internal/ads/dj1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ej1;->f(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dk1;->s()V

    return-void
.end method
