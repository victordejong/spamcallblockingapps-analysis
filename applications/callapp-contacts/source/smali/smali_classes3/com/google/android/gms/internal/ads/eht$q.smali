.class public final Lcom/google/android/gms/internal/ads/eht$q;
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
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$q;",
        "Lcom/google/android/gms/internal/ads/eht$q$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcdg:Lcom/google/android/gms/internal/ads/eht$y;

.field private zzcdi:I

.field private zzcdk:Lcom/google/android/gms/internal/ads/eht$o;

.field private zzcdl:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/eht$x;",
            ">;"
        }
    .end annotation
.end field

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$q;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$q;->zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/eht$q;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$q;->zzcdl:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/eht$q;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$q;->zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$q;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/eht$q;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$q;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$q;->zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$q;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$q;->zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzcdk"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzcdl"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 7
    const-class v0, Lcom/google/android/gms/internal/ads/eht$x;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzcdi"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzcdg"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u1009\u0002"

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$q;->zzcdm:Lcom/google/android/gms/internal/ads/eht$q;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$q;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$q$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$q$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$q;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$q;-><init>()V

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
