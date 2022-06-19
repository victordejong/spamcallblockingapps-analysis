.class final Lcom/google/android/gms/internal/ads/lp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/jp;

.field final synthetic b:Lcom/google/android/gms/internal/ads/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mp;Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lp;->a:Lcom/google/android/gms/internal/ads/jp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lp;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hp;->zza()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp;->a:Lcom/google/android/gms/internal/ads/jp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jp;->a(Ljava/lang/Object;)V

    return-void
.end method
