.class public final Lcom/google/android/gms/internal/ads/dva;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dva$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dva;",
        "Lcom/google/android/gms/internal/ads/dva$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzacn:Lcom/google/android/gms/internal/ads/dva;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dva;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzaci:Ljava/lang/String;

.field zzacj:Ljava/lang/String;

.field zzack:J

.field zzacl:J

.field zzacm:J

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/dva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dva;-><init>()V

    .line 57
    sput-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    .line 58
    const-class v1, Lcom/google/android/gms/internal/ads/dva;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dva$a;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dva$a;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dva;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dva;

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dva;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dva;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dva;J)V
    .locals 1

    .line 1016
    iget v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    .line 1017
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dva;->zzack:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dva;Ljava/lang/String;)V
    .locals 1

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    iget v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    .line 1008
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dva;J)V
    .locals 1

    .line 1020
    iget v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    .line 1021
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dva;->zzacl:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dva;Ljava/lang/String;)V
    .locals 1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    iget v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    .line 1013
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    return-void
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dva;J)V
    .locals 1

    .line 1024
    iget v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/dva;->zzdv:I

    .line 1025
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dva;->zzacm:J

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/duz;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

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
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dva;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 39
    const-class p2, Lcom/google/android/gms/internal/ads/dva;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dva;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 43
    sput-object p1, Lcom/google/android/gms/internal/ads/dva;->zzek:Lcom/google/android/gms/internal/ads/dpc;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzaci"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzacj"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzack"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzacl"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzacm"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dva;->zzacn:Lcom/google/android/gms/internal/ads/dva;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dva;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dva$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dva$a;-><init>(Lcom/google/android/gms/internal/ads/duz;)V

    return-object p1

    .line 31
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dva;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dva;-><init>()V

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
