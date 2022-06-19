.class final synthetic Lcom/google/android/gms/internal/ads/bpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bpa;

.field private final b:Lcom/google/android/gms/internal/ads/bcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bpa;Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpb;->a:Lcom/google/android/gms/internal/ads/bpa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpb;->b:Lcom/google/android/gms/internal/ads/bcy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpb;->a:Lcom/google/android/gms/internal/ads/bpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpb;->b:Lcom/google/android/gms/internal/ads/bcy;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bpa;->a(Lcom/google/android/gms/internal/ads/bcy;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
