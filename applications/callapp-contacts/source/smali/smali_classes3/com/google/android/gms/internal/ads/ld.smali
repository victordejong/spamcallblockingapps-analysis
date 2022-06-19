.class final synthetic Lcom/google/android/gms/internal/ads/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/la;

.field private final b:Lcom/google/android/gms/internal/ads/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/la;Lcom/google/android/gms/internal/ads/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ld;->a:Lcom/google/android/gms/internal/ads/la;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ld;->b:Lcom/google/android/gms/internal/ads/ju;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ld;->a:Lcom/google/android/gms/internal/ads/la;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ld;->b:Lcom/google/android/gms/internal/ads/ju;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/la;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 1033
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kz;->a:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ju;->a()V

    return-void
.end method
