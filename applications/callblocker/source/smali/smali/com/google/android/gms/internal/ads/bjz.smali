.class final synthetic Lcom/google/android/gms/internal/ads/bjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bjy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjz;->a:Lcom/google/android/gms/internal/ads/bjy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjz;->a:Lcom/google/android/gms/internal/ads/bjy;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bjy;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
