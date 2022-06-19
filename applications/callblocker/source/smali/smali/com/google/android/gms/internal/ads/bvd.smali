.class public final Lcom/google/android/gms/internal/ads/bvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bvb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvd;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bvb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bvb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvd;->a:Lcom/google/android/gms/internal/ads/chh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bvb;-><init>(Lcom/google/android/gms/internal/ads/chh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
