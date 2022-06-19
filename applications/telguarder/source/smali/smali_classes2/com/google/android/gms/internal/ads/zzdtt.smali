.class public final Lcom/google/android/gms/internal/ads/zzdtt;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdtt$zzb;,
        Lcom/google/android/gms/internal/ads/zzdtt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzdtt;",
        "Lcom/google/android/gms/internal/ads/zzdtt$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzdtt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhth:Lcom/google/android/gms/internal/ads/zzelj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelj<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzdtt$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;


# instance fields
.field private zzdv:I

.field private zzhtg:Lcom/google/android/gms/internal/ads/zzelh;

.field private zzhti:Ljava/lang/String;

.field private zzhtj:Ljava/lang/String;

.field private zzhtk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhth:Lcom/google/android/gms/internal/ads/zzelj;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtt;-><init>()V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    .line 46
    const-class v1, Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbil()Lcom/google/android/gms/internal/ads/zzelh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtg:Lcom/google/android/gms/internal/ads/zzelh;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhti:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtj:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtk:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdtt$zza;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtg:Lcom/google/android/gms/internal/ads/zzelh;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelh;->zzbge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelh;)Lcom/google/android/gms/internal/ads/zzelh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtg:Lcom/google/android/gms/internal/ads/zzelh;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtg:Lcom/google/android/gms/internal/ads/zzelh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtt$zza;->zzv()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzelh;->zzhh(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdtt;Lcom/google/android/gms/internal/ads/zzdtt$zza;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Lcom/google/android/gms/internal/ads/zzdtt$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdtt;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzhg(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaya()Lcom/google/android/gms/internal/ads/zzdtt$zzb;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    return-object v0
.end method

.method static synthetic zzayb()Lcom/google/android/gms/internal/ads/zzdtt;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    return-object v0
.end method

.method private final zzhg(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzdv:I

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhti:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdtv;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 37
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdtt;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/android/gms/internal/ads/zzdtt;

    monitor-enter p2

    .line 31
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdtt;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 34
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdtt;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 35
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

    .line 27
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzhtg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt$zza;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhti"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhtj"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhtk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    .line 26
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdtt;->zzhtl:Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdtw;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdtt;-><init>()V

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
