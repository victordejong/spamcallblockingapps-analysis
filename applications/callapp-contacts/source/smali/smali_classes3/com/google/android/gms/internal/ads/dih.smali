.class public final Lcom/google/android/gms/internal/ads/dih;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dih$b;,
        Lcom/google/android/gms/internal/ads/dih$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dih;",
        "Lcom/google/android/gms/internal/ads/dih$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dih;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzijy:Lcom/google/android/gms/internal/ads/dih;


# instance fields
.field zzijv:Ljava/lang/String;

.field zzijw:Lcom/google/android/gms/internal/ads/dlw;

.field private zzijx:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/dih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dih;-><init>()V

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    .line 44
    const-class v1, Lcom/google/android/gms/internal/ads/dih;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dih;->zzijv:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dih;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dih;Lcom/google/android/gms/internal/ads/dih$a;)V
    .locals 0

    .line 1015
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dih$a;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dih;->zzijx:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dih;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 0

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dih;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dih;Ljava/lang/String;)V
    .locals 0

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dih;->zzijv:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dih$b;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dih$b;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/dih;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/dih;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dih;->zzijx:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dih$a;->zzfr(I)Lcom/google/android/gms/internal/ads/dih$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzike:Lcom/google/android/gms/internal/ads/dih$a;

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/dig;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dih;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/dih;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dih;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/dih;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzijv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzijw"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzijx"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/dih;->zzijy:Lcom/google/android/gms/internal/ads/dih;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dih;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dih$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dih$b;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dih;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dih;-><init>()V

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
