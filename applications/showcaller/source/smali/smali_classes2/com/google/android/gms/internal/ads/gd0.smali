.class final synthetic Lcom/google/android/gms/internal/ads/gd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hd0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gd0;->a:Lcom/google/android/gms/internal/ads/hd0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gd0;->a:Lcom/google/android/gms/internal/ads/hd0;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hd0;->c(Lorg/json/JSONObject;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
