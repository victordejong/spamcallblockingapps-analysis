.class public final Lcom/google/android/gms/internal/ads/blr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/google/android/gms/internal/ads/qc;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qc;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blr;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/blr;->b:Lcom/google/android/gms/internal/ads/qc;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/blr;)Lcom/google/android/gms/internal/ads/qc;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blr;->b:Lcom/google/android/gms/internal/ads/qc;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/blr;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blr;->a:Lorg/json/JSONObject;

    return-object v0
.end method
