.class public final Lcom/google/android/gms/ads/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eav;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/eav;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/o;->a:Lcom/google/android/gms/internal/ads/eav;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/eav;)Lcom/google/android/gms/ads/o;
    .locals 1

    .prologue
    .line 12
    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/o;-><init>(Lcom/google/android/gms/internal/ads/eav;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
