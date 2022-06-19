.class public final Lcom/google/android/gms/internal/ads/zzagy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzagy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Lcom/google/android/gms/internal/ads/zzady;

.field public final h:Z

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/v5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/zzady;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagy;->b:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagy;->c:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzagy;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzagy;->e:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzagy;->f:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzagy;->g:Lcom/google/android/gms/internal/ads/zzady;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzagy;->h:Z

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzagy;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/c;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->f()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->e()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->a()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Lcom/google/android/gms/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzady;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->d()Lcom/google/android/gms/ads/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzady;-><init>(Lcom/google/android/gms/ads/s;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->g()Z

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/c;->c()I

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(IZIZILcom/google/android/gms/internal/ads/zzady;ZI)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzagy;)Lcom/google/android/gms/ads/nativead/b;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->d(Z)Lcom/google/android/gms/ads/nativead/b$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->c(I)Lcom/google/android/gms/ads/nativead/b$a;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->g:Lcom/google/android/gms/internal/ads/zzady;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/google/android/gms/ads/s;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/s;-><init>(Lcom/google/android/gms/internal/ads/zzady;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->b(I)Lcom/google/android/gms/ads/nativead/b$a;

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/b$a;->f(Z)Lcom/google/android/gms/ads/nativead/b$a;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzagy;->e:Z

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/b$a;->e(Z)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->c:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->d:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->e:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->f:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagy;->g:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagy;->h:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzagy;->i:I

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
