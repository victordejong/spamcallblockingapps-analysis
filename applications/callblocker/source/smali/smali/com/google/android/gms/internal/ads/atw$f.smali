.class public final Lcom/google/android/gms/internal/ads/atw$f;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/atw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/atw$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/atw$f;",
        "Lcom/google/android/gms/internal/ads/atw$f$a;",
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
            "Lcom/google/android/gms/internal/ads/atw$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlv:Lcom/google/android/gms/internal/ads/atw$f;


# instance fields
.field private zzdl:I

.field private zzhk:I

.field private zzhl:I

.field private zzkw:Lcom/google/android/gms/internal/ads/dbi;

.field private zzlu:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$f;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/ads/atw$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$f;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzlu:Lcom/google/android/gms/internal/ads/dde;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzkw:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzhl:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzhk:I

    .line 6
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/atw$f$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$f$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/atw$f;Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/atw$f;->a(Lcom/google/android/gms/internal/ads/bbd;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/atw$f;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/atw$f;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/bbd;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbd;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzhk:I

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzdl:I

    .line 20
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzlu:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzlu:Lcom/google/android/gms/internal/ads/dde;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dde;)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzlu:Lcom/google/android/gms/internal/ads/dde;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzlu:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/atw$f;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/atw$f;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/atw$f;->b(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzdl:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atw$f;->zzkw:Lcom/google/android/gms/internal/ads/dbi;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/asv;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$f;-><init>()V

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$f$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/atw$f$a;-><init>(Lcom/google/android/gms/internal/ads/asv;)V

    goto :goto_0

    .line 25
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzlu"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzkw"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzhl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/bhj;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzhk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/bbd;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    .line 28
    const-string/jumbo v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\u000c\u0001\u0004\u000c\u0002"

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/atw$f;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    goto :goto_0

    .line 31
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 32
    if-nez v0, :cond_0

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/atw$f;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 35
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/atw$f;->zzlv:Lcom/google/android/gms/internal/ads/atw$f;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 38
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 40
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 41
    goto :goto_0

    .line 22
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
