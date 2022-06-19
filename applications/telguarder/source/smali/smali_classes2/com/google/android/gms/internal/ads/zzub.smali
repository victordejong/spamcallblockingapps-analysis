.class final synthetic Lcom/google/android/gms/internal/ads/zzub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazm;


# static fields
.field static final zzbyi:Lcom/google/android/gms/internal/ads/zzazm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzub;->zzbyi:Lcom/google/android/gms/internal/ads/zzazm;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzha;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object p1

    return-object p1
.end method
