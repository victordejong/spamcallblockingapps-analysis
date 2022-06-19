.class public Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzdzh:Ljava/lang/String;

.field private final zzdzi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->zza(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->zzdzh:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->zzb(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->zzdzi:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;Lcom/google/android/gms/ads/rewarded/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->zzdzi:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->zzdzh:Ljava/lang/String;

    return-object v0
.end method
