.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkb;


# static fields
.field public static final zzepd:Lcom/google/android/gms/internal/ads/zzkb;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcp;->zzepd:Lcom/google/android/gms/internal/ads/zzkb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgr()[Lcom/google/android/gms/internal/ads/zzka;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzka;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzlo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzkq;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzlh;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
