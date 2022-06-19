.class final synthetic Lcom/google/android/gms/internal/ads/a4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/o9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/a4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/a4;->a:Lcom/google/android/gms/internal/ads/o9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafr;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(I)V

    const/16 v1, 0x3eb

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/h6;->A0(Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method
