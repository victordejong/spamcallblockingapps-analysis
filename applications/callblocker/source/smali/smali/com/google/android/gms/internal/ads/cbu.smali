.class final synthetic Lcom/google/android/gms/internal/ads/cbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbu;->a:Lcom/google/android/gms/internal/ads/cbr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbu;->a:Lcom/google/android/gms/internal/ads/cbr;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cbr;->a(Lorg/json/JSONObject;)V

    return-void
.end method
