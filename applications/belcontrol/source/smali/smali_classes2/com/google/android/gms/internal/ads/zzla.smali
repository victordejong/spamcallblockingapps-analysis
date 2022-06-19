.class public final Lcom/google/android/gms/internal/ads/zzla;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public index:I

.field public final length:I

.field public zzawu:I

.field public zzawv:J

.field private final zzaww:Z

.field private final zzawx:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzawy:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzawz:I

.field private zzaxa:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzpn;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawy:Lcom/google/android/gms/internal/ads/zzpn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawx:Lcom/google/android/gms/internal/ads/zzpn;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaww:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzla;->length:I

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxa:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzla;->index:I

    return-void
.end method


# virtual methods
.method public final zzha()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzla;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzla;->length:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaww:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawx:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawx:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawv:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->index:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawz:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawy:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawu:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawy:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxa:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzaxa:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawy:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzla;->zzawz:I

    :cond_3
    return v1
.end method
