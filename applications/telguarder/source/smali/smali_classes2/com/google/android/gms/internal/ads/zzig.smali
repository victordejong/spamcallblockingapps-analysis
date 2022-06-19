.class public final Lcom/google/android/gms/internal/ads/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field private static final zzait:Lcom/google/android/gms/internal/ads/zzig;


# instance fields
.field private final zzaiu:[I

.field private final zzaiv:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzig;-><init>([II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzig;->zzait:Lcom/google/android/gms/internal/ads/zzig;

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiu:[I

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiv:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 10
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzig;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiu:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzig;->zzaiu:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiv:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzig;->zzaiv:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiv:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiu:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiv:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzaiu:[I

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
