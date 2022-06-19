.class final Lcom/google/android/gms/internal/ads/zzdvy;
.super Lcom/google/android/gms/internal/ads/zzdvv;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field static final zzhvt:Lcom/google/android/gms/internal/ads/zzdvy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdvy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvy;->zzhvt:Lcom/google/android/gms/internal/ads/zzdvy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdvv;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzb(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zzc(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
