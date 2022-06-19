.class public Lcom/google/android/gms/ads/mediation/MediationConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzeup:Landroid/os/Bundle;

.field private final zzeut:Lcom/google/android/gms/ads/AdFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeut:Lcom/google/android/gms/ads/AdFormat;

    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeup:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/gms/ads/AdFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeut:Lcom/google/android/gms/ads/AdFormat;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeup:Landroid/os/Bundle;

    return-object v0
.end method
