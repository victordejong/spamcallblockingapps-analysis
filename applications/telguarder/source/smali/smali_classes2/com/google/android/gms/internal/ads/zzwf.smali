.class final synthetic Lcom/google/android/gms/internal/ads/zzwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazm;


# static fields
.field static final zzbyi:Lcom/google/android/gms/internal/ads/zzazm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwf;->zzbyi:Lcom/google/android/gms/internal/ads/zzazm;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzat(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzayd;

    move-result-object p1

    return-object p1
.end method
