.class public final Lcom/google/android/gms/internal/ads/yd;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/yd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/yh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZZZ)V

    .line 2
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZZZ)V

    .line 4
    return-void
.end method

.method private constructor <init>(IIZZZ)V
    .locals 6

    .prologue
    .line 5
    .line 6
    if-eqz p3, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "afma-sdk-a-v"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/yd;-><init>(Ljava/lang/String;IIZZ)V

    .line 8
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/google/android/gms/internal/ads/yd;->b:I

    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/ads/yd;->c:I

    .line 13
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/yd;->d:Z

    .line 14
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/yd;->e:Z

    .line 15
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/yd;
    .locals 3

    .prologue
    const v2, 0xbdfcc1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/yd;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 19
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/yd;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 21
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/ads/yd;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 22
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/yd;->d:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 23
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/yd;->e:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 25
    return-void
.end method
