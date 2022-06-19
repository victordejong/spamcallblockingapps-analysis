.class final synthetic Lcom/google/android/gms/internal/ads/zw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zw0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zw0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zw0;->a:Lcom/google/android/gms/internal/ads/ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/mj;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
