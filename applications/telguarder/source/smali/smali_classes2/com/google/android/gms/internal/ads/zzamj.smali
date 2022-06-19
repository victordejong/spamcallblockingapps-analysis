.class public final Lcom/google/android/gms/internal/ads/zzamj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final zzdkv:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/zzakm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkw:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/zzakm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdkx:Lcom/google/android/gms/internal/ads/zzakz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzami;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzami;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamj;->zzdkv:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaml;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamj;->zzdkw:Lcom/google/android/gms/ads/internal/util/zzar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzakz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzamj;->zzdkv:Lcom/google/android/gms/ads/internal/util/zzar;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamj;->zzdkw:Lcom/google/android/gms/ads/internal/util/zzar;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzakz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzar;Lcom/google/android/gms/ads/internal/util/zzar;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamc<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzamb<",
            "TI;TO;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(Lcom/google/android/gms/internal/ads/zzakz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)V

    return-object v0
.end method

.method public final zzur()Lcom/google/android/gms/internal/ads/zzamo;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamj;->zzdkx:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lcom/google/android/gms/internal/ads/zzakz;)V

    return-object v0
.end method
