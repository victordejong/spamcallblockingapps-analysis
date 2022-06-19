.class public final Lcom/google/android/gms/internal/ads/cwa;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cwa$b;,
        Lcom/google/android/gms/internal/ads/cwa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/cwa;",
        "Lcom/google/android/gms/internal/ads/cwa$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/cwa;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwu:Lcom/google/android/gms/internal/ads/cwa;


# instance fields
.field private zzdv:I

.field private zzdw:Ljava/lang/String;

.field private zzhwr:I

.field private zzhws:Ljava/lang/String;

.field private zzhwt:Lcom/google/android/gms/internal/ads/cvt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/cwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwa;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/cwa;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cwa;->zzhws:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cwa$b;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwa$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cwa;Lcom/google/android/gms/internal/ads/cvt;)V
    .locals 0

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzhwt:Lcom/google/android/gms/internal/ads/cvt;

    .line 1014
    iget p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cwa;Lcom/google/android/gms/internal/ads/cwa$a;)V
    .locals 0

    .line 1005
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwa$a;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzhwr:I

    .line 1006
    iget p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cwa;Ljava/lang/String;)V
    .locals 1

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    iget v0, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdv:I

    .line 1010
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwa;->zzdw:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cwa;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/cvz;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/cwa;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/cwa;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/cwa;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/cwa;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzhwr"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwa$a;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzhws"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzhwt"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003"

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/cwa;->zzhwu:Lcom/google/android/gms/internal/ads/cwa;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/cwa;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/cwa$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/cwa$b;-><init>(Lcom/google/android/gms/internal/ads/cvz;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/cwa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cwa;-><init>()V

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
