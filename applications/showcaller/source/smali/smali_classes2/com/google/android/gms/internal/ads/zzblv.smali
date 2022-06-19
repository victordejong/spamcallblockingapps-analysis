.class public final Lcom/google/android/gms/internal/ads/zzblv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzbis;

.field public final j:Z

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/zzbis;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzblv;->d:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzblv;->e:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzblv;->f:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzblv;->g:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzblv;->h:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzblv;->i:Lcom/google/android/gms/internal/ads/zzbis;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzblv;->j:Z

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzblv;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/c;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->f()Z

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->b()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->e()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->a()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Lcom/google/android/gms/ads/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Lcom/google/android/gms/ads/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/t;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->g()Z

    move-result v7

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->c()I

    move-result v8

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(IZIZILcom/google/android/gms/internal/ads/zzbis;ZI)V

    return-void
.end method

.method public static k0(Lcom/google/android/gms/internal/ads/zzblv;)Lcom/google/android/gms/ads/nativead/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->j:Z

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->d(Z)Lcom/google/android/gms/ads/nativead/b$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->k:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->c(I)Lcom/google/android/gms/ads/nativead/b$a;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->i:Lcom/google/android/gms/internal/ads/zzbis;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/google/android/gms/ads/t;

    .line 4
    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/t;-><init>(Lcom/google/android/gms/internal/ads/zzbis;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/nativead/b$a;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->h:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->b(I)Lcom/google/android/gms/ads/nativead/b$a;

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->e:Z

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->f(Z)Lcom/google/android/gms/ads/nativead/b$a;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzblv;->g:Z

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/b$a;->e(Z)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->d:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->e:Z

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->f:I

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->g:Z

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->h:I

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblv;->i:Lcom/google/android/gms/internal/ads/zzbis;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 7
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzblv;->j:Z

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzblv;->k:I

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
