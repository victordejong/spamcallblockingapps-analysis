.class public final Lcom/google/android/gms/internal/ads/dmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dmw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/ads/dmw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/dmw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final b:[Lcom/google/android/gms/internal/ads/dmw$a;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/dmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dmy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dmw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dmw$a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dmw$a;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    array-length v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmw;->a:I

    .line 16
    return-void
.end method

.method private varargs constructor <init>(Z[Lcom/google/android/gms/internal/ads/dmw$a;)V
    .locals 4

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p2}, [Lcom/google/android/gms/internal/ads/dmw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dmw$a;

    .line 5
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 6
    const/4 v1, 0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 7
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Duplicate data for uuid: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    .line 11
    array-length v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmw;->a:I

    .line 12
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dmw$a;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/dmw;-><init>(Z[Lcom/google/android/gms/internal/ads/dmw$a;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/dmw$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/dmw$a;

    check-cast p2, Lcom/google/android/gms/internal/ads/dmw$a;

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/dkr;->b:Ljava/util/UUID;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/dkr;->b:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dmw$a;->a(Lcom/google/android/gms/internal/ads/dmw$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    check-cast p1, Lcom/google/android/gms/internal/ads/dmw;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmw;->c:I

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmw;->c:I

    .line 20
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmw;->c:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmw;->b:[Lcom/google/android/gms/internal/ads/dmw$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 28
    return-void
.end method
