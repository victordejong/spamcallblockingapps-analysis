.class public final Lcom/google/android/gms/internal/ads/xi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/xi;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/xi;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/xi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/xi;->b:Lcom/google/android/gms/internal/ads/xi;

    return-object v0
.end method
