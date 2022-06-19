.class public final Lcom/google/android/gms/internal/ads/eht$u;
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
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$u;",
        "Lcom/google/android/gms/internal/ads/eht$u$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcfc:I

.field private zzcfd:I

.field private zzcfe:I

.field private zzcff:I

.field private zzcfg:I

.field private zzcfh:I

.field private zzcfi:I

.field private zzcfj:I

.field private zzcfk:I

.field private zzcfl:I

.field private zzcfm:Lcom/google/android/gms/internal/ads/eht$v;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$u;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/eht$u;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfc:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfd:I

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/eht$u;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$u;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/eht$u;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$u;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$u;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$u;->zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzcfc"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzcfd"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzcfe"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzcff"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "zzcfg"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "zzcfh"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "zzcfi"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "zzcfj"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "zzcfk"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "zzcfl"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "zzcfm"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1004\t\u000b\u1009\n"

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$u;->zzcfn:Lcom/google/android/gms/internal/ads/eht$u;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$u;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$u$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$u$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$u;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$u;-><init>()V

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
