.class public final Lcom/google/android/gms/internal/ads/dit;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dit$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dit;",
        "Lcom/google/android/gms/internal/ads/dit$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dit;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzile:Lcom/google/android/gms/internal/ads/dit;


# instance fields
.field zzihc:I

.field zzild:Lcom/google/android/gms/internal/ads/diw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dit;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dit;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/dit;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dit$a;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dit$a;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dit;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dit;)V
    .locals 1

    const/4 v0, 0x0

    .line 1004
    iput v0, p0, Lcom/google/android/gms/internal/ads/dit;->zzihc:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dit;Lcom/google/android/gms/internal/ads/diw;)V
    .locals 0

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dit;->zzild:Lcom/google/android/gms/internal/ads/diw;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dit;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/diu;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 28
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dit;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/dit;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dit;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/dit;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 26
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

    .line 18
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzihc"

    aput-object v1, p1, p2

    const-string p2, "zzild"

    aput-object p2, p1, v0

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/dit;->zzile:Lcom/google/android/gms/internal/ads/dit;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dit;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dit$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dit$a;-><init>(Lcom/google/android/gms/internal/ads/diu;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dit;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dit;-><init>()V

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
