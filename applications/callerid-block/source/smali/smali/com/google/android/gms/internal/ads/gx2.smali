.class public final Lcom/google/android/gms/internal/ads/gx2;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/gx2;",
        "Lcom/google/android/gms/internal/ads/ex2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzr:Lcom/google/android/gms/internal/ads/gx2;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/ky2;

.field private zzj:Lcom/google/android/gms/internal/ads/vc2;

.field private zzk:Lcom/google/android/gms/internal/ads/zw2;

.field private zzl:Lcom/google/android/gms/internal/ads/cx2;

.field private zzm:Lcom/google/android/gms/internal/ads/qx2;

.field private zzn:Lcom/google/android/gms/internal/ads/ew2;

.field private zzo:Lcom/google/android/gms/internal/ads/yx2;

.field private zzp:Lcom/google/android/gms/internal/ads/gz2;

.field private zzq:Lcom/google/android/gms/internal/ads/ow2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/gx2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gx2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/gx2;->zzr:Lcom/google/android/gms/internal/ads/gx2;

    const-class v1, Lcom/google/android/gms/internal/ads/gx2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzf:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzh:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->n()Lcom/google/android/gms/internal/ads/vc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzj:Lcom/google/android/gms/internal/ads/vc2;

    return-void
.end method

.method public static H()Lcom/google/android/gms/internal/ads/ex2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/gx2;->zzr:Lcom/google/android/gms/internal/ads/gx2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ex2;

    return-object v0
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/gx2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/gx2;->zzr:Lcom/google/android/gms/internal/ads/gx2;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/gx2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/gx2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzj:Lcom/google/android/gms/internal/ads/vc2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wc2;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vc2;->H(I)Lcom/google/android/gms/internal/ads/vc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzj:Lcom/google/android/gms/internal/ads/vc2;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzj:Lcom/google/android/gms/internal/ads/vc2;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/db2;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/gx2;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->n()Lcom/google/android/gms/internal/ads/vc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzj:Lcom/google/android/gms/internal/ads/vc2;

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/gx2;Lcom/google/android/gms/internal/ads/zw2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzk:Lcom/google/android/gms/internal/ads/zw2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/gx2;Lcom/google/android/gms/internal/ads/ew2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzn:Lcom/google/android/gms/internal/ads/ew2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/gx2;Lcom/google/android/gms/internal/ads/yx2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzo:Lcom/google/android/gms/internal/ads/yx2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/gx2;Lcom/google/android/gms/internal/ads/gz2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzp:Lcom/google/android/gms/internal/ads/gz2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/gx2;Lcom/google/android/gms/internal/ads/ow2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzq:Lcom/google/android/gms/internal/ads/ow2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/gx2;->zzb:I

    return-void
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/gx2;->zzr:Lcom/google/android/gms/internal/ads/gx2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/ex2;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ex2;-><init>(Lcom/google/android/gms/internal/ads/bw2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/gx2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gx2;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p2

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/gx2;->zzr:Lcom/google/android/gms/internal/ads/gx2;

    const-string p3, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Lcom/google/android/gms/internal/ads/zw2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzk:Lcom/google/android/gms/internal/ads/zw2;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zw2;->E()Lcom/google/android/gms/internal/ads/zw2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final G()Lcom/google/android/gms/internal/ads/ew2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gx2;->zzn:Lcom/google/android/gms/internal/ads/ew2;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/ew2;->F()Lcom/google/android/gms/internal/ads/ew2;

    move-result-object v0

    :cond_0
    return-object v0
.end method
