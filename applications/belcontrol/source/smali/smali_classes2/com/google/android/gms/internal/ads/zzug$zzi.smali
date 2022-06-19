.class public final Lcom/google/android/gms/internal/ads/zzug$zzi;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzi;",
        "Lcom/google/android/gms/internal/ads/zzug$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzccd:I

.field private zzcce:Ljava/lang/String;

.field private zzccf:I

.field private zzccg:I

.field private zzcch:Lcom/google/android/gms/internal/ads/zzug$zzu;

.field private zzcci:Lcom/google/android/gms/internal/ads/zzelm;

.field private zzccj:Lcom/google/android/gms/internal/ads/zzug$zzg;

.field private zzcck:Lcom/google/android/gms/internal/ads/zzug$zzh;

.field private zzccl:Lcom/google/android/gms/internal/ads/zzug$zzm;

.field private zzccm:Lcom/google/android/gms/internal/ads/zzug$zza;

.field private zzccn:Lcom/google/android/gms/internal/ads/zzug$zzo;

.field private zzcco:Lcom/google/android/gms/internal/ads/zzug$zzae;

.field private zzccp:Lcom/google/android/gms/internal/ads/zzug$zzb;

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcce:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccg:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbim()Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcci:Lcom/google/android/gms/internal/ads/zzelm;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zza;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccm:Lcom/google/android/gms/internal/ads/zzug$zza;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzae;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcco:Lcom/google/android/gms/internal/ads/zzug$zzae;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzb;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccp:Lcom/google/android/gms/internal/ads/zzug$zzb;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzg;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccj:Lcom/google/android/gms/internal/ads/zzug$zzg;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzoc()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Lcom/google/android/gms/internal/ads/zzug$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Lcom/google/android/gms/internal/ads/zzug$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Lcom/google/android/gms/internal/ads/zzug$zzae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Lcom/google/android/gms/internal/ads/zzug$zzae;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Lcom/google/android/gms/internal/ads/zzug$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Lcom/google/android/gms/internal/ads/zzug$zzg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Lcom/google/android/gms/internal/ads/zzug$zzg;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Lcom/google/android/gms/internal/ads/zzug$zzo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Lcom/google/android/gms/internal/ads/zzug$zzo;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzbx(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccn:Lcom/google/android/gms/internal/ads/zzug$zzo;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcci:Lcom/google/android/gms/internal/ads/zzelm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzbge()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzelm;->zzhi(I)Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcci:Lcom/google/android/gms/internal/ads/zzelm;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcci:Lcom/google/android/gms/internal/ads/zzelm;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzejh;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzbx(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcce:Ljava/lang/String;

    return-void
.end method

.method private final zzoc()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbim()Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcci:Lcom/google/android/gms/internal/ads/zzelm;

    return-void
.end method

.method public static zzof()Lcom/google/android/gms/internal/ads/zzug$zzi$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-object v0
.end method

.method public static synthetic zzog()Lcom/google/android/gms/internal/ads/zzug$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzccd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcce"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzccf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzccg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcch"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcci"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzccj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzcck"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzccl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzccm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzccn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzcco"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzccp"

    aput-object p3, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccq:Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzob()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzcce:Ljava/lang/String;

    return-object v0
.end method

.method public final zzod()Lcom/google/android/gms/internal/ads/zzug$zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccj:Lcom/google/android/gms/internal/ads/zzug$zzg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzny()Lcom/google/android/gms/internal/ads/zzug$zzg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzi;->zzccm:Lcom/google/android/gms/internal/ads/zzug$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zza;->zznj()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method
