.class public abstract Lcom/google/android/gms/internal/gtm/zzuq;
.super Lcom/google/android/gms/internal/gtm/zzuw;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/gtm/zzuq<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/gtm/zzuw;"
    }
.end annotation


# instance fields
.field public zzbhb:Lcom/google/android/gms/internal/gtm/zzus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuw;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzry()Lcom/google/android/gms/internal/gtm/zzuw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuq;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuu;->zza(Lcom/google/android/gms/internal/gtm/zzuq;Lcom/google/android/gms/internal/gtm/zzuq;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzur<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p1, Lcom/google/android/gms/internal/gtm/zzur;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzus;->zzcd(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zzb(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzus;->zzce(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzun;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzt(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuy;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzuy;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzus;

    invoke-direct {p2}, Lcom/google/android/gms/internal/gtm/zzus;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzus;->zzcd(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzut;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzut;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/gtm/zzus;->zza(ILcom/google/android/gms/internal/gtm/zzut;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuy;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic zzry()Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuq;

    return-object v0
.end method

.method public zzy()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzus;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzus;->zzce(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzut;->zzy()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method
