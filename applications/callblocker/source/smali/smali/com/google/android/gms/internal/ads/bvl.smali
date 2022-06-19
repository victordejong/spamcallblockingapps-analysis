.class final synthetic Lcom/google/android/gms/internal/ads/bvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bvi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvl;->a:Lcom/google/android/gms/internal/ads/bvi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvl;->a:Lcom/google/android/gms/internal/ads/bvi;

    check-cast p1, Lcom/google/android/gms/internal/ads/cak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bvi;->a(Lcom/google/android/gms/internal/ads/cak;)Lcom/google/android/gms/internal/ads/bvj;

    move-result-object v0

    return-object v0
.end method
