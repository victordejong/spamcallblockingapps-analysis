.class public final Lcom/google/android/gms/internal/gtm/zzqj$zze;
.super Lcom/google/android/gms/internal/gtm/zzqj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# instance fields
.field private final zzawx:Ljava/nio/ByteBuffer;

.field private final zzawy:Ljava/nio/ByteBuffer;

.field private final zzawz:J

.field private final zzaxa:J

.field private final zzaxb:J

.field private final zzaxc:J

.field private zzaxd:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;-><init>(Lcom/google/android/gms/internal/gtm/zzqk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawx:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztx;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxa:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    const-wide/16 v4, 0xa

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    return-void
.end method

.method private final zzy(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawx:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final write([BII)V
    .locals 11

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zztx;->zza([BJJJ)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    return-void

    :cond_1
    :goto_0
    const-string p2, "value"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzp(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Lcom/google/android/gms/internal/gtm/zzps;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzsk;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzcz(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzps;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzps;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzps;->zza(Lcom/google/android/gms/internal/gtm/zzpr;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpl;->zzmw()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gtm/zzsz;->zzad(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzpl;->zzag(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj;->zzawu:Lcom/google/android/gms/internal/gtm/zzql;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->write([BII)V

    return-void
.end method

.method public final zzax(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzp(J)V

    return-void
.end method

.method public final zzay(I)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    :goto_1
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzf(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(ILcom/google/android/gms/internal/gtm/zzps;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzf(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(ILcom/google/android/gms/internal/gtm/zzsk;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzc(B)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsk;->zzpe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/gtm/zzsk;->zzb(Lcom/google/android/gms/internal/gtm/zzqj;)V

    return-void
.end method

.method public final zzba(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    return-void
.end method

.method public final zzc(B)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzr(J)V

    return-void
.end method

.method public final zzcz(Ljava/lang/String;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbd(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzbd(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzy(J)V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzud; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzy(J)V

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzud;)V

    return-void
.end method

.method public final zzd(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    return-void
.end method

.method public final zze(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzax(I)V

    return-void
.end method

.method public final zze([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->write([BII)V

    return-void
.end method

.method public final zzf(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    return-void
.end method

.method public final zzh(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzba(I)V

    return-void
.end method

.method public final zzoi()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zzp(J)V
    .locals 12

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    if-nez v2, :cond_0

    :goto_1
    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    return-void

    :cond_0
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    :cond_1
    :goto_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzr(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    return-void
.end method
