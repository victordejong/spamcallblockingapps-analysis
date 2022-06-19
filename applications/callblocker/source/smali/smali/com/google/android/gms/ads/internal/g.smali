.class public final Lcom/google/android/gms/ads/internal/g;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:F

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFIZZZ)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/g;->a:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/g;->b:Z

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/g;->i:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/g;->c:Z

    .line 8
    iput p5, p0, Lcom/google/android/gms/ads/internal/g;->d:F

    .line 9
    iput p6, p0, Lcom/google/android/gms/ads/internal/g;->e:I

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/g;->f:Z

    .line 11
    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/g;->g:Z

    .line 12
    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/g;->h:Z

    .line 13
    return-void
.end method

.method public constructor <init>(ZZZFIZZZ)V
    .locals 10

    .prologue
    .line 1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v2, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/g;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    .line 2
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 16
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->a:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 17
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->b:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 18
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->c:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 20
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/g;->d:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    .line 21
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/ads/internal/g;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 22
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 23
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 24
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/g;->h:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 25
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 26
    return-void
.end method
