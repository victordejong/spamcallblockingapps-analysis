.class public final Lcom/google/android/gms/internal/ads/dgf;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dgf;",
        "Lcom/google/android/gms/internal/ads/dgf$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dgf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihm:Lcom/google/android/gms/internal/ads/dgf;


# instance fields
.field zzihc:I

.field private zzihk:Lcom/google/android/gms/internal/ads/dgj;

.field private zzihl:Lcom/google/android/gms/internal/ads/dhy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/dgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgf;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/dgf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dgf;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgf;I)V
    .locals 0

    .line 1004
    iput p1, p0, Lcom/google/android/gms/internal/ads/dgf;->zzihc:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgf;Lcom/google/android/gms/internal/ads/dgj;)V
    .locals 0

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgf;->zzihk:Lcom/google/android/gms/internal/ads/dgj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgf;Lcom/google/android/gms/internal/ads/dhy;)V
    .locals 0

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgf;->zzihl:Lcom/google/android/gms/internal/ads/dhy;

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/dgf$a;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgf$a;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/dgf;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dgj;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgf;->zzihk:Lcom/google/android/gms/internal/ads/dgj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dgj;->c()Lcom/google/android/gms/internal/ads/dgj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/dgg;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dgf;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/dgf;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dgf;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/dgf;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzihc"

    aput-object v1, p1, p2

    const-string p2, "zzihk"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzihl"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dgf;->zzihm:Lcom/google/android/gms/internal/ads/dgf;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dgf;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dgf$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dgf$a;-><init>(Lcom/google/android/gms/internal/ads/dgg;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dgf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dgf;-><init>()V

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

.method public final b()Lcom/google/android/gms/internal/ads/dhy;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgf;->zzihl:Lcom/google/android/gms/internal/ads/dhy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dhy;->c()Lcom/google/android/gms/internal/ads/dhy;

    move-result-object v0

    :cond_0
    return-object v0
.end method
