.class public final Lcom/google/android/gms/internal/ads/zzegk;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegk;",
        "Lcom/google/android/gms/internal/ads/zzegk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihp:Lcom/google/android/gms/internal/ads/zzegk;


# instance fields
.field private zzigs:Ljava/lang/String;

.field private zzihl:Ljava/lang/String;

.field private zzihm:I

.field private zzihn:Z

.field private zziho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegk;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegk;->zzihp:Lcom/google/android/gms/internal/ads/zzegk;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzihl:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzigs:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zziho:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbej()Lcom/google/android/gms/internal/ads/zzegk;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegk;->zzihp:Lcom/google/android/gms/internal/ads/zzegk;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegj;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/zzegk;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegk;->zzihp:Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 25
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegk;->zzihp:Lcom/google/android/gms/internal/ads/zzegk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzihl"

    aput-object v0, p1, p2

    const-string p2, "zzigs"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzihm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzihn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziho"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/ads/zzegk;->zzihp:Lcom/google/android/gms/internal/ads/zzegk;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzegk;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegk$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegj;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegk;-><init>()V

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

.method public final zzbdx()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzigs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbef()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzihl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbeg()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzihm:I

    return v0
.end method

.method public final zzbeh()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zzihn:Z

    return v0
.end method

.method public final zzbei()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegk;->zziho:Ljava/lang/String;

    return-object v0
.end method
