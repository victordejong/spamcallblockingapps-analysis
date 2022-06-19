.class public final Lcom/google/android/gms/internal/ads/cxg;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cxg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cxg;",
        "Lcom/google/android/gms/internal/ads/cxg$a;",
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
            "Lcom/google/android/gms/internal/ads/cxg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhnb:Lcom/google/android/gms/internal/ads/cxg;


# instance fields
.field private zzhlh:I

.field private zzhmr:Lcom/google/android/gms/internal/ads/cxc;

.field private zzhmz:Lcom/google/android/gms/internal/ads/dbi;

.field private zzhna:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxg;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmz:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhna:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cxg;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cxc;)V
    .locals 0

    .prologue
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmr:Lcom/google/android/gms/internal/ads/cxc;

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cxg;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cxg;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/cxc;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/cxc;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmz:Lcom/google/android/gms/internal/ads/dbi;

    .line 15
    return-void
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhlh:I

    .line 7
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cxg;->b(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhna:Lcom/google/android/gms/internal/ads/dbi;

    .line 19
    return-void
.end method

.method public static e()Lcom/google/android/gms/internal/ads/cxg$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg$a;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/ads/cxg;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/gms/internal/ads/cxg;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhlh:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/cxf;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxg;-><init>()V

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cxg$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cxg$a;-><init>(Lcom/google/android/gms/internal/ads/cxf;)V

    goto :goto_0

    .line 25
    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhmr"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhmz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzhna"

    aput-object v2, v0, v1

    .line 26
    const-string/jumbo v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    .line 27
    sget-object v2, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    goto :goto_0

    .line 29
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 30
    if-nez v0, :cond_0

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/cxg;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 33
    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cxg;->zzhnb:Lcom/google/android/gms/internal/ads/cxg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/cxg;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 36
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 39
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

.method public final b()Lcom/google/android/gms/internal/ads/cxc;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmr:Lcom/google/android/gms/internal/ads/cxc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cxc;->d()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmr:Lcom/google/android/gms/internal/ads/cxc;

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhmz:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg;->zzhna:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method
