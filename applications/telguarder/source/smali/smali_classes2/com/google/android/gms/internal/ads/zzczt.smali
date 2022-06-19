.class final synthetic Lcom/google/android/gms/internal/ads/zzczt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# static fields
.field static final zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzczt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczt;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzczo;->zzp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
