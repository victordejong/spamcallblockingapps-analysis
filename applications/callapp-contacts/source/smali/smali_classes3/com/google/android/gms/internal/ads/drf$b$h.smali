.class public final Lcom/google/android/gms/internal/ads/drf$b$h;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$h$b;,
        Lcom/google/android/gms/internal/ads/drf$b$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b$h;",
        "Lcom/google/android/gms/internal/ads/drf$b$h$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;


# instance fields
.field private zzdv:I

.field private zzjat:B

.field zzjaw:Ljava/lang/String;

.field private zzjdh:I

.field private zzjdi:Lcom/google/android/gms/internal/ads/drf$b$d;

.field private zzjdj:Lcom/google/android/gms/internal/ads/drf$b$e;

.field private zzjdk:I

.field private zzjdl:Lcom/google/android/gms/internal/ads/dnn;

.field private zzjdm:Ljava/lang/String;

.field private zzjdn:I

.field zzjdo:Lcom/google/android/gms/internal/ads/dnr;
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

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b$h;-><init>()V

    .line 61
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    .line 62
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjat:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjaw:Ljava/lang/String;

    .line 1078
    invoke-static {}, Lcom/google/android/gms/internal/ads/dnk;->d()Lcom/google/android/gms/internal/ads/dnk;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdl:Lcom/google/android/gms/internal/ads/dnn;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdm:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdo:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/drf$b$h$b;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf$b$h$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$h;I)V
    .locals 1

    .line 2008
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    .line 2009
    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdh:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$h;Lcom/google/android/gms/internal/ads/drf$b$d;)V
    .locals 0

    .line 2016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2017
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdi:Lcom/google/android/gms/internal/ads/drf$b$d;

    .line 2018
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$h;Lcom/google/android/gms/internal/ads/drf$b$h$a;)V
    .locals 0

    .line 2020
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/drf$b$h$a;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdn:I

    .line 2021
    iget p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$h;Ljava/lang/String;)V
    .locals 1

    .line 2012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2013
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzdv:I

    .line 2014
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjaw:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/drf$b$h;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/drf$b$h;Ljava/lang/String;)V
    .locals 2

    .line 2024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdo:Lcom/google/android/gms/internal/ads/dnr;

    .line 2027
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2029
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdo:Lcom/google/android/gms/internal/ads/dnr;

    .line 2030
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdo:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnr;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-byte p1, v1

    .line 51
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjat:B

    return-object v2

    .line 50
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$h;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_2

    .line 43
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b$h;

    monitor-enter p2

    .line 44
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$h;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 46
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 47
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b$h;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 48
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

    .line 40
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, v0

    const-string p2, "zzjdh"

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string v0, "zzjaw"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzjdi"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzjdj"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzjdk"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzjdl"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "zzjdm"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "zzjdn"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/drf$b$h$a;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "zzjdo"

    aput-object v0, p1, p2

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$h;->zzjdp:Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b$h;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$h$b;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/drf$b$h$b;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 34
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$h;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b$h;-><init>()V

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
