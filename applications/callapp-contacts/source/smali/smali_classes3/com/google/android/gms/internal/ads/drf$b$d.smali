.class public final Lcom/google/android/gms/internal/ads/drf$b$d;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$d$b;,
        Lcom/google/android/gms/internal/ads/drf$b$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b$d;",
        "Lcom/google/android/gms/internal/ads/drf$b$d$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;


# instance fields
.field private zzdv:I

.field private zzjat:B

.field private zzjca:Lcom/google/android/gms/internal/ads/drf$b$d$a;

.field private zzjcb:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/drf$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private zzjcc:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjcd:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjce:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b$d;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjat:B

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcb:Lcom/google/android/gms/internal/ads/dnr;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcc:Lcom/google/android/gms/internal/ads/dlw;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcd:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/drf$b$d$b;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf$b$d$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$d;Lcom/google/android/gms/internal/ads/drf$b$c;)V
    .locals 2

    .line 2007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcb:Lcom/google/android/gms/internal/ads/dnr;

    .line 2010
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2012
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcb:Lcom/google/android/gms/internal/ads/dnr;

    .line 2013
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcb:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/drf$b$d;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-byte p1, v1

    .line 33
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjat:B

    return-object v2

    .line 32
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_2

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b$d;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b$d;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 30
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, v0

    const-string p2, "zzjca"

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string v0, "zzjcb"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 19
    const-class v0, Lcom/google/android/gms/internal/ads/drf$b$c;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzjcc"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzjcd"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzjce"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d;->zzjcf:Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b$d;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$d$b;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/drf$b$d$b;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$d;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b$d;-><init>()V

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
