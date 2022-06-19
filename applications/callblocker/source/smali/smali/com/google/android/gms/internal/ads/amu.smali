.class final synthetic Lcom/google/android/gms/internal/ads/amu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/amt;

.field private final b:Lcom/google/android/gms/internal/ads/crh;

.field private final c:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amt;Lcom/google/android/gms/internal/ads/crh;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amu;->a:Lcom/google/android/gms/internal/ads/amt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amu;->b:Lcom/google/android/gms/internal/ads/crh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/amu;->c:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amu;->a:Lcom/google/android/gms/internal/ads/amt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/amu;->b:Lcom/google/android/gms/internal/ads/crh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/amu;->c:Lcom/google/android/gms/internal/ads/crt;

    check-cast p1, Lcom/google/android/gms/internal/ads/amh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/amt;->a(Lcom/google/android/gms/internal/ads/crh;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/amh;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
