.class public final Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;


# instance fields
.field private zzdv:I

.field private zzixq:B

.field private zzixt:Ljava/lang/String;

.field private zzjae:I

.field private zzjaf:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;

.field private zzjag:Lcom/google/android/gms/internal/ads/zzepa$zzb$zze;

.field private zzjah:I

.field private zzjai:Lcom/google/android/gms/internal/ads/zzelh;

.field private zzjaj:Ljava/lang/String;

.field private zzjak:I

.field private zzjal:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixq:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixt:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbil()Lcom/google/android/gms/internal/ads/zzelh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjai:Lcom/google/android/gms/internal/ads/zzelh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjaj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjal:Lcom/google/android/gms/internal/ads/zzell;

    return-void
.end method

.method private final setId(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjae:I

    return-void
.end method

.method private final setUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixt:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjaf:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjak:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzdv:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->setId(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzd;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzij(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbme()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    return-object v0
.end method

.method public static synthetic zzbmf()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    return-object v0
.end method

.method private final zzij(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjal:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzbge()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjal:Lcom/google/android/gms/internal/ads/zzell;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjal:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixt:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeoz;->zzel:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixq:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzixq:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, p3

    const-string p2, "zzjae"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzixt"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjaf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjag"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjah"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjai"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjaj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzjak"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zza;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzjal"

    aput-object p3, p1, p2

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjam:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;-><init>()V

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

.method public final zzbmd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzh;->zzjal:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
