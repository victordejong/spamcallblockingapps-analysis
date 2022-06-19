.class public final Lcom/google/android/gms/internal/ads/au1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/j60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/j60<",
            "Lcom/google/android/gms/internal/ads/au1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/eu1;

.field public final c:Lorg/json/JSONObject;

.field public final d:Lcom/google/android/gms/internal/ads/ad0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zt1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zt1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/au1;->a:Lcom/google/android/gms/internal/ads/j60;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/eu1;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ad0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/au1;->b:Lcom/google/android/gms/internal/ads/eu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/au1;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/au1;->d:Lcom/google/android/gms/internal/ads/ad0;

    return-void
.end method
