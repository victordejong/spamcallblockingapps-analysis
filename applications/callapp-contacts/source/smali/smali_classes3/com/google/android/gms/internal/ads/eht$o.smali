.class public final Lcom/google/android/gms/internal/ads/eht$o;
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
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$o;",
        "Lcom/google/android/gms/internal/ads/eht$o$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcdd:Ljava/lang/String;

.field private zzcde:I

.field private zzcdf:Lcom/google/android/gms/internal/ads/dnn;

.field private zzcdg:Lcom/google/android/gms/internal/ads/eht$y;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$o;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/eht$o;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdd:Ljava/lang/String;

    .line 1078
    invoke-static {}, Lcom/google/android/gms/internal/ads/dnk;->d()Lcom/google/android/gms/internal/ads/dnk;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdf:Lcom/google/android/gms/internal/ads/dnn;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/eht$o;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

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

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$o;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/eht$o;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$o;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$o;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$o;->zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzcdd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzcde"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/eid;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzcdf"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzcdg"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u0016\u0004\u1009\u0002"

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$o;->zzcdh:Lcom/google/android/gms/internal/ads/eht$o;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$o;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$o$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$o$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$o;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$o;-><init>()V

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
