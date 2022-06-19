.class public final Lcom/google/android/gms/internal/ads/bl;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/bl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/ecn;

.field public final g:Z

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/bo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/ecn;ZI)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/bl;->a:I

    .line 15
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bl;->b:Z

    .line 16
    iput p3, p0, Lcom/google/android/gms/internal/ads/bl;->c:I

    .line 17
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bl;->d:Z

    .line 18
    iput p5, p0, Lcom/google/android/gms/internal/ads/bl;->e:I

    .line 19
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bl;->f:Lcom/google/android/gms/internal/ads/ecn;

    .line 20
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/bl;->g:Z

    .line 21
    iput p8, p0, Lcom/google/android/gms/internal/ads/bl;->h:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/b/d;)V
    .locals 9

    .prologue
    .line 1
    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->a()Z

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->b()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->d()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->e()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->f()Lcom/google/android/gms/ads/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v6, Lcom/google/android/gms/internal/ads/ecn;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->f()Lcom/google/android/gms/ads/q;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/ecn;-><init>(Lcom/google/android/gms/ads/q;)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->g()Z

    move-result v7

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->c()I

    move-result v8

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/bl;-><init>(IZIZILcom/google/android/gms/internal/ads/ecn;ZI)V

    .line 12
    return-void

    .line 8
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 25
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/bl;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 26
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bl;->b:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 27
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/bl;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 28
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bl;->d:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 29
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/ads/bl;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 30
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bl;->f:Lcom/google/android/gms/internal/ads/ecn;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 31
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bl;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 32
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/ads/bl;->h:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 34
    return-void
.end method
