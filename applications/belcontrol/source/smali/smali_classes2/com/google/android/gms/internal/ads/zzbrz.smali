.class public final synthetic Lcom/google/android/gms/internal/ads/zzbrz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# static fields
.field public static final zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbrz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbrz;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsa;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhme:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsa;->zzk(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method
