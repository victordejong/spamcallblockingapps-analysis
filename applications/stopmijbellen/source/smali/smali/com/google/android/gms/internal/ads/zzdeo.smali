.class public final synthetic Lcom/google/android/gms/internal/ads/zzdeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdka;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdeo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdeo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdeo;->zza:Lcom/google/android/gms/internal/ads/zzdeo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbes;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbes;->onAdClicked()V

    return-void
.end method
