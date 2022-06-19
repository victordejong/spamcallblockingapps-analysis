.class public final Lcom/google/android/gms/internal/gtm/zzg$zza;
.super Lcom/google/android/gms/internal/gtm/zzuq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuq<",
        "Lcom/google/android/gms/internal/gtm/zzg$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzpx:Lcom/google/android/gms/internal/gtm/zzur;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzur<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            "Lcom/google/android/gms/internal/gtm/zzg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpy:[Lcom/google/android/gms/internal/gtm/zzg$zza;


# instance fields
.field public zzpz:[I

.field public zzqa:[I

.field public zzqb:[I

.field private zzqc:I

.field public zzqd:[I

.field public zzqe:I

.field private zzqf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/gtm/zzg$zza;

    const/16 v1, 0xb

    const-wide/16 v2, 0x32a

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzur;->zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/gtm/zzur;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpx:Lcom/google/android/gms/internal/gtm/zzur;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzg$zza;

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpy:[Lcom/google/android/gms/internal/gtm/zzg$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuq;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbcw:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzbhl:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzg$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    iget v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    iget v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    iget v3, p1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzus;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/gtm/zzg$zza;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzun;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzaq(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzrv()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzbz(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    array-length v4, v2

    :goto_2
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_3

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    if-ge v4, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    goto/16 :goto_13

    :sswitch_3
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    if-nez v2, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    array-length v3, v2

    :goto_4
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_6

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzaq(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzrv()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzbz(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    if-nez v2, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    array-length v4, v2

    :goto_7
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_a

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    if-ge v4, v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    goto/16 :goto_13

    :sswitch_6
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    if-nez v2, :cond_c

    const/4 v3, 0x0

    goto :goto_9

    :cond_c
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_d

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzaq(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzrv()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzbz(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    if-nez v2, :cond_10

    const/4 v4, 0x0

    goto :goto_c

    :cond_10
    array-length v4, v2

    :goto_c
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_11

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_d
    if-ge v4, v3, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_12
    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    goto :goto_13

    :sswitch_8
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    if-nez v2, :cond_13

    const/4 v3, 0x0

    goto :goto_e

    :cond_13
    array-length v3, v2

    :goto_e
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_14

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzaq(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzrv()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzbz(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    if-nez v2, :cond_17

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    array-length v4, v2

    :goto_11
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_18

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_12
    if-ge v4, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_19
    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    :goto_13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzar(I)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    if-nez v2, :cond_1a

    const/4 v3, 0x0

    goto :goto_14

    :cond_1a
    array-length v3, v2

    :goto_14
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_1b

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_15
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x12 -> :sswitch_7
        0x18 -> :sswitch_6
        0x1a -> :sswitch_5
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2a -> :sswitch_2
        0x30 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    const/4 v3, 0x2

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    const/4 v3, 0x3

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    array-length v2, v0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(II)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    return-void
.end method

.method public final zzy()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzuq;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzuo;->zzbc(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzuo;->zzbc(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzuo;->zzbc(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqc:I

    if-eqz v1, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    aget v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzuo;->zzbc(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v0, v1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    if-eqz v1, :cond_9

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqf:I

    if-eqz v1, :cond_a

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method
