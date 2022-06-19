.class public final Lcom/google/android/gms/internal/ads/dhd;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dhd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dhd;",
        "Lcom/google/android/gms/internal/ads/dhd$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dhd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziid:Lcom/google/android/gms/internal/ads/dhd;


# instance fields
.field zzihc:I

.field zzihd:Lcom/google/android/gms/internal/ads/dlw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/dhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dhd;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/ads/dhd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhd;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dhd$a;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dhd$a;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dhd;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dhd;)V
    .locals 1

    const/4 v0, 0x0

    .line 1005
    iput v0, p0, Lcom/google/android/gms/internal/ads/dhd;->zzihc:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dhd;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 0

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhd;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dhd;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/dhe;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 29
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dhd;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/dhd;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dhd;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/ads/dhd;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzihc"

    aput-object v1, p1, p2

    const-string p2, "zzihd"

    aput-object p2, p1, v0

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/dhd;->zziid:Lcom/google/android/gms/internal/ads/dhd;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dhd;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dhd$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dhd$a;-><init>(Lcom/google/android/gms/internal/ads/dhe;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dhd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dhd;-><init>()V

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
