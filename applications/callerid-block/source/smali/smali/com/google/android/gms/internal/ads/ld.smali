.class final Lcom/google/android/gms/internal/ads/ld;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/fp;

.field final synthetic b:Lcom/google/android/gms/internal/ads/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/fp;Lcom/google/android/gms/internal/ads/pc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ld;->a:Lcom/google/android/gms/internal/ads/fp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ld;->b:Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ld;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaot;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ld;->b:Lcom/google/android/gms/internal/ads/pc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pc;->f()V

    return-void
.end method
