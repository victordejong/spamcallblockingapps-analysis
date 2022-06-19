.class public final synthetic Lcom/google/android/gms/internal/ads/zzark;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazm;


# static fields
.field public static final zzbyi:Lcom/google/android/gms/internal/ads/zzazm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzark;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzark;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzark;->zzbyi:Lcom/google/android/gms/internal/ads/zzazm;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzav(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzdst;

    move-result-object p1

    return-object p1
.end method
