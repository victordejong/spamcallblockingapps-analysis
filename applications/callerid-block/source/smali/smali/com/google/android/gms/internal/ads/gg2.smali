.class public final Lcom/google/android/gms/internal/ads/gg2;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/gg2;",
        "Lcom/google/android/gms/internal/ads/fg2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzo:Lcom/google/android/gms/internal/ads/gg2;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/uf2;

.field private zzh:Lcom/google/android/gms/internal/ads/zf2;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/sc2;

.field private zzk:Ljava/lang/String;

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/ads/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wc2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/gg2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gg2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/gg2;->zzo:Lcom/google/android/gms/internal/ads/gg2;

    const-class v1, Lcom/google/android/gms/internal/ads/gg2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzf:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->l()Lcom/google/android/gms/internal/ads/sc2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzj:Lcom/google/android/gms/internal/ads/sc2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzk:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->o()Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzm:Lcom/google/android/gms/internal/ads/wc2;

    return-void
.end method

.method public static G()Lcom/google/android/gms/internal/ads/fg2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/gg2;->zzo:Lcom/google/android/gms/internal/ads/gg2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fg2;

    return-object v0
.end method

.method static synthetic H()Lcom/google/android/gms/internal/ads/gg2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/gg2;->zzo:Lcom/google/android/gms/internal/ads/gg2;

    return-object v0
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/gg2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zze:I

    return-void
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/gg2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/gg2;Lcom/google/android/gms/internal/ads/uf2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzg:Lcom/google/android/gms/internal/ads/uf2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/gg2;Lcom/google/android/gms/internal/ads/zzexm;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzexm;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzb:I

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/gg2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzm:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wc2;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oc2;->p(Lcom/google/android/gms/internal/ads/wc2;)Lcom/google/android/gms/internal/ads/wc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzm:Lcom/google/android/gms/internal/ads/wc2;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzm:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/gg2;->zzn:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/gg2;->zzo:Lcom/google/android/gms/internal/ads/gg2;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/fg2;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/fg2;-><init>(Lcom/google/android/gms/internal/ads/kf2;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/gg2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gg2;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v4

    const-string p2, "zzg"

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzexm;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/gg2;->zzo:Lcom/google/android/gms/internal/ads/gg2;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/gg2;->zzn:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg2;->zzm:Lcom/google/android/gms/internal/ads/wc2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
