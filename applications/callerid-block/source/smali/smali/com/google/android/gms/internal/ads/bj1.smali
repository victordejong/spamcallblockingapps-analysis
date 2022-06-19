.class final synthetic Lcom/google/android/gms/internal/ads/bj1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dj1;

.field private final c:Lcom/google/android/gms/internal/ads/zzym;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dj1;Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bj1;->b:Lcom/google/android/gms/internal/ads/dj1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bj1;->c:Lcom/google/android/gms/internal/ads/zzym;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bj1;->b:Lcom/google/android/gms/internal/ads/dj1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bj1;->c:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ej1;->g(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/f71;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f71;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
