.class public final Lcom/google/android/gms/internal/ads/zzegw;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegw;",
        "Lcom/google/android/gms/internal/ads/zzegw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziii:Lcom/google/android/gms/internal/ads/zzegw;


# instance fields
.field private zziig:Ljava/lang/String;

.field private zziih:Lcom/google/android/gms/internal/ads/zzegg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegw;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zziig:Ljava/lang/String;

    return-void
.end method

.method public static zzbfh()Lcom/google/android/gms/internal/ads/zzegw;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    return-object v0
.end method

.method static synthetic zzbfi()Lcom/google/android/gms/internal/ads/zzegw;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    return-object v0
.end method

.method public static zzy(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzegw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegw;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegv;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegw;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzegw;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegw;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegw;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziig"

    aput-object v0, p1, p2

    const-string p2, "zziih"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzegw;->zziii:Lcom/google/android/gms/internal/ads/zzegw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzegw;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegw$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegv;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegw;-><init>()V

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

.method public final zzbff()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zziig:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbfg()Lcom/google/android/gms/internal/ads/zzegg;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zziih:Lcom/google/android/gms/internal/ads/zzegg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegg;->zzbed()Lcom/google/android/gms/internal/ads/zzegg;

    move-result-object v0

    :cond_0
    return-object v0
.end method
