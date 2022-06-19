.class public final Lcom/google/android/gms/internal/ads/dip;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dip$a;,
        Lcom/google/android/gms/internal/ads/dip$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dip;",
        "Lcom/google/android/gms/internal/ads/dip$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dip;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzikv:Lcom/google/android/gms/internal/ads/dip;


# instance fields
.field zzikt:I

.field zziku:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/dip$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dip;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/dip;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/dip;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    return-object v0
.end method

.method public static a([BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dip;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;[BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dip;

    return-object p0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/diq;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dip;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/ads/dip;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dip;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/ads/dip;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzikt"

    aput-object v1, p1, p2

    const-string p2, "zziku"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 11
    const-class v0, Lcom/google/android/gms/internal/ads/dip$b;

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/dip;->zzikv:Lcom/google/android/gms/internal/ads/dip;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dip;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dip$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dip$a;-><init>(Lcom/google/android/gms/internal/ads/diq;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dip;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dip;-><init>()V

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
