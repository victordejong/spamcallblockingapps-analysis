.class public final Lcom/google/android/gms/internal/ads/eht$j;
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
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$j;",
        "Lcom/google/android/gms/internal/ads/eht$j$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbg:Ljava/lang/String;

.field private zzcbh:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/eht$h;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbi:I

.field private zzcbj:I

.field private zzcbk:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$j;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/eht$j;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbg:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbh:Lcom/google/android/gms/internal/ads/dnr;

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbi:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbj:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbk:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/eht$j;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$j;Ljava/lang/String;)V
    .locals 1

    .line 2008
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    iget v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzdv:I

    .line 2010
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbg:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/eht$j;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$j;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/eht$j;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$j;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$j;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzcbg"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzcbh"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 15
    const-class v0, Lcom/google/android/gms/internal/ads/eht$h;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string/jumbo v0, "zzcbi"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string/jumbo v0, "zzcbj"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string/jumbo v0, "zzcbk"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u100c\u0002\u0005\u100c\u0003"

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$j;->zzcbl:Lcom/google/android/gms/internal/ads/eht$j;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$j;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$j$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$j$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$j;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$j;-><init>()V

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
