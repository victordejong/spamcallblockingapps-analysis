.class public final Lcom/google/android/gms/internal/ads/dis;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dis$b;,
        Lcom/google/android/gms/internal/ads/dis$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dis;",
        "Lcom/google/android/gms/internal/ads/dis$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dis;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzilb:Lcom/google/android/gms/internal/ads/dis;


# instance fields
.field private zzikt:I

.field private zzila:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/dis$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/dis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dis;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/dis;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dis;->zzila:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dis$b;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dis$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis;I)V
    .locals 0

    .line 2004
    iput p1, p0, Lcom/google/android/gms/internal/ads/dis;->zzikt:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis;Lcom/google/android/gms/internal/ads/dis$a;)V
    .locals 2

    .line 2006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2008
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dis;->zzila:Lcom/google/android/gms/internal/ads/dnr;

    .line 2009
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2011
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dis;->zzila:Lcom/google/android/gms/internal/ads/dnr;

    .line 2012
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dis;->zzila:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dis;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/dir;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/dis;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/dis;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dis;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/dis;->zzek:Lcom/google/android/gms/internal/ads/dpc;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzikt"

    aput-object v1, p1, p2

    const-string p2, "zzila"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 18
    const-class v0, Lcom/google/android/gms/internal/ads/dis$a;

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/dis;->zzilb:Lcom/google/android/gms/internal/ads/dis;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dis;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dis$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dis$b;-><init>(Lcom/google/android/gms/internal/ads/dir;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dis;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dis;-><init>()V

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
