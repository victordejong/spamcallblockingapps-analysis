.class public final Lcom/google/android/gms/internal/ads/dss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/dss;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/dsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dss;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    .line 6
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    .line 13
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    if-ne p0, p1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dss;

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/dss;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/dss;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/dss;->c:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dss;->d:[B

    .line 20
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 21
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->e:I

    if-nez v0, :cond_0

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/dss;->e:I

    .line 31
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "ColorInfo("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/ads/dss;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
