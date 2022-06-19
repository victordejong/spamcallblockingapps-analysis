.class public abstract Lcom/google/android/gms/internal/ads/zzoj;
.super Lcom/google/android/gms/internal/ads/zzfx;
.source "SourceFile"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:F

.field private zzB:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;"
        }
    .end annotation
.end field

.field private zzC:Lcom/google/android/gms/internal/ads/zzoi;

.field private zzD:Lcom/google/android/gms/internal/ads/zzoh;

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:Lcom/google/android/gms/internal/ads/zzoa;

.field private zzQ:J

.field private zzR:I

.field private zzS:I

.field private zzT:Ljava/nio/ByteBuffer;

.field private zzU:Z

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:Z

.field private zzZ:Z

.field public zza:Lcom/google/android/gms/internal/ads/zzfy;

.field private zzaa:I

.field private zzab:I

.field private zzac:I

.field private zzad:Z

.field private zzae:Z

.field private zzaf:Z

.field private zzag:J

.field private zzah:J

.field private zzai:Z

.field private zzaj:Z

.field private zzak:Z

.field private zzal:J

.field private zzam:J

.field private zzan:I

.field private zzao:Lcom/google/android/gms/internal/ads/zznl;

.field private zzap:Lcom/google/android/gms/internal/ads/zznl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzoe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzol;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzi:Lcom/google/android/gms/internal/ads/zznz;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfj<",
            "Lcom/google/android/gms/internal/ads/zzab;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Landroid/media/MediaCodec$BufferInfo;

