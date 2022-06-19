.class public final Lcom/google/android/gms/internal/ads/eht$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$k;",
        "Lcom/google/android/gms/internal/ads/eht$k$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbm:I

.field private zzcbn:Lcom/google/android/gms/internal/ads/eht$y;

.field private zzcbo:Lcom/google/android/gms/internal/ads/eht$y;

.field private zzcbp:Lcom/google/android/gms/internal/ads/eht$y;

.field private zzcbq:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/eht$y;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbr:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$k;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$k;->zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/eht$k;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$k;->zzcbq:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/eht$k;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$k;->zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

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

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$k;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/eht$k;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$k;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$k;->zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$k;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$k;->zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzcbm"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzcbn"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzcbo"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzcbp"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzcbq"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 7
    const-class v0, Lcom/google/android/gms/internal/ads/eht$y;

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "zzcbr"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u001b\u0006\u1004\u0004"

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$k;->zzcbs:Lcom/google/android/gms/internal/ads/eht$k;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$k;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$k$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$k$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$k;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$k;-><init>()V

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
