.class public final Lcom/google/android/gms/internal/ads/cvt;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cvt$b;,
        Lcom/google/android/gms/internal/ads/cvt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/cvt;",
        "Lcom/google/android/gms/internal/ads/cvt$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/cvt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwj:Lcom/google/android/gms/internal/ads/dnp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnp<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/cvt$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwn:Lcom/google/android/gms/internal/ads/cvt;


# instance fields
.field private zzdv:I

.field private zzhwi:Lcom/google/android/gms/internal/ads/dnn;

.field private zzhwk:Ljava/lang/String;

.field private zzhwl:Ljava/lang/String;

.field private zzhwm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/cvw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwj:Lcom/google/android/gms/internal/ads/dnp;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/cvt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvt;-><init>()V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    .line 46
    const-class v1, Lcom/google/android/gms/internal/ads/cvt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 1078
    invoke-static {}, Lcom/google/android/gms/internal/ads/dnk;->d()Lcom/google/android/gms/internal/ads/dnk;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwi:Lcom/google/android/gms/internal/ads/dnn;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwk:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwm:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cvt$b;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvt$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvt;Lcom/google/android/gms/internal/ads/cvt$a;)V
    .locals 2

    .line 2007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwi:Lcom/google/android/gms/internal/ads/dnn;

    .line 2010
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2012
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnn;)Lcom/google/android/gms/internal/ads/dnn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwi:Lcom/google/android/gms/internal/ads/dnn;

    .line 2013
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwi:Lcom/google/android/gms/internal/ads/dnn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cvt$a;->zzv()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnn;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvt;Ljava/lang/String;)V
    .locals 1

    .line 2015
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    iget v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cvt;->zzdv:I

    .line 2017
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvt;->zzhwk:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cvt;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/cvv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

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
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/cvt;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 30
    const-class p2, Lcom/google/android/gms/internal/ads/cvt;

    monitor-enter p2

    .line 31
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/cvt;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 34
    sput-object p1, Lcom/google/android/gms/internal/ads/cvt;->zzek:Lcom/google/android/gms/internal/ads/dpc;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzhwi"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvt$a;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzhwk"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzhwl"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzhwm"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/cvt;->zzhwn:Lcom/google/android/gms/internal/ads/cvt;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/cvt;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/cvt$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/cvt$b;-><init>(Lcom/google/android/gms/internal/ads/cvw;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/cvt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cvt;-><init>()V

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
