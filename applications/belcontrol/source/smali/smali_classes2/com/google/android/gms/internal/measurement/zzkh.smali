.class public final Lcom/google/android/gms/internal/measurement/zzkh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zza:J

.field public static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zze:Z

.field private static final zzf:Z

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzkg;

.field private static final zzh:Z

.field private static final zzi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zzr()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzkh;->zzc:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzb()Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzkh;->zzd:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzkh;->zzE(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzkh;->zze:Z

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzkh;->zzE(Ljava/lang/Class;)Z

    move-result v8

    sput-boolean v8, Lcom/google/android/gms/internal/measurement/zzkh;->zzf:Z

    const/4 v9, 0x0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_1

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzke;

    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/measurement/zzke;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzkf;

    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/measurement/zzkf;-><init>(Lsun/misc/Unsafe;)V

    :cond_3
    :goto_0
    sput-object v9, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    const/4 v6, 0x0

    if-nez v9, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzkg;->zzj()Z

    move-result v7

    :goto_1
    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzkh;->zzh:Z

    if-nez v9, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzkg;->zzi()Z

    move-result v7

    :goto_2
    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzkh;->zzi:Z

    const-class v7, [B

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    move-result v7

    int-to-long v7, v7

    sput-wide v7, Lcom/google/android/gms/internal/measurement/zzkh;->zza:J

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzC(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkh;->zzD(Ljava/lang/Class;)I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zzF()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzk(Ljava/lang/reflect/Field;)J

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    const/4 v6, 0x1

    :cond_7
    sput-boolean v6, Lcom/google/android/gms/internal/measurement/zzkh;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic zzA(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzJ(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic zzB(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzK(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzC(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzl(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzD(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkg;->zzm(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzE(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkh;->zzd:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const-string v7, "peekByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v2

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v2
.end method

.method private static zzF()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkh;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static zzH(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static zzI(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzK(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zza()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzi:Z

    return v0
.end method

.method public static zzb()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzh:Z

    return v0
.end method

.method public static zzc(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzd(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzn(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static zze(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzo(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzf(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzp(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static zzg(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkg;->zzq(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static zzh(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzc(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static zzi(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzd(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static zzj(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zze(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static zzk(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static zzl(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzg(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzm(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkg;->zzh(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static zzn(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkg;->zzr(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzo(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static zzp([BJ)B
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzkh;->zza:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkg;->zza(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static zzq([BJB)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkh;->zzg:Lcom/google/android/gms/internal/measurement/zzkg;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzkh;->zza:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzr()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic zzs(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzkh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzt()Ljava/lang/reflect/Field;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkh;->zzF()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic zzu(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzH(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static synthetic zzv(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzI(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static synthetic zzw(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzJ(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic zzx(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkh;->zzK(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic zzy(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzH(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzz(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkh;->zzI(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
