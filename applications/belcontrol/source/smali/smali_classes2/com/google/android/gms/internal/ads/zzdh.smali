.class public final Lcom/google/android/gms/internal/ads/zzdh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdd;


# instance fields
.field private final synthetic zzvl:Lcom/google/android/gms/internal/ads/zzdb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdh;->zzvl:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdb;Lcom/google/android/gms/internal/ads/zzde;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdh;-><init>(Lcom/google/android/gms/internal/ads/zzdb;)V

    return-void
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdh;->zzvl:Lcom/google/android/gms/internal/ads/zzdb;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzth:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrm:I

    not-int v4, v3

    and-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqg:I

    not-int v5, v4

    and-int/2addr v5, v2

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzuf:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsp:I

    or-int v7, v6, v5

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoj:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsb:I

    not-int v9, v8

    and-int/2addr v7, v9

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoj:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztr:I

    xor-int/2addr v9, v4

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztr:I

    xor-int/2addr v7, v9

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoj:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzum:I

    xor-int/2addr v7, v10

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzum:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzux:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzux:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsz:I

    and-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzux:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzro:I

    xor-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzux:I

    xor-int v11, v4, v6

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzro:I

    and-int/2addr v11, v8

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzro:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzro:I

    and-int v12, v10, v11

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqj:I

    or-int/2addr v11, v12

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    xor-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzou:I

    xor-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzou:I

    or-int v9, v6, v4

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    xor-int/2addr v9, v2

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    xor-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    not-int v9, v9

    and-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    xor-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    not-int v11, v12

    and-int/2addr v9, v11

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    not-int v11, v6

    and-int/2addr v11, v4

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    xor-int/2addr v11, v3

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    not-int v11, v11

    and-int/2addr v11, v8

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    or-int v13, v6, v4

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpc:I

    xor-int/2addr v13, v14

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    not-int v13, v13

    and-int/2addr v13, v8

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoz:I

    not-int v15, v2

    and-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqo:I

    xor-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoz:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpg:I

    xor-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpg:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsr:I

    or-int v0, v15, v14

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpg:I

    move/from16 p1, v9

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzts:I

    xor-int/2addr v0, v9

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpg:I

    move/from16 v16, v7

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqi:I

    xor-int/2addr v0, v7

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqi:I

    and-int v0, v15, v14

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v0, v9

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpy:I

    xor-int/2addr v0, v7

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpy:I

    xor-int v0, v3, v2

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzth:I

    not-int v2, v6

    and-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v2, v11

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    not-int v2, v2

    and-int/2addr v2, v10

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    or-int v3, v6, v0

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v3, v0

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztd:I

    xor-int/2addr v3, v13

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    and-int/2addr v3, v10

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    xor-int/2addr v4, v0

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    and-int/2addr v4, v8

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    and-int/2addr v4, v10

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    xor-int/2addr v4, v5

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    or-int/2addr v4, v12

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    xor-int v4, v16, v4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztz:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoc:I

    xor-int/2addr v4, v5

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoc:I

    xor-int v5, v0, v6

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsp:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzom:I

    xor-int/2addr v6, v5

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzom:I

    xor-int/2addr v2, v6

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrk:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzuz:I

    xor-int/2addr v2, v6

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzuz:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsk:I

    xor-int/2addr v2, v6

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsk:I

    not-int v2, v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsk:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqk:I

    xor-int/2addr v0, v6

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqk:I

    and-int/2addr v0, v8

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqk:I

    xor-int/2addr v0, v5

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqk:I

    xor-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqz:I

    xor-int v0, v0, p1

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqq:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsi:I

    xor-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsi:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzri:I

    int-to-byte v5, v3

    const/4 v6, 0x0

    aput-byte v5, p2, v6

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, p2, v6

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, p2, v6

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    const/16 v6, 0x18

    ushr-int/2addr v3, v6

    int-to-byte v3, v3

    const/4 v7, 0x3

    aput-byte v3, p2, v7

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzub:I

    int-to-byte v7, v3

    const/4 v8, 0x4

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    const/4 v8, 0x6

    aput-byte v7, p2, v8

    and-int/2addr v3, v5

    ushr-int/2addr v3, v6

    int-to-byte v3, v3

    const/4 v7, 0x7

    aput-byte v3, p2, v7

    int-to-byte v3, v2

    const/16 v7, 0x8

    aput-byte v3, p2, v7

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v7, 0x9

    aput-byte v3, p2, v7

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v7, 0xa

    aput-byte v3, p2, v7

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsa:I

    int-to-byte v3, v2

    const/16 v7, 0xc

    aput-byte v3, p2, v7

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v7, 0xd

    aput-byte v3, p2, v7

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v7, 0xe

    aput-byte v3, p2, v7

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xf

    aput-byte v2, p2, v3

    int-to-byte v2, v4

    const/16 v3, 0x10

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x11

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v4, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x12

    aput-byte v2, p2, v3

    and-int v2, v4, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x13

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzob:I

    int-to-byte v3, v2

    const/16 v4, 0x14

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x15

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x16

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x17

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoe:I

    int-to-byte v3, v2

    aput-byte v3, p2, v6

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x19

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x1a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x1b

    aput-byte v2, p2, v3

    int-to-byte v2, v10

    const/16 v3, 0x1c

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v10, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x1d

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v10, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x1e

    aput-byte v2, p2, v3

    and-int v2, v10, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x1f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzog:I

    int-to-byte v3, v2

    const/16 v4, 0x20

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x21

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x22

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x23

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzut:I

    int-to-byte v3, v2

    const/16 v4, 0x24

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x25

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x26

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x27

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsw:I

    int-to-byte v3, v2

    const/16 v4, 0x28

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x29

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x2a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x2b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoh:I

    int-to-byte v3, v2

    const/16 v4, 0x2c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x2d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x2e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x2f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrd:I

    int-to-byte v3, v2

    const/16 v4, 0x30

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x31

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x32

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x33

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzta:I

    int-to-byte v3, v2

    const/16 v4, 0x34

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x35

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x36

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x37

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzru:I

    int-to-byte v3, v2

    const/16 v4, 0x38

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x39

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x3a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x3b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzol:I

    int-to-byte v3, v2

    const/16 v4, 0x3c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x3d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x3e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x3f

    aput-byte v2, p2, v3

    int-to-byte v2, v0

    const/16 v3, 0x40

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x41

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x42

    aput-byte v2, p2, v3

    and-int/2addr v0, v5

    ushr-int/2addr v0, v6

    int-to-byte v0, v0

    const/16 v2, 0x43

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrz:I

    int-to-byte v2, v0

    const/16 v3, 0x44

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x45

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x46

    aput-byte v2, p2, v3

    and-int/2addr v0, v5

    ushr-int/2addr v0, v6

    int-to-byte v0, v0

    const/16 v2, 0x47

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqm:I

    int-to-byte v2, v0

    const/16 v3, 0x48

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x49

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x4a

    aput-byte v2, p2, v3

    and-int/2addr v0, v5

    ushr-int/2addr v0, v6

    int-to-byte v0, v0

    const/16 v2, 0x4b

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzry:I

    int-to-byte v2, v0

    const/16 v3, 0x4c

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x4d

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    const/16 v3, 0x4e

    aput-byte v2, p2, v3

    and-int/2addr v0, v5

    ushr-int/2addr v0, v6

    int-to-byte v0, v0

    const/16 v2, 0x4f

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzos:I

    int-to-byte v0, v0

    const/16 v1, 0x50

    aput-byte v0, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdh;->zzvl:Lcom/google/android/gms/internal/ads/zzdb;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzos:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x51

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x52

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x53

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzor:I

    int-to-byte v3, v2

    const/16 v4, 0x54

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x55

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x56

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x57

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzou:I

    int-to-byte v3, v2

    const/16 v4, 0x58

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x59

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x5a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x5b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzot:I

    int-to-byte v3, v2

    const/16 v4, 0x5c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x5d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x5e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x5f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztb:I

    int-to-byte v3, v2

    const/16 v4, 0x60

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x61

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x62

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x63

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztk:I

    int-to-byte v3, v2

    const/16 v4, 0x64

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x65

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x66

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x67

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrc:I

    int-to-byte v3, v2

    const/16 v4, 0x68

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x69

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x6a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x6b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzox:I

    int-to-byte v3, v2

    const/16 v4, 0x6c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x6d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x6e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x6f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpa:I

    int-to-byte v3, v2

    const/16 v4, 0x70

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x71

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x72

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x73

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpr:I

    int-to-byte v3, v2

    const/16 v4, 0x74

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x75

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x76

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x77

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzte:I

    int-to-byte v3, v2

    const/16 v4, 0x78

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x79

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x7a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x7b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzse:I

    int-to-byte v3, v2

    const/16 v4, 0x7c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x7d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x7e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x7f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsf:I

    int-to-byte v3, v2

    const/16 v4, 0x80

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x81

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x82

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x83

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpd:I

    int-to-byte v3, v2

    const/16 v4, 0x84

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x85

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x86

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x87

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrq:I

    int-to-byte v3, v2

    const/16 v4, 0x88

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x89

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x8a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x8b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzuj:I

    int-to-byte v3, v2

    const/16 v4, 0x8c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x8d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x8e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x8f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpi:I

    int-to-byte v3, v2

    const/16 v4, 0x90

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x91

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x92

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x93

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzui:I

    int-to-byte v3, v2

    const/16 v4, 0x94

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x95

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x96

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x97

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzto:I

    int-to-byte v3, v2

    const/16 v4, 0x98

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x99

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x9a

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x9b

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpu:I

    int-to-byte v3, v2

    const/16 v4, 0x9c

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0x9d

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0x9e

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0x9f

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpm:I

    int-to-byte v3, v2

    const/16 v4, 0xa0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xa1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xa2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xa3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzof:I

    int-to-byte v3, v2

    const/16 v4, 0xa4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xa5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xa6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xa7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqb:I

    int-to-byte v3, v2

    const/16 v4, 0xa8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xa9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xaa

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xab

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpx:I

    int-to-byte v3, v2

    const/16 v4, 0xac

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xad

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xae

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xaf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpq:I

    int-to-byte v3, v2

    const/16 v4, 0xb0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xb1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xb2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xb3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrm:I

    int-to-byte v3, v2

    const/16 v4, 0xb4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xb5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xb6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xb7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzps:I

    int-to-byte v3, v2

    const/16 v4, 0xb8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xb9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xba

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xbb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqp:I

    int-to-byte v3, v2

    const/16 v4, 0xbc

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xbd

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xbe

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xbf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzoi:I

    int-to-byte v3, v2

    const/16 v4, 0xc0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xc1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xc2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xc3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrg:I

    int-to-byte v3, v2

    const/16 v4, 0xc4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xc5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xc6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xc7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpw:I

    int-to-byte v3, v2

    const/16 v4, 0xc8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xc9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xca

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xcb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzra:I

    int-to-byte v3, v2

    const/16 v4, 0xcc

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xcd

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xce

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xcf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpy:I

    int-to-byte v3, v2

    const/16 v4, 0xd0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xd1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xd2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xd3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzsb:I

    int-to-byte v3, v2

    const/16 v4, 0xd4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xd5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xd6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xd7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqa:I

    int-to-byte v3, v2

    const/16 v4, 0xd8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xd9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xda

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xdb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzpp:I

    int-to-byte v3, v2

    const/16 v4, 0xdc

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xdd

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xde

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xdf

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzuc:I

    int-to-byte v3, v2

    const/16 v4, 0xe0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xe1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xe2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xe3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zztc:I

    int-to-byte v3, v2

    const/16 v4, 0xe4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xe5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xe6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xe7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzso:I

    int-to-byte v3, v2

    const/16 v4, 0xe8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xe9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xea

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xeb

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzup:I

    int-to-byte v3, v2

    const/16 v4, 0xec

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xed

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xee

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xef

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzty:I

    int-to-byte v3, v2

    const/16 v4, 0xf0

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xf1

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xf2

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xf3

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrb:I

    int-to-byte v3, v2

    const/16 v4, 0xf4

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xf5

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xf6

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xf7

    aput-byte v2, p2, v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzqi:I

    int-to-byte v3, v2

    const/16 v4, 0xf8

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    const/16 v4, 0xf9

    aput-byte v3, p2, v4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    const/16 v4, 0xfa

    aput-byte v3, p2, v4

    and-int/2addr v2, v5

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v3, 0xfb

    aput-byte v2, p2, v3

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzrh:I

    int-to-byte v2, v1

    const/16 v3, 0xfc

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/16 v3, 0xfd

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/16 v3, 0xfe

    aput-byte v2, p2, v3

    and-int/2addr v1, v5

    ushr-int/2addr v1, v6

    int-to-byte v1, v1

    const/16 v2, 0xff

    aput-byte v1, p2, v2

    return-void
.end method
