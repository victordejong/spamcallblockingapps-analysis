.class final synthetic Lcom/google/android/gms/internal/ads/ble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jh;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/jh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ble;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ble;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ble;->a:Lcom/google/android/gms/internal/ads/jh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/qc;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
