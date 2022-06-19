.class public final Lcom/google/android/gms/internal/ads/zzdgg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdgh;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzhed:Lcom/google/android/gms/internal/ads/zzatx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgg;->zzhed:Lcom/google/android/gms/internal/ads/zzatx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgg;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgg;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgg;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    return-void
.end method


# virtual methods
.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdgh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgg;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdgj;-><init>(Lcom/google/android/gms/internal/ads/zzdgg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzatt()Lcom/google/android/gms/internal/ads/zzdgh;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgg;->zzhed:Lcom/google/android/gms/internal/ads/zzatx;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgg;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgg;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgh;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
