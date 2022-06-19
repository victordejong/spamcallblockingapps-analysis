.class public final Lcom/google/android/gms/internal/ads/cah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bcy;

.field final b:Lcom/google/android/gms/internal/ads/bza;

.field final c:Lcom/google/android/gms/internal/ads/arp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cah;->a:Lcom/google/android/gms/internal/ads/bcy;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/bza;-><init>(Lcom/google/android/gms/internal/ads/cty;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cah;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 1005
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bcy;->e:Lcom/google/android/gms/internal/ads/jf;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/cag;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/cag;-><init>(Lcom/google/android/gms/internal/ads/bza;Lcom/google/android/gms/internal/ads/jf;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cah;->c:Lcom/google/android/gms/internal/ads/arp;

    return-void
.end method
