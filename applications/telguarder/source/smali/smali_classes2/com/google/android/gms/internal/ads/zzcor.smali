.class final synthetic Lcom/google/android/gms/internal/ads/zzcor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamd;


# static fields
.field static final zzdku:Lcom/google/android/gms/internal/ads/zzamd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcor;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcor;->zzdku:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzatw;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
