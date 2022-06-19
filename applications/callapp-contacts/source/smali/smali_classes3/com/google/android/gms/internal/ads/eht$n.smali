.class public final Lcom/google/android/gms/internal/ads/eht$n;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$n;",
        "Lcom/google/android/gms/internal/ads/eht$n$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzccp:I

.field zzccq:Ljava/lang/String;

.field private zzccr:I

.field private zzccs:I

.field private zzcct:Lcom/google/android/gms/internal/ads/eht$z;

.field private zzccu:Lcom/google/android/gms/internal/ads/dns;

.field zzccv:Lcom/google/android/gms/internal/ads/eht$l;

.field private zzccw:Lcom/google/android/gms/internal/ads/eht$m;

.field private zzccx:Lcom/google/android/gms/internal/ads/eht$r;

.field zzccy:Lcom/google/android/gms/internal/ads/eht$a;

.field private zzccz:Lcom/google/android/gms/internal/ads/eht$t;

.field private zzcda:Lcom/google/android/gms/internal/ads/eht$f;

.field private zzcdb:Lcom/google/android/gms/internal/ads/eht$g;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$n;-><init>()V

    .line 78
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    .line 79
    const-class v1, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccq:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccs:I

    .line 1083
    invoke-static {}, Lcom/google/android/gms/internal/ads/doh;->d()Lcom/google/android/gms/internal/ads/doh;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccu:Lcom/google/android/gms/internal/ads/dns;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/eht$n$a;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$n$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;)V
    .locals 1

    .line 2083
    invoke-static {}, Lcom/google/android/gms/internal/ads/doh;->d()Lcom/google/android/gms/internal/ads/doh;

    move-result-object v0

    .line 2023
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccu:Lcom/google/android/gms/internal/ads/dns;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$a;)V
    .locals 0

    .line 3031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3032
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccy:Lcom/google/android/gms/internal/ads/eht$a;

    .line 3033
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$f;)V
    .locals 0

    .line 3039
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3040
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzcda:Lcom/google/android/gms/internal/ads/eht$f;

    .line 3041
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$g;)V
    .locals 0

    .line 3043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3044
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdb:Lcom/google/android/gms/internal/ads/eht$g;

    .line 3045
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$l;)V
    .locals 0

    .line 3026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3027
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccv:Lcom/google/android/gms/internal/ads/eht$l;

    .line 3028
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Lcom/google/android/gms/internal/ads/eht$t;)V
    .locals 0

    .line 3035
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3036
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccz:Lcom/google/android/gms/internal/ads/eht$t;

    .line 3037
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Ljava/lang/Iterable;)V
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccu:Lcom/google/android/gms/internal/ads/dns;

    .line 2013
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dns;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2016
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dns;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 2019
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dns;->b(I)Lcom/google/android/gms/internal/ads/dns;

    move-result-object v0

    .line 2020
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccu:Lcom/google/android/gms/internal/ads/dns;

    .line 2021
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccu:Lcom/google/android/gms/internal/ads/dns;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$n;Ljava/lang/String;)V
    .locals 1

    .line 2007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2008
    iget v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzdv:I

    .line 2009
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$n;->zzccq:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/eht$n;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 48
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 65
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$n;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 58
    const-class p2, Lcom/google/android/gms/internal/ads/eht$n;

    monitor-enter p2

    .line 59
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$n;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 62
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$n;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 63
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

    .line 55
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzccp"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzccq"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string/jumbo v0, "zzccr"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string/jumbo v0, "zzccs"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string/jumbo v0, "zzcct"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string/jumbo v0, "zzccu"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string/jumbo v0, "zzccv"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string/jumbo v0, "zzccw"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string/jumbo v0, "zzccx"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string/jumbo v0, "zzccy"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string/jumbo v0, "zzccz"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string/jumbo v0, "zzcda"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string/jumbo v0, "zzcdb"

    aput-object v0, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$n;->zzcdc:Lcom/google/android/gms/internal/ads/eht$n;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$n;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$n$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$n$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 49
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$n;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$n;-><init>()V

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
