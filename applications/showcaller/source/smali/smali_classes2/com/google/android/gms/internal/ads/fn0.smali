.class final synthetic Lcom/google/android/gms/internal/ads/fn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mn0;

.field private final b:Lcom/google/android/gms/internal/ads/y6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mn0;Lcom/google/android/gms/internal/ads/y6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fn0;->a:Lcom/google/android/gms/internal/ads/mn0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fn0;->b:Lcom/google/android/gms/internal/ads/y6;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/w7;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fn0;->a:Lcom/google/android/gms/internal/ads/mn0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fn0;->b:Lcom/google/android/gms/internal/ads/y6;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mn0;->i0(Lcom/google/android/gms/internal/ads/y6;)Lcom/google/android/gms/internal/ads/w7;

    move-result-object v0

    return-object v0
.end method
