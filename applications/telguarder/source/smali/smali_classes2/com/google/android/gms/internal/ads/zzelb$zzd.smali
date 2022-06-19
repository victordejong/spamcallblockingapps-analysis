.class public abstract Lcom/google/android/gms/internal/ads/zzelb$zzd;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzelb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzelb$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# instance fields
.field protected zziqr:Lcom/google/android/gms/internal/ads/zzeku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeku<",
            "Lcom/google/android/gms/internal/ads/zzelb$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeku;->zzbib()Lcom/google/android/gms/internal/ads/zzeku;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzd;->zziqr:Lcom/google/android/gms/internal/ads/zzeku;

    return-void
.end method


# virtual methods
.method final zzbix()Lcom/google/android/gms/internal/ads/zzeku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeku<",
            "Lcom/google/android/gms/internal/ads/zzelb$zzc;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzd;->zziqr:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeku;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzd;->zziqr:Lcom/google/android/gms/internal/ads/zzeku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeku;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzd;->zziqr:Lcom/google/android/gms/internal/ads/zzeku;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelb$zzd;->zziqr:Lcom/google/android/gms/internal/ads/zzeku;

    return-object v0
.end method
