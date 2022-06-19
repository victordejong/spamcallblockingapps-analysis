.class public final Lcom/google/android/gms/internal/ads/zzdvy;
.super Lcom/google/android/gms/internal/ads/zzdvv;
.source ""


# static fields
.field public static final zzhvt:Lcom/google/android/gms/internal/ads/zzdvy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdvy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvy;->zzhvt:Lcom/google/android/gms/internal/ads/zzdvy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdvv;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzb(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zzc(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
