.class public final Lcom/google/android/gms/internal/ads/dhr;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dhr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dhr;",
        "Lcom/google/android/gms/internal/ads/dhr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dhr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziix:Lcom/google/android/gms/internal/ads/dhr;


# instance fields
.field zzihc:I

.field private zziin:Lcom/google/android/gms/internal/ads/dhn;

.field zziiv:Lcom/google/android/gms/internal/ads/dlw;

.field zziiw:Lcom/google/android/gms/internal/ads/dlw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/dhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dhr;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/ads/dhr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhr;->zziiv:Lcom/google/android/gms/internal/ads/dlw;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhr;->zziiw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dhr;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dhr;)V
    .locals 1

    const/4 v0, 0x0

    .line 1006
    iput v0, p0, Lcom/google/android/gms/internal/ads/dhr;->zzihc:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dhr;Lcom/google/android/gms/internal/ads/dhn;)V
    .locals 0

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhr;->zziin:Lcom/google/android/gms/internal/ads/dhn;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dhr;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 0

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhr;->zziiv:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dhr$a;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dhr$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dhr;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 0

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhr;->zziiw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/dhr;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/dhr;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dhn;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhr;->zziin:Lcom/google/android/gms/internal/ads/dhn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dhn;->d()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/dhs;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 38
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dhr;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 31
    const-class p2, Lcom/google/android/gms/internal/ads/dhr;

    monitor-enter p2

    .line 32
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dhr;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 35
    sput-object p1, Lcom/google/android/gms/internal/ads/dhr;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 36
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

    .line 28
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzihc"

    aput-object v1, p1, p2

    const-string p2, "zziin"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zziiv"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zziiw"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dhr;->zziix:Lcom/google/android/gms/internal/ads/dhr;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dhr;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dhr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dhr$a;-><init>(Lcom/google/android/gms/internal/ads/dhs;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dhr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dhr;-><init>()V

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
