.class public final Lcom/google/android/gms/internal/ads/vx2;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/vx2;",
        "Lcom/google/android/gms/internal/ads/ux2;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/tc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/tc2<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzvg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzr:Lcom/google/android/gms/internal/ads/vx2;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/sc2;

.field private zzk:Lcom/google/android/gms/internal/ads/qx2;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/tx2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tx2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vx2;->zzj:Lcom/google/android/gms/internal/ads/tc2;

    new-instance v0, Lcom/google/android/gms/internal/ads/vx2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vx2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    const-class v1, Lcom/google/android/gms/internal/ads/vx2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->l()Lcom/google/android/gms/internal/ads/sc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzi:Lcom/google/android/gms/internal/ads/sc2;

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzvy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwx;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzq:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method public static T([B)Lcom/google/android/gms/internal/ads/vx2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/oc2;->t(Lcom/google/android/gms/internal/ads/oc2;[B)Lcom/google/android/gms/internal/ads/oc2;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/vx2;

    return-object p0
.end method

.method public static U()Lcom/google/android/gms/internal/ads/ux2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->v()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ux2;

    return-object v0
.end method

.method static synthetic V()Lcom/google/android/gms/internal/ads/vx2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    return-object v0
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/vx2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zze:J

    return-void
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzvy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic Y(Lcom/google/android/gms/internal/ads/vx2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzg:J

    return-void
.end method

.method static synthetic Z(Lcom/google/android/gms/internal/ads/vx2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzh:J

    return-void
.end method

.method static synthetic a0(Lcom/google/android/gms/internal/ads/vx2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzi:Lcom/google/android/gms/internal/ads/sc2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wc2;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oc2;->m(Lcom/google/android/gms/internal/ads/sc2;)Lcom/google/android/gms/internal/ads/sc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzi:Lcom/google/android/gms/internal/ads/sc2;

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzi:Lcom/google/android/gms/internal/ads/sc2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvg;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/sc2;->N0(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b0(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/qx2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzk:Lcom/google/android/gms/internal/ads/qx2;

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic c0(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzvy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzvy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/ads/vx2;Lcom/google/android/gms/internal/ads/zzvy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    return-void
.end method

.method static synthetic f0(Lcom/google/android/gms/internal/ads/vx2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzo:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/ux2;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ux2;-><init>(Lcom/google/android/gms/internal/ads/bw2;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/vx2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vx2;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvg;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvy;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwx;->zzc()Lcom/google/android/gms/internal/ads/rc2;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/vx2;->zzr:Lcom/google/android/gms/internal/ads/vx2;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final G()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zze:J

    return-wide v0
.end method

.method public final H()Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(I)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :cond_0
    return-object v0
.end method

.method public final I()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzg:J

    return-wide v0
.end method

.method public final J()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzh:J

    return-wide v0
.end method

.method public final L()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvg;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/uc2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx2;->zzi:Lcom/google/android/gms/internal/ads/sc2;

    sget-object v2, Lcom/google/android/gms/internal/ads/vx2;->zzj:Lcom/google/android/gms/internal/ads/tc2;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uc2;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/tc2;)V

    return-object v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/qx2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzk:Lcom/google/android/gms/internal/ads/qx2;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qx2;->J()Lcom/google/android/gms/internal/ads/qx2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final N()Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(I)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :cond_0
    return-object v0
.end method

.method public final O()Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(I)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :cond_0
    return-object v0
.end method

.method public final P()Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(I)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :cond_0
    return-object v0
.end method

.method public final Q()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzo:I

    return v0
.end method

.method public final R()Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(I)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :cond_0
    return-object v0
.end method

.method public final S()Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/vx2;->zzq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzb(I)Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwx;->b:Lcom/google/android/gms/internal/ads/zzwx;

    :cond_0
    return-object v0
.end method
