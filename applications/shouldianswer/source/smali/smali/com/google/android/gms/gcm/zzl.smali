.class public final Lcom/google/android/gms/gcm/zzl;
.super Ljava/lang/Object;


# static fields
.field public static final zzaq:Lcom/google/android/gms/gcm/zzl;

.field private static final zzar:Lcom/google/android/gms/gcm/zzl;


# instance fields
.field private final zzas:I

.field private final zzat:I

.field private final zzau:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lcom/google/android/gms/gcm/zzl;

    const/16 v1, 0xe10

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/gcm/zzl;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzl;->zzaq:Lcom/google/android/gms/gcm/zzl;

    .line 27
    new-instance v0, Lcom/google/android/gms/gcm/zzl;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/gcm/zzl;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzl;->zzar:Lcom/google/android/gms/gcm/zzl;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    const/16 p1, 0x1e

    .line 3
    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    const/16 p1, 0xe10

    .line 4
    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/gcm/zzl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/gcm/zzl;

    .line 19
    iget v1, p1, Lcom/google/android/gms/gcm/zzl;->zzas:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/google/android/gms/gcm/zzl;->zzat:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/gcm/zzl;->zzau:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 20
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 22
    iget v2, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 13
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    iget v2, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " initial_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maximum_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    const-string v1, "retry_policy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    const-string v1, "initial_backoff_seconds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    const-string v1, "maximum_backoff_seconds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public final zzi()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    return v0
.end method

.method public final zzj()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzat:I

    return v0
.end method

.method public final zzk()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzau:I

    return v0
.end method
