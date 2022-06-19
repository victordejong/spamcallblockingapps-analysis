.class public final Lcom/google/android/gms/internal/ads/zzcoz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzgpw:Lcom/google/android/gms/internal/ads/zzamc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "Lcom/google/android/gms/internal/ads/zzcoz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzgpt:Lcom/google/android/gms/internal/ads/zzcpg;

.field public final zzgpu:Lorg/json/JSONObject;

.field public final zzgpv:Lcom/google/android/gms/internal/ads/zzatw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcoz;->zzgpw:Lcom/google/android/gms/internal/ads/zzamc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpg;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzgpt:Lcom/google/android/gms/internal/ads/zzcpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzgpu:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzgpv:Lcom/google/android/gms/internal/ads/zzatw;

    return-void
.end method
