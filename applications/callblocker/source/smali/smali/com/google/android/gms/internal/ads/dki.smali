.class public final Lcom/google/android/gms/internal/ads/dki;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dki$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dki;",
        "Lcom/google/android/gms/internal/ads/dki$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzabs:Lcom/google/android/gms/internal/ads/dki;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dki;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabn:Ljava/lang/String;

.field private zzabo:Ljava/lang/String;

.field private zzabp:J

.field private zzabq:J

.field private zzabr:J

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dki;-><init>()V

    .line 56
    sput-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    .line 57
    const-class v1, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabn:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabo:Ljava/lang/String;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dki;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    return-object v0
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dki;->zzabp:J

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dki;J)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dki;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dki;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dki;->zzabn:Ljava/lang/String;

    .line 9
    return-void
.end method

.method private final b(J)V
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dki;->zzabq:J

    .line 22
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dki;J)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dki;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dki;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dki;->zzabo:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private final c(J)V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzdl:I

    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dki;->zzabr:J

    .line 26
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dki;J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->c(J)V

    return-void
.end method

.method public static f()Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dki$a;

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/internal/ads/dki;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    return-object v0
.end method

.method static synthetic h()Lcom/google/android/gms/internal/ads/dki;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/dkh;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dki;-><init>()V

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dki$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dki$a;-><init>(Lcom/google/android/gms/internal/ads/dkh;)V

    goto :goto_0

    .line 32
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzabn"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzabo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzabp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzabq"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzabr"

    aput-object v2, v0, v1

    .line 33
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0003\u0002\u0004\u0003\u0003\u0005\u0003\u0004"

    .line 34
    sget-object v2, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dki;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 37
    if-nez v0, :cond_0

    .line 38
    const-class v1, Lcom/google/android/gms/internal/ads/dki;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dki;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 40
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dki;->zzabs:Lcom/google/android/gms/internal/ads/dki;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/dki;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 43
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 46
    goto :goto_0

    .line 29
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
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabn:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabo:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabp:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabq:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dki;->zzabr:J

    return-wide v0
.end method
