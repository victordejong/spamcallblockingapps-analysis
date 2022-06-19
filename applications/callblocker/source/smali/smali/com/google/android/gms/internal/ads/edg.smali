.class final synthetic Lcom/google/android/gms/internal/ads/edg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cov;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ede;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ede;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edg;->a:Lcom/google/android/gms/internal/ads/ede;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edg;->a:Lcom/google/android/gms/internal/ads/ede;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ede;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
