.class public final Lcom/google/android/gms/internal/ads/aut$a;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/aut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/aut$a$b;,
        Lcom/google/android/gms/internal/ads/aut$a$a;,
        Lcom/google/android/gms/internal/ads/aut$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/aut$a;",
        "Lcom/google/android/gms/internal/ads/aut$a$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzej:Lcom/google/android/gms/internal/ads/aut$a;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/aut$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdv:I

.field private zzdw:Ljava/lang/String;

.field private zzdx:J

.field private zzdy:Ljava/lang/String;

.field private zzdz:Ljava/lang/String;

.field private zzea:Ljava/lang/String;

.field private zzeb:J

.field private zzec:J

.field private zzed:Ljava/lang/String;

.field private zzee:J

.field private zzef:Ljava/lang/String;

.field private zzeg:Ljava/lang/String;

.field private zzeh:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/aut$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private zzei:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/aut$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aut$a;-><init>()V

    .line 67
    sput-object v0, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    .line 68
    const-class v1, Lcom/google/android/gms/internal/ads/aut$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdy:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdz:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzea:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzed:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzef:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzeg:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzeh:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/aut$a$b;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aut$a$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aut$a;J)V
    .locals 1

    .line 2015
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2016
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdx:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aut$a;Lcom/google/android/gms/internal/ads/aut$a$c;)V
    .locals 0

    .line 2034
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aut$a$c;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzei:I

    .line 2035
    iget p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aut$a;Ljava/lang/String;)V
    .locals 1

    .line 2011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2012
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2013
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdw:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/aut$a;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/aut$a;Ljava/lang/String;)V
    .locals 1

    .line 2018
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2019
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2020
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdy:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/aut$a;Ljava/lang/String;)V
    .locals 1

    .line 2022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2023
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2024
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdz:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/aut$a;Ljava/lang/String;)V
    .locals 1

    .line 2026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2027
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2028
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzea:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/aut$a;Ljava/lang/String;)V
    .locals 1

    .line 2030
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2031
    iget v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzdv:I

    .line 2032
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aut$a;->zzeg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 38
    sget-object p2, Lcom/google/android/gms/internal/ads/avu;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 55
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/aut$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 48
    const-class p2, Lcom/google/android/gms/internal/ads/aut$a;

    monitor-enter p2

    .line 49
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aut$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 52
    sput-object p1, Lcom/google/android/gms/internal/ads/aut$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 53
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

    .line 45
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzdw"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzdx"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string/jumbo v0, "zzdy"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string/jumbo v0, "zzdz"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string/jumbo v0, "zzea"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string/jumbo v0, "zzeb"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string/jumbo v0, "zzec"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string/jumbo v0, "zzed"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string/jumbo v0, "zzee"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string/jumbo v0, "zzef"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string/jumbo v0, "zzeg"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string/jumbo v0, "zzeh"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    .line 41
    const-class v0, Lcom/google/android/gms/internal/ads/aut$a$a;

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string/jumbo v0, "zzei"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/aut$a$c;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1002\u0008\n\u1008\t\u000b\u1008\n\u000c\u001b\r\u100c\u000b"

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a;->zzej:Lcom/google/android/gms/internal/ads/aut$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/aut$a;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/aut$a$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/aut$a$b;-><init>(Lcom/google/android/gms/internal/ads/avu;)V

    return-object p1

    .line 39
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/aut$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/aut$a;-><init>()V

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
