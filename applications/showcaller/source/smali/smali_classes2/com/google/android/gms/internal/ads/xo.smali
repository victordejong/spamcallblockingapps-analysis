.class public final Lcom/google/android/gms/internal/ads/xo;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/xo;",
        "Lcom/google/android/gms/internal/ads/wo;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/oe3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oe3<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzr:Lcom/google/android/gms/internal/ads/xo;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/ne3;

.field private zzk:Lcom/google/android/gms/internal/ads/so;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xo;->zzj:Lcom/google/android/gms/internal/ads/oe3;

    new-instance v0, Lcom/google/android/gms/internal/ads/xo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    const-class v1, Lcom/google/android/gms/internal/ads/xo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ie3;->l()Lcom/google/android/gms/internal/ads/ne3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzi:Lcom/google/android/gms/internal/ads/ne3;

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method public static M([B)Lcom/google/android/gms/internal/ads/xo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/ie3;->t(Lcom/google/android/gms/internal/ads/ie3;[B)Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/xo;

    return-object p0
.end method

.method public static O()Lcom/google/android/gms/internal/ads/wo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wo;

    return-object v0
.end method

.method static synthetic Q()Lcom/google/android/gms/internal/ads/xo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    return-object v0
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/xo;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xo;->zze:J

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/xo;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzg:J

    return-void
.end method

.method static synthetic T(Lcom/google/android/gms/internal/ads/xo;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzh:J

    return-void
.end method

.method static synthetic U(Lcom/google/android/gms/internal/ads/xo;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzi:Lcom/google/android/gms/internal/ads/ne3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/re3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ie3;->m(Lcom/google/android/gms/internal/ads/ne3;)Lcom/google/android/gms/internal/ads/ne3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzi:Lcom/google/android/gms/internal/ads/ne3;

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->zzi:Lcom/google/android/gms/internal/ads/ne3;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazx;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ne3;->d0(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic V(Lcom/google/android/gms/internal/ads/xo;Lcom/google/android/gms/internal/ads/so;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzk:Lcom/google/android/gms/internal/ads/so;

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzo:I

    return-void
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/xo;Lcom/google/android/gms/internal/ads/zzbbm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbm;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzq:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method

.method static synthetic f0(Lcom/google/android/gms/internal/ads/xo;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/xo;->zzb:I

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/wo;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/wo;-><init>(Lcom/google/android/gms/internal/ads/um;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/xo;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xo;-><init>()V

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

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/ao;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, v1

    const-string v1, "zzg"

    aput-object v1, p1, v0

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazx;->zzc()Lcom/google/android/gms/internal/ads/me3;

    move-result-object v0

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-string v0, "zzk"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    const-string v0, "zzl"

    aput-object v0, p1, p3

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const/16 p3, 0xb

    const-string v0, "zzm"

    aput-object v0, p1, p3

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const/16 p3, 0xd

    const-string v0, "zzn"

    aput-object v0, p1, p3

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const/16 p3, 0xf

    const-string v0, "zzo"

    aput-object v0, p1, p3

    const/16 p3, 0x10

    const-string v0, "zzp"

    aput-object v0, p1, p3

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbm;->zzc()Lcom/google/android/gms/internal/ads/me3;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/xo;->zzr:Lcom/google/android/gms/internal/ads/xo;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n"

    .line 8
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xo;->zze:J

    return-wide v0
.end method

.method public final F()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzg:J

    return-wide v0
.end method

.method public final G()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzh:J

    return-wide v0
.end method

.method public final H()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/pe3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->zzi:Lcom/google/android/gms/internal/ads/ne3;

    sget-object v2, Lcom/google/android/gms/internal/ads/xo;->zzj:Lcom/google/android/gms/internal/ads/oe3;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pe3;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/oe3;)V

    return-object v0
.end method

.method public final I()Lcom/google/android/gms/internal/ads/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzk:Lcom/google/android/gms/internal/ads/so;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/so;->F()Lcom/google/android/gms/internal/ads/so;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzo:I

    return v0
.end method

.method public final L()Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzbbm;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->d:Lcom/google/android/gms/internal/ads/zzbbm;

    :cond_0
    return-object v0
.end method

.method public final Y()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final Z()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xo;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bo;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
