.class public final Lcom/google/android/gms/internal/ads/drf$b;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$b;,
        Lcom/google/android/gms/internal/ads/drf$b$i;,
        Lcom/google/android/gms/internal/ads/drf$b$f;,
        Lcom/google/android/gms/internal/ads/drf$b$a;,
        Lcom/google/android/gms/internal/ads/drf$b$h;,
        Lcom/google/android/gms/internal/ads/drf$b$e;,
        Lcom/google/android/gms/internal/ads/drf$b$d;,
        Lcom/google/android/gms/internal/ads/drf$b$c;,
        Lcom/google/android/gms/internal/ads/drf$b$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b;",
        "Lcom/google/android/gms/internal/ads/drf$b$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjbv:Lcom/google/android/gms/internal/ads/drf$b;


# instance fields
.field private zzcan:I

.field private zzdv:I

.field private zzjap:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjat:B

.field zzjaw:Ljava/lang/String;

.field private zzjbg:I

.field private zzjbh:Ljava/lang/String;

.field private zzjbi:Ljava/lang/String;

.field private zzjbj:Lcom/google/android/gms/internal/ads/drf$b$a;

.field zzjbk:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/drf$b$h;",
            ">;"
        }
    .end annotation
.end field

.field zzjbl:Ljava/lang/String;

.field private zzjbm:Lcom/google/android/gms/internal/ads/drf$b$f;

.field private zzjbn:Z

.field private zzjbo:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzjbp:Ljava/lang/String;

.field private zzjbq:Z

.field private zzjbr:Z

.field private zzjbs:Lcom/google/android/gms/internal/ads/drf$b$i;

.field private zzjbt:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzjbu:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b;-><init>()V

    .line 108
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    .line 109
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjat:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjaw:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbh:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbi:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbk:Lcom/google/android/gms/internal/ads/dnr;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbl:Ljava/lang/String;

    .line 2084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbo:Lcom/google/android/gms/internal/ads/dnr;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbp:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjap:Lcom/google/android/gms/internal/ads/dlw;

    .line 3084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbt:Lcom/google/android/gms/internal/ads/dnr;

    .line 4084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbu:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/drf$b$b;
    .locals 1

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf$b$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;)V
    .locals 1

    .line 5044
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    .line 5046
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    .line 5047
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbl:Ljava/lang/String;

    .line 5048
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbl:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Lcom/google/android/gms/internal/ads/drf$b$a;)V
    .locals 0

    .line 5026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5027
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbj:Lcom/google/android/gms/internal/ads/drf$b$a;

    .line 5028
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Lcom/google/android/gms/internal/ads/drf$b$f;)V
    .locals 0

    .line 5050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5051
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbm:Lcom/google/android/gms/internal/ads/drf$b$f;

    .line 5052
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Lcom/google/android/gms/internal/ads/drf$b$g;)V
    .locals 0

    .line 5014
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/drf$b$g;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzcan:I

    .line 5015
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Lcom/google/android/gms/internal/ads/drf$b$h;)V
    .locals 2

    .line 5031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5033
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbk:Lcom/google/android/gms/internal/ads/dnr;

    .line 5034
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5036
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbk:Lcom/google/android/gms/internal/ads/dnr;

    .line 5037
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbk:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Lcom/google/android/gms/internal/ads/drf$b$i;)V
    .locals 0

    .line 5054
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5055
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbs:Lcom/google/android/gms/internal/ads/drf$b$i;

    .line 5056
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Ljava/lang/Iterable;)V
    .locals 2

    .line 5059
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbt:Lcom/google/android/gms/internal/ads/dnr;

    .line 5060
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5062
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbt:Lcom/google/android/gms/internal/ads/dnr;

    .line 5063
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbt:Lcom/google/android/gms/internal/ads/dnr;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b;Ljava/lang/String;)V
    .locals 1

    .line 5018
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5019
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    .line 5020
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjaw:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/drf$b;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/drf$b;Ljava/lang/Iterable;)V
    .locals 2

    .line 5066
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbu:Lcom/google/android/gms/internal/ads/dnr;

    .line 5067
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5069
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbu:Lcom/google/android/gms/internal/ads/dnr;

    .line 5070
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbu:Lcom/google/android/gms/internal/ads/dnr;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/drf$b;Ljava/lang/String;)V
    .locals 1

    .line 5022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5023
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    .line 5024
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbh:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/drf$b;Ljava/lang/String;)V
    .locals 1

    .line 5040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5041
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzdv:I

    .line 5042
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-byte p1, v1

    .line 92
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjat:B

    return-object v2

    .line 91
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_2

    .line 84
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b;

    monitor-enter p2

    .line 85
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 87
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 88
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 89
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

    .line 81
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    return-object p1

    :pswitch_4
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, v0

    const-string p2, "zzjaw"

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string v0, "zzjbh"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzjbi"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzjbk"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 76
    const-class v0, Lcom/google/android/gms/internal/ads/drf$b$h;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzjbn"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "zzjbo"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "zzjbp"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "zzjbq"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "zzjbr"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "zzcan"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/drf$b$g;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "zzjbg"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/drf$a$c;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "zzjbj"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "zzjbl"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "zzjbm"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "zzjap"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "zzjbs"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "zzjbt"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "zzjbu"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001\u1008\u0002\u0002\u1008\u0003\u0003\u1008\u0004\u0004\u041b\u0005\u1007\u0008\u0006\u001a\u0007\u1008\t\u0008\u1007\n\t\u1007\u000b\n\u100c\u0000\u000b\u100c\u0001\u000c\u1009\u0005\r\u1008\u0006\u000e\u1009\u0007\u000f\u100a\u000c\u0011\u1009\r\u0014\u001a\u0015\u001a"

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b;->zzjbv:Lcom/google/android/gms/internal/ads/drf$b;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$b;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/drf$b$b;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 74
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b;-><init>()V

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
