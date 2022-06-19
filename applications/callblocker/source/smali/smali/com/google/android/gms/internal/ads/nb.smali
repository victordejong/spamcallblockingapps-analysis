.class public final Lcom/google/android/gms/internal/ads/nb;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/nb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/na;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/nb;->a:I

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/nb;->b:I

    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/nb;->c:I

    .line 10
    return-void
.end method

.method public static a(Lcom/google/android/gms/ads/mediation/x;)Lcom/google/android/gms/internal/ads/nb;
    .locals 4

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/nb;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/x;->a()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/x;->b()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/x;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/nb;-><init>(III)V

    .line 5
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/nb;

    if-eqz v1, :cond_0

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/nb;

    .line 23
    iget v1, p1, Lcom/google/android/gms/internal/ads/nb;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/ads/nb;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/ads/nb;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->c:I

    aput v2, v0, v1

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/nb;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/nb;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->c:I

    const/16 v3, 0x23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 13
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 14
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 15
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/nb;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 17
    return-void
.end method
