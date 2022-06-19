.class public final Lcom/google/android/gms/internal/ads/zzgv;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzgv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzgv;",
        "Lcom/google/android/gms/internal/ads/zzgv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzaci:Lcom/google/android/gms/internal/ads/zzgv;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzgv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzacd:Ljava/lang/String;

.field private zzace:Ljava/lang/String;

.field private zzacf:J

.field private zzacg:J

.field private zzach:J

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>()V

    .line 57
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    .line 58
    const-class v1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzace:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgv;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;->zzdg(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgv;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgv;->zzat(Ljava/lang/String;)V

    return-void
.end method

.method private final zzat(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacd:Ljava/lang/String;

    return-void
.end method

.method private final zzau(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzace:Ljava/lang/String;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzgv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgv;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgv;J)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;->zzdh(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgv;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgv;->zzau(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgv;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;->zzdi(J)V

    return-void
.end method

.method private final zzdg(J)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacf:J

    return-void
.end method

.method private final zzdh(J)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacg:J

    return-void
.end method

.method private final zzdi(J)V
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzdv:I

    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzach:J

    return-void
.end method

.method public static zzdl()Lcom/google/android/gms/internal/ads/zzgv$zza;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgv$zza;

    return-object v0
.end method

.method public static zzdm()Lcom/google/android/gms/internal/ads/zzgv;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    return-object v0
.end method

.method static synthetic zzdn()Lcom/google/android/gms/internal/ads/zzgv;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzgv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgv;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgu;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 46
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 39
    const-class p2, Lcom/google/android/gms/internal/ads/zzgv;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 43
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 44
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

    .line 36
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzacd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzace"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzacf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzacg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzach"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 35
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgv;->zzaci:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgv;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgu;)V

    return-object p1

    .line 31
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgv;-><init>()V

    return-object p1

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

.method public final zzdg()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdh()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzace:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdi()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacf:J

    return-wide v0
.end method

.method public final zzdj()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzacg:J

    return-wide v0
.end method

.method public final zzdk()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzach:J

    return-wide v0
.end method
