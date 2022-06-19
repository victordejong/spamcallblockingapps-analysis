.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/t;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/t;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->G6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
