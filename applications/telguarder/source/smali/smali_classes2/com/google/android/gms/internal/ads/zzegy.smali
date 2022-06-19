.class public final Lcom/google/android/gms/internal/ads/zzegy;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegy;",
        "Lcom/google/android/gms/internal/ads/zzegy$zza;",
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
            "Lcom/google/android/gms/internal/ads/zzegy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziis:Lcom/google/android/gms/internal/ads/zzegy;


# instance fields
.field private zziiq:Ljava/lang/String;

.field private zziir:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzegk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegy;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzegy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegy;->zziiq:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegy;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegy;->zziir:Lcom/google/android/gms/internal/ads/zzell;

    return-void
.end method

.method public static zzbfk()Lcom/google/android/gms/internal/ads/zzegy;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    return-object v0
.end method

.method static synthetic zzbfl()Lcom/google/android/gms/internal/ads/zzegy;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeha;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegy;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzegy;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegy;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegy;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziiq"

    aput-object v0, p1, p2

    const-string p2, "zziir"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    const-class p3, Lcom/google/android/gms/internal/ads/zzegk;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzegy;->zziis:Lcom/google/android/gms/internal/ads/zzegy;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegy$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegy$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeha;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegy;-><init>()V

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

.method public final zzbfj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzegk;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegy;->zziir:Lcom/google/android/gms/internal/ads/zzell;

    return-object v0
.end method