.field private final zzm:[J

.field private final zzn:[J

.field private final zzo:[J

.field private zzp:Lcom/google/android/gms/internal/ads/zzab;

.field private zzq:Lcom/google/android/gms/internal/ads/zzab;

.field private zzr:Landroid/media/MediaCrypto;

.field private zzs:Z

.field private zzt:J

.field private zzu:F

.field private zzv:F

.field private zzw:Lcom/google/android/gms/internal/ads/zzof;

.field private zzx:Lcom/google/android/gms/internal/ads/zzab;

.field private zzy:Landroid/media/MediaFormat;

.field private zzz:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoj;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzoe;Lcom/google/android/gms/internal/ads/zzol;ZF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfx;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzc:Lcom/google/android/gms/internal/ads/zzoe;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzd:Lcom/google/android/gms/internal/ads/zzol;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zze:F

    new-instance p1, Lcom/google/android/gms/internal/ads/zzda;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzf:Lcom/google/android/gms/internal/ads/zzda;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzda;

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzda;

    const/4 p3, 0x2

    .line 5
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    new-instance p1, Lcom/google/android/gms/internal/ads/zznz;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzu:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzv:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzt:J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzm:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzo:[J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zzi(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzA:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzE:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzah:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    return-void
.end method

.method private final zzS()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznz;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    return-void
.end method

.method private final zzT()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    return-void
.end method

.method private final zzaA()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    if-gez v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzof;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 2
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzof;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzO:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzof;->zzj(IIIJI)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaw()V

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzM:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoj;->zzb:[B

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    const/4 v5, 0x0

    const/16 v6, 0x26

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 7
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzof;->zzj(IIIJI)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaw()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    return v2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzh()Lcom/google/android/gms/internal/ads/zzhr;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 14
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzbn(Lcom/google/android/gms/internal/ads/zzhr;Lcom/google/android/gms/internal/ads/zzda;I)I

    move-result v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcz; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzF()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzah:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v7, -0x5

    if-ne v5, v7, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    .line 16
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zzR(Lcom/google/android/gms/internal/ads/zzhr;)Lcom/google/android/gms/internal/ads/zzfz;

    return v2

    :cond_b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcu;->zzg()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    :cond_c
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    if-nez v0, :cond_d

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    return v1

    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzO:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 19
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzof;->zzj(IIIJI)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaw()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v3

    .line 23
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    .line 24
    throw v0

    .line 25
    :cond_f
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcu;->zzh()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    :cond_10
    return v2

    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzda;->zzk()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzda;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb(I)V

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzF:Z

    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:[B

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_17

    .line 30
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_14

    if-ne v9, v2, :cond_15

    .line 31
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    .line 33
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_13
    const/4 v9, 0x1

    goto :goto_2

    :cond_14
    if-nez v9, :cond_15

    add-int/lit8 v7, v7, 0x1

    :cond_15
    :goto_2
    if-eqz v9, :cond_16

    const/4 v7, 0x0

    :cond_16
    move v5, v8

    goto :goto_1

    .line 37
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_18

    return v2

    :cond_18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzF:Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzda;->zzd:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzP:Lcom/google/android/gms/internal/ads/zzoa;

    if-eqz v6, :cond_1a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 40
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/internal/ads/zzoa;->zzb(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzda;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzP:Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 41
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzoa;->zza(Lcom/google/android/gms/internal/ads/zzab;)J

    move-result-wide v8

    .line 42
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    :cond_1a
    move-wide v12, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcu;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 43
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 44
    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzd(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    :cond_1c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    .line 45
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcu;->zze()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzal(Lcom/google/android/gms/internal/ads/zzda;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzac(Lcom/google/android/gms/internal/ads/zzda;)V

    if-eqz v3, :cond_1e

    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzda;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v14, 0x0

    .line 49
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzof;->zzk(IILcom/google/android/gms/internal/ads/zzcx;JI)V

    goto :goto_4

    .line 50
    :cond_1e
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 52
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzof;->zzj(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    :goto_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaw()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    .line 54
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfy;->zzc:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfy;->zzc:I

    return v2

    :catch_1
    move-exception v0

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v3

    .line 57
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    .line 58
    throw v0

    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzW(Ljava/lang/Exception;)V

    .line 60
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzaC(I)Z

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaa()V

    return v2

    :cond_1f
    :goto_5
    return v1
.end method

.method private final zzaB()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaC(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzh()Lcom/google/android/gms/internal/ads/zzhr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzf:Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzf:Lcom/google/android/gms/internal/ads/zzda;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfx;->zzbn(Lcom/google/android/gms/internal/ads/zzhr;Lcom/google/android/gms/internal/ads/zzda;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzR(Lcom/google/android/gms/internal/ads/zzhr;)Lcom/google/android/gms/internal/ads/zzfz;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzf:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcu;->zzg()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaD(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzt:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaE(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzbm()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzv:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzI()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzoj;->zzO(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzA:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzT()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 6
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzof;->zzp(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzA:F

    :cond_6
    :goto_1
    return v1
.end method

.method private final zzaa()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzap()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzap()V

    .line 3
    throw v0
.end method

.method public static zzau(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzF:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzav()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzad()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaa()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzay()V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaa()V

    return-void
.end method

.method private final zzaw()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzR:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzg:Lcom/google/android/gms/internal/ads/zzda;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzax()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzT:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzay()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v2, 0x0

    const/16 v3, 0x1776

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    .line 3
    throw v0
.end method

.method private final zzaz()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzG:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzI:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzay()V

    :goto_1
    return v1
.end method


# virtual methods
.method public zzC(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzu:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzv:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzoj;->zzaE(Lcom/google/android/gms/internal/ads/zzab;)Z

    return-void
.end method

.method public final zzK(JJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1
    :try_start_0
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzad()V

    return-void

    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v11, 0x2

    if-nez v0, :cond_2

    .line 2
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzoj;->zzaC(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    if-eqz v0, :cond_10

    const-string v0, "bypassRender"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    xor-int/2addr v0, v14

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzda;->zzb:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzl()I

    move-result v10

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzda;->zzd:J

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcu;->zzf()Z

    move-result v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcu;->zzg()Z

    move-result v16

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v17, v4

    move-wide/from16 v4, p3

    move v13, v0

    move/from16 v14, v16

    move-object/from16 v15, v17

    .line 6
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzoj;->zzae(JJLcom/google/android/gms/internal/ads/zzof;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v15, p0

    :try_start_2
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzm()J

    move-result-wide v0

    .line 7
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzan(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzb()V

    goto :goto_2

    :cond_4
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_5
    :goto_2
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_6
    const/4 v14, 0x1

    .line 9
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzX:Z

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznz;->zzo(Lcom/google/android/gms/internal/ads/zzda;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzX:Z

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzY:Z

    if-eqz v0, :cond_8

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzS()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzY:Z

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    if-eqz v0, :cond_f

    :cond_8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    xor-int/2addr v0, v14

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzh()Lcom/google/android/gms/internal/ads/zzhr;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    :cond_9
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 17
    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzfx;->zzbn(Lcom/google/android/gms/internal/ads/zzhr;Lcom/google/android/gms/internal/ads/zzda;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_d

    const/4 v2, -0x4

    if-eq v1, v2, :cond_a

    goto :goto_4

    .line 18
    :cond_a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcu;->zzg()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    goto :goto_4

    :cond_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    if-eqz v1, :cond_c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :try_start_3
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v2, 0x0

    .line 21
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzoj;->zzZ(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    :cond_c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzda;->zzj()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zznz;->zzo(Lcom/google/android/gms/internal/ads/zzda;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzX:Z

    goto :goto_4

    .line 24
    :cond_d
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzR(Lcom/google/android/gms/internal/ads/zzhr;)Lcom/google/android/gms/internal/ads/zzfz;

    .line 25
    :goto_4
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzp()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzda;->zzj()V

    :cond_e
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznz;->zzp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzY:Z

    if-eqz v0, :cond_f

    goto/16 :goto_1

    .line 27
    :cond_f
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_14

    .line 28
    :cond_10
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v0, :cond_29

    .line 29
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaB()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8

    if-nez v0, :cond_21

    :try_start_5
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzJ:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v0, :cond_12

    :try_start_6
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    .line 32
    :catch_1
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    if-eqz v0, :cond_11

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    :cond_11
    :goto_7
    move-wide v2, v9

    move-object v1, v15

    const/16 v19, 0x0

    goto/16 :goto_12

    .line 34
    :cond_12
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 35
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_8
    if-gez v0, :cond_17

    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    .line 36
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaf:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzE:I

    if-eqz v1, :cond_13

    const-string v1, "width"

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    const-string v1, "height"

    .line 39
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_13

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzN:Z

    goto :goto_9

    .line 40
    :cond_13
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzL:Z

    if-eqz v1, :cond_14

    const-string v1, "channel-count"

    .line 41
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_14
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzy:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzz:Z

    goto :goto_9

    :cond_15
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzO:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    if-nez v0, :cond_16

    iget v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    if-ne v0, v11, :cond_11

    .line 42
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    goto :goto_7

    :cond_17
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzN:Z

    if-eqz v1, :cond_18

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzN:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 43
    invoke-interface {v1, v0, v13}, Lcom/google/android/gms/internal/ads/zzof;->zzn(IZ)V

    :goto_9
    move-wide v2, v9

    move-object v1, v15

    const/16 v16, 0x2

    const/16 v19, 0x0

    goto/16 :goto_11

    :cond_18
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_19

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    goto :goto_7

    :cond_19
    iput v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 46
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzof;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzT:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1a

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 47
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzT:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzK:Z

    if-eqz v0, :cond_1b

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 49
    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1b

    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1b

    .line 50
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 51
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1d

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1c

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_b

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzU:Z

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzah:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzV:Z

    .line 56
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzc(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_1f

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzz:Z

    if-eqz v1, :cond_1f

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    :cond_1f
    if-eqz v0, :cond_20

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_d

    .line 59
    :cond_20
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzz:Z

    if-eqz v0, :cond_21

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v0, :cond_21

    .line 60
    :goto_d
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzy:Landroid/media/MediaFormat;

    .line 61
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzZ(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzz:Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_21
    :try_start_8
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzJ:Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v0, :cond_23

    :try_start_9
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v0, :cond_23

    :try_start_a
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzT:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 62
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v16, 0x1

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzU:Z

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzV:Z

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v16

    const/16 v16, 0x2

    move-wide/from16 v11, v19

    const/16 v19, 0x0

    move v13, v0

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 63
    :try_start_b
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzoj;->zzae(JJLcom/google/android/gms/internal/ads/zzof;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_10

    :catch_2
    move-wide/from16 v21, v9

    const/16 v19, 0x0

    .line 64
    :catch_3
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v15, p0

    :try_start_d
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    if-eqz v0, :cond_22

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    :cond_22
    move-object v1, v15

    :goto_e
    move-wide/from16 v2, v21

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_5
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_13

    :cond_23
    move-wide/from16 v21, v9

    const/16 v16, 0x2

    const/16 v19, 0x0

    .line 66
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzT:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzS:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 67
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzU:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzV:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzoj;->zzq:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v15, v0

    .line 68
    :try_start_e
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzoj;->zzae(JJLcom/google/android/gms/internal/ads/zzof;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6

    :goto_10
    if-eqz v0, :cond_26

    move-object/from16 v1, p0

    .line 69
    :try_start_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 70
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoj;->zzan(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzl:Landroid/media/MediaCodec$BufferInfo;

    .line 71
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzax()V

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzav()V

    goto :goto_e

    :cond_24
    move-wide/from16 v2, v21

    .line 74
    :goto_11
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoj;->zzaD(J)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_12

    :cond_25
    move-object v15, v1

    move-wide v9, v2

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_6

    :cond_26
    move-object/from16 v1, p0

    goto :goto_e

    .line 75
    :cond_27
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaA()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoj;->zzaD(J)Z

    move-result v0

    if-nez v0, :cond_27

    .line 76
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V

    const/4 v2, 0x1

    goto :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_15

    :catch_7
    move-exception v0

    :goto_13
    move-object v1, v15

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v1, v15

    const/16 v19, 0x0

    goto :goto_15

    :cond_29
    move-object v1, v15

    const/16 v19, 0x0

    .line 77
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    .line 78
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfy;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzfx;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzfy;->zzd:I
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_a

    const/4 v2, 0x1

    .line 79
    :try_start_10
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzoj;->zzaC(I)Z

    .line 80
    :goto_14
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfy;->zza()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_9

    return-void

    :catch_9
    move-exception v0

    goto :goto_16

    :catch_a
    move-exception v0

    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    :catch_b
    move-exception v0

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    .line 82
    :goto_16
    sget v3, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2a

    .line 83
    instance-of v5, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_2a

    goto :goto_17

    .line 84
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 85
    array-length v6, v5

    if-lez v6, :cond_2d

    aget-object v5, v5, v19

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 86
    :goto_17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzW(Ljava/lang/Exception;)V

    if-lt v3, v4, :cond_2b

    .line 87
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_2b

    .line 88
    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v14, 0x1

    goto :goto_18

    :cond_2b
    const/4 v14, 0x0

    :goto_18
    if-eqz v14, :cond_2c

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    :cond_2c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzoj;->zzaj(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzoh;)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/16 v3, 0xfa3

    .line 91
    invoke-virtual {v1, v0, v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    throw v0

    .line 92
    :cond_2d
    throw v0
.end method

.method public zzL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    return v0
.end method

.method public zzM()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzH()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaB()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzQ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzQ:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzab;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzd:Lcom/google/android/gms/internal/ads/zzol;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzoj;->zzP(Lcom/google/android/gms/internal/ads/zzol;Lcom/google/android/gms/internal/ads/zzab;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzos; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object p1

    .line 3
    throw p1
.end method

.method public zzO(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract zzP(Lcom/google/android/gms/internal/ads/zzol;Lcom/google/android/gms/internal/ads/zzab;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation
.end method

.method public zzQ(Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzfz;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzR(Lcom/google/android/gms/internal/ads/zzhr;)Lcom/google/android/gms/internal/ads/zzfz;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzhr;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhr;->zzb:Lcom/google/android/gms/internal/ads/zznl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzap:Lcom/google/android/gms/internal/ads/zznl;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzY:Z

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-nez v1, :cond_1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzao:Lcom/google/android/gms/internal/ads/zznl;

    const/16 v7, 0x17

    if-ne v6, p1, :cond_12

    if-eq p1, v6, :cond_3

    .line 5
    sget v8, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    if-lt v8, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    .line 6
    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zzQ(Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzfz;

    move-result-object v7

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    const/4 v9, 0x3

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eqz v8, :cond_e

    if-eq v8, v0, :cond_9

    if-eq v8, v11, :cond_5

    .line 7
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zzaE(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    if-eq p1, v6, :cond_f

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaz()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 10
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zzaE(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzZ:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzE:I

    if-eq v8, v11, :cond_8

    if-ne v8, v0, :cond_7

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzab;->zzr:I

    .line 11
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzab;->zzr:I

    if-ne v8, v10, :cond_7

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzab;->zzs:I

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzab;->zzs:I

    if-ne v8, v10, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzM:Z

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    if-eq p1, v6, :cond_f

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaz()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 13
    :cond_9
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zzaE(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v8

    if-nez v8, :cond_a

    :goto_3
    const/16 v6, 0x10

    goto :goto_7

    :cond_a
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    if-eq p1, v6, :cond_b

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaz()Z

    move-result p1

    if-nez p1, :cond_f

    :goto_4
    const/4 v6, 0x2

    goto :goto_7

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    if-eqz p1, :cond_f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzG:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzI:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    goto :goto_6

    :cond_d
    :goto_5
    iput v9, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    goto :goto_4

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzT()V

    :cond_f
    :goto_6
    const/4 v6, 0x0

    .line 16
    :goto_7
    iget p1, v7, Lcom/google/android/gms/internal/ads/zzfz;->zzd:I

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-ne p1, v1, :cond_10

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    if-ne p1, v9, :cond_11

    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfz;

    .line 17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object p1

    :cond_11
    return-object v7

    :cond_12
    if-eqz p1, :cond_14

    if-nez v6, :cond_13

    goto :goto_8

    .line 18
    :cond_13
    sget p1, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    if-lt p1, v7, :cond_14

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzk;->zze:Ljava/util/UUID;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzk;->zza:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 21
    :cond_14
    :goto_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzT()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfz;

    .line 22
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object p1

    .line 23
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 24
    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object p1

    .line 25
    throw p1
.end method

.method public abstract zzU(Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzod;
.end method

.method public abstract zzV(Lcom/google/android/gms/internal/ads/zzol;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzol;",
            "Lcom/google/android/gms/internal/ads/zzab;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation
.end method

.method public zzW(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzX(Ljava/lang/String;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzY(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzZ(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzab()V
    .locals 0

    return-void
.end method

.method public zzac(Lcom/google/android/gms/internal/ads/zzda;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzad()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    return-void
.end method

.method public abstract zzae(JJLcom/google/android/gms/internal/ads/zzof;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation
.end method

.method public zzaf(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzag()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzu:F

    return v0
.end method

.method public final zzah()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    return-wide v0
.end method

.method public final zzai()Lcom/google/android/gms/internal/ads/zzof;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    return-object v0
.end method

.method public zzaj(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzoh;)Lcom/google/android/gms/internal/ads/zzog;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzog;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzoh;)V

    return-object v0
.end method

.method public final zzak()Lcom/google/android/gms/internal/ads/zzoh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    return-object v0
.end method

.method public zzal(Lcom/google/android/gms/internal/ads/zzda;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    return-void
.end method

.method public final zzam()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-nez v0, :cond_2c

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    if-nez v0, :cond_2c

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_0

    goto/16 :goto_1c

    :cond_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzap:Lcom/google/android/gms/internal/ads/zznl;

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaf(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzS()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    .line 7
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zznz;->zzn(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    const/16 v1, 0x20

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznz;->zzn(I)V

    .line 9
    :goto_0
    iput-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    return-void

    .line 10
    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzap:Lcom/google/android/gms/internal/ads/zznl;

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzao:Lcom/google/android/gms/internal/ads/zznl;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 12
    sget-boolean v2, Lcom/google/android/gms/internal/ads/zznm;->zza:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznl;->zza()Lcom/google/android/gms/internal/ads/zznc;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zznc;->zza:I

    .line 14
    invoke-virtual {v7, v0, v1, v9, v2}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    .line 15
    throw v0

    .line 16
    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzoi; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v10, 0x0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzd:Lcom/google/android/gms/internal/ads/zzol;

    .line 17
    invoke-virtual {v7, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzoj;->zzV(Lcom/google/android/gms/internal/ads/zzol;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 21
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoh;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v10, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzC:Lcom/google/android/gms/internal/ads/zzoi;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzos; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzoi; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const v3, -0xc34e

    .line 23
    invoke-direct {v1, v2, v0, v9, v3}, Lcom/google/android/gms/internal/ads/zzoi;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 24
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_3
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-nez v0, :cond_2a

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzoh;

    .line 27
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzoj;->zzat(Lcom/google/android/gms/internal/ads/zzoh;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzoi; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v0, :cond_7

    return-void

    .line 28
    :cond_7
    :try_start_3
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    .line 29
    sget v0, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_8

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_4

    .line 30
    :cond_8
    iget v4, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzv:F

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzI()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    invoke-virtual {v7, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzoj;->zzO(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result v4

    .line 32
    :goto_4
    iget v5, v7, Lcom/google/android/gms/internal/ads/zzoj;->zze:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_9

    goto :goto_5

    :cond_9
    move v1, v4

    .line 33
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const-string v13, "createCodec:"

    if-eqz v12, :cond_a

    :try_start_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 35
    :cond_a
    new-instance v6, Ljava/lang/String;

    .line 36
    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    .line 37
    invoke-virtual {v7, v11, v6, v10, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzU(Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzod;

    move-result-object v6

    const/16 v12, 0x1f

    if-lt v0, v12, :cond_c

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzod;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    .line 38
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;)I

    move-result v12

    const-string v13, "DefaultMediaCodecAdapterFactory"

    const-string v14, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfn;->zzJ(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_b

    .line 39
    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 40
    :cond_b
    new-instance v15, Ljava/lang/String;

    .line 41
    invoke-direct {v15, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    .line 42
    :goto_7
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/google/android/gms/internal/ads/zznr;

    invoke-direct {v13, v12, v9}, Lcom/google/android/gms/internal/ads/zznr;-><init>(IZ)V

    .line 43
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zznr;->zzc(Lcom/google/android/gms/internal/ads/zzod;)Lcom/google/android/gms/internal/ads/zznt;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_9

    .line 44
    :cond_c
    :try_start_5
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 45
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :try_start_6
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    .line 47
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    .line 48
    :cond_d
    new-instance v14, Ljava/lang/String;

    .line 49
    invoke-direct {v14, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    :goto_8
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    .line 50
    invoke-static {v12}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    const-string v13, "configureCodec"

    .line 52
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzod;->zzb:Landroid/media/MediaFormat;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzod;->zzd:Landroid/view/Surface;

    .line 53
    invoke-virtual {v12, v13, v6, v10, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V

    const-string v6, "startCodec"

    .line 55
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v12}, Landroid/media/MediaCodec;->start()V

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzpa;

    .line 58
    invoke-direct {v6, v12, v10, v10}, Lcom/google/android/gms/internal/ads/zzpa;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzoz;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 59
    :goto_9
    :try_start_8
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzA:F

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    if-gt v0, v6, :cond_f

    .line 61
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    sget-object v15, Lcom/google/android/gms/internal/ads/zzfn;->zzd:Ljava/lang/String;

    const-string v10, "SM-T585"

    .line 62
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SM-A510"

    .line 63
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SM-A520"

    .line 64
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SM-J700"

    .line 65
    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    const/4 v10, 0x2

    goto :goto_a

    :cond_f
    const/16 v10, 0x18

    if-ge v0, v10, :cond_12

    const-string v10, "OMX.Nvidia.h264.decode"

    .line 66
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_10
    const-string v10, "flounder"

    sget-object v15, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 67
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "flounder_lte"

    .line 68
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "grouper"

    .line 69
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "tilapia"

    .line 70
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    const/4 v10, 0x1

    goto :goto_a

    :cond_12
    const/4 v10, 0x0

    .line 71
    :goto_a
    iput v10, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzE:I

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    const/16 v15, 0x15

    if-ge v0, v15, :cond_13

    .line 72
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/util/List;

    .line 73
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v10, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 74
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x1

    goto :goto_b

    :cond_13
    const/4 v10, 0x0

    :goto_b
    iput-boolean v10, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzF:Z

    const/16 v10, 0x13

    const/16 v9, 0x12

    if-lt v0, v9, :cond_16

    if-ne v0, v9, :cond_14

    const-string v14, "OMX.SEC.avc.dec"

    .line 75
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    const-string v14, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    :cond_14
    if-ne v0, v10, :cond_15

    sget-object v14, Lcom/google/android/gms/internal/ads/zzfn;->zzd:Ljava/lang/String;

    const-string v6, "SM-G800"

    .line 76
    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "OMX.Exynos.avc.dec"

    .line 77
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzG:Z

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_17

    const-string v6, "c2.android.aac.decoder"

    .line 78
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    iput-boolean v6, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzH:Z

    if-gt v0, v3, :cond_19

    const-string v3, "OMX.google.vorbis.decoder"

    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v3, 0x1

    goto :goto_11

    :cond_19
    :goto_10
    if-gt v0, v10, :cond_1b

    const-string v3, "hb2000"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "stvm8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    const-string v3, "OMX.amlogic.avc.decoder.awesome"

    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v3, 0x0

    :goto_11
    iput-boolean v3, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzI:Z

    if-ne v0, v15, :cond_1c

    const-string v3, "OMX.google.aac.decoder"

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_12

    :cond_1c
    const/4 v3, 0x0

    :goto_12
    iput-boolean v3, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzJ:Z

    if-ge v0, v15, :cond_1e

    const-string v3, "OMX.SEC.mp3.dec"

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "samsung"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Ljava/lang/String;

    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    const-string v6, "baffin"

    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "grand"

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "fortuna"

    .line 88
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "gprimelte"

    .line 89
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "j2y18lte"

    .line 90
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "ms01"

    .line 91
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    const/4 v3, 0x1

    goto :goto_13

    :cond_1e
    const/4 v3, 0x0

    :goto_13
    iput-boolean v3, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzK:Z

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    if-gt v0, v9, :cond_1f

    .line 92
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzz:I

    if-ne v3, v8, :cond_1f

    const-string v3, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_14

    :cond_1f
    const/4 v3, 0x0

    :goto_14
    iput-boolean v3, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzL:Z

    .line 94
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    const/16 v6, 0x19

    if-gt v0, v6, :cond_21

    const-string v6, "OMX.rk.video_decoder.avc"

    .line 95
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_16

    :cond_20
    :goto_15
    const/4 v0, 0x1

    goto :goto_17

    :cond_21
    :goto_16
    const/16 v6, 0x11

    if-gt v0, v6, :cond_22

    const-string v6, "OMX.allwinner.video.decoder.avc"

    .line 96
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    :cond_22
    if-gt v0, v1, :cond_23

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_23
    const-string v0, "Amazon"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "AFTS"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfn;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzoh;->zzf:Z

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzO:Z

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    .line 100
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzr()Z

    const-string v0, "c2.android.mp3.decoder"

    .line 101
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzoa;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzP:Lcom/google/android/gms/internal/ads/zzoa;

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfx;->zzbm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzQ:J

    :cond_26
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    .line 103
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    sub-long v5, v12, v4

    move-object/from16 v1, p0

    move-wide v3, v12

    .line 104
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoj;->zzX(Ljava/lang/String;JJ)V

    goto :goto_1b

    :catch_1
    move-exception v0

    goto :goto_19

    :catch_2
    move-exception v0

    goto :goto_19

    :catch_3
    move-exception v0

    goto :goto_18

    :catch_4
    move-exception v0

    :goto_18
    const/4 v12, 0x0

    :goto_19
    if-eqz v12, :cond_27

    .line 105
    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    .line 106
    :cond_27
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    .line 107
    :try_start_a
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecRenderer"

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzep;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v3, 0x0

    .line 109
    invoke-direct {v1, v2, v0, v3, v11}, Lcom/google/android/gms/internal/ads/zzoi;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzoh;)V

    .line 110
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzW(Ljava/lang/Exception;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzC:Lcom/google/android/gms/internal/ads/zzoi;

    if-nez v0, :cond_28

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzC:Lcom/google/android/gms/internal/ads/zzoi;

    goto :goto_1a

    .line 111
    :cond_28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzoi;->zza(Lcom/google/android/gms/internal/ads/zzoi;Lcom/google/android/gms/internal/ads/zzoi;)Lcom/google/android/gms/internal/ads/zzoi;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzC:Lcom/google/android/gms/internal/ads/zzoi;

    .line 112
    :goto_1a
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_1b
    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_29
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzC:Lcom/google/android/gms/internal/ads/zzoi;

    .line 114
    throw v0

    :cond_2a
    move-object v1, v10

    .line 115
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    return-void

    .line 116
    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoi;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const v2, -0xc34f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 117
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzoi;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzoi; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception v0

    .line 118
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const/16 v2, 0xfa1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfx;->zzbo(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    .line 120
    throw v0

    :cond_2c
    :goto_1c
    return-void
.end method

.method public zzan(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzo:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzm:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzo:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    .line 3
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzab()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzao()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzof;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfy;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzfy;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzoj;->zzY(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzao:Lcom/google/android/gms/internal/ads/zznl;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaq()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzao:Lcom/google/android/gms/internal/ads/zznl;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaq()V

    .line 8
    throw v1
.end method

.method public zzap()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaw()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzax()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzQ:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzad:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzU:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzV:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzk:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzah:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzP:Lcom/google/android/gms/internal/ads/zzoa;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoa;->zzc()V

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzab:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzZ:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    return-void
.end method

.method public final zzaq()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzP:Lcom/google/android/gms/internal/ads/zzoa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzB:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzD:Lcom/google/android/gms/internal/ads/zzoh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzx:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzy:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaf:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzA:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzE:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzZ:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaa:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzs:Z

    return-void
.end method

.method public final zzar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzam()V

    :cond_0
    return v0
.end method

.method public final zzas()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzw:Lcom/google/android/gms/internal/ads/zzof;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzac:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzG:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzH:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaf:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzI:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzae:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzaa()V

    return v1

    .line 3
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V

    const/4 v0, 0x1

    return v0
.end method

.method public zzat(Lcom/google/android/gms/internal/ads/zzoh;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzq()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzp:Lcom/google/android/gms/internal/ads/zzab;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzas()Z

    return-void
.end method

.method public zzr(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zza:Lcom/google/android/gms/internal/ads/zzfy;

    return-void
.end method

.method public zzs(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzai:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzaj:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzW:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzi:Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zznz;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzh:Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzda;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzX:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzar()Z

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzak:Z

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zze()V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    .line 6
    aget-wide v0, p3, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzm:[J

    .line 7
    aget-wide p2, p3, p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    :cond_2
    return-void
.end method

.method public zzt()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzS()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoj;->zzao()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzap:Lcom/google/android/gms/internal/ads/zznl;

    return-void

    :catchall_0
    move-exception v1

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzap:Lcom/google/android/gms/internal/ads/zznl;

    .line 5
    throw v1
.end method

.method public final zzw([Lcom/google/android/gms/internal/ads/zzab;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    const/4 p1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzal:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzam:J

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    const/16 v0, 0x9

    aget-wide v0, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    .line 2
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzm:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzan:I

    add-int/lit8 v0, v0, -0x1

    .line 6
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzn:[J

    .line 7
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzo:[J

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzag:J

    .line 8
    aput-wide p2, p1, v0

    return-void
.end method
