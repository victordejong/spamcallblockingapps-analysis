.class public final synthetic Lcom/google/android/gms/internal/ads/zzbsr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# static fields
.field public static final zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsr;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrm;->onAdOpened()V

    return-void
.end method
