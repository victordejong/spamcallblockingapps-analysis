.class public final Lcom/google/android/gms/internal/ads/dgr$b$h;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dgr$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$h$b;,
        Lcom/google/android/gms/internal/ads/dgr$b$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$h;",
        "Lcom/google/android/gms/internal/ads/dgr$b$h$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dgr$b$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;


# instance fields
.field private zzdl:I

.field private zziew:B

.field private zziez:Ljava/lang/String;

.field private zzihk:I

.field private zzihl:Lcom/google/android/gms/internal/ads/dgr$b$d;

.field private zzihm:Lcom/google/android/gms/internal/ads/dgr$b$e;

.field private zzihn:I

.field private zziho:Lcom/google/android/gms/internal/ads/ddd;

.field private zzihp:Ljava/lang/String;

.field private zzihq:I

.field private zzihr:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$h;-><init>()V

    .line 60
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    .line 61
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziew:B

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziez:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$h;->r()Lcom/google/android/gms/internal/ads/ddd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziho:Lcom/google/android/gms/internal/ads/ddd;

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihp:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcw;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    .line 7
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dgr$b$d;)V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihl:Lcom/google/android/gms/internal/ads/dgr$b$d;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    .line 19
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dgr$b$h$a;)V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgr$b$h$a;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihq:I

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$h;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$h;Lcom/google/android/gms/internal/ads/dgr$b$d;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h;->a(Lcom/google/android/gms/internal/ads/dgr$b$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$h;Lcom/google/android/gms/internal/ads/dgr$b$h$a;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h;->a(Lcom/google/android/gms/internal/ads/dgr$b$h$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziez:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private final b(I)V
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzdl:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihk:I

    .line 10
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dgr$b$h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dde;)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/dgr$b$h$b;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/dgr$b$h;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    sget-object v3, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$h;-><init>()V

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 35
    :pswitch_2
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "zzdl"

    aput-object v3, v2, v0

    const-string/jumbo v0, "zzihk"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string/jumbo v1, "zziez"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "zzihl"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "zzihm"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "zzihn"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "zziho"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "zzihp"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "zzihq"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$h$a;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "zzihr"

    aput-object v1, v2, v0

    .line 37
    const-string/jumbo v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u0504\u0000\u0002\u0008\u0001\u0003\u0409\u0002\u0004\u0409\u0003\u0005\u0004\u0004\u0006\u0016\u0007\u0008\u0005\u0008\u000c\u0006\t\u001a"

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$h;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    goto :goto_0

    .line 40
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 41
    if-nez v0, :cond_0

    .line 42
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$h;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihs:Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 46
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 47
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 49
    :pswitch_5
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziew:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_6
    if-nez p2, :cond_2

    :goto_1
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziew:B

    move-object v0, v2

    .line 51
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 50
    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zziez:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$h;->zzihr:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v0

    return v0
.end method
