.class public final Lcom/google/android/gms/internal/ads/cyf$b;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cyf$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyf$b;",
        "Lcom/google/android/gms/internal/ads/cyf$b$a;",
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
            "Lcom/google/android/gms/internal/ads/cyf$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;


# instance fields
.field private zzhnz:Ljava/lang/String;

.field private zzhoq:I

.field private zzhpb:I

.field private zzhpc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyf$b;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhnz:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cyf$b$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cyf$b$a;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cxy;)V
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxy;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpb:I

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf$b;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf$b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf$b;Lcom/google/android/gms/internal/ads/cxy;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf$b;->a(Lcom/google/android/gms/internal/ads/cxy;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf$b;Lcom/google/android/gms/internal/ads/cyq;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf$b;->a(Lcom/google/android/gms/internal/ads/cyq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cyq;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyq;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhoq:I

    .line 12
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhnz:Ljava/lang/String;

    .line 6
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cyf$b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    return-object v0
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpc:I

    .line 10
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/cyg;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyf$b;-><init>()V

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf$b$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cyf$b$a;-><init>(Lcom/google/android/gms/internal/ads/cyg;)V

    goto :goto_0

    .line 17
    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhnz"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhpb"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhpc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzhoq"

    aput-object v2, v0, v1

    .line 18
    const-string/jumbo v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cyf$b;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    goto :goto_0

    .line 21
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 22
    if-nez v0, :cond_0

    .line 23
    const-class v1, Lcom/google/android/gms/internal/ads/cyf$b;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 25
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cyf$b;->zzhpg:Lcom/google/android/gms/internal/ads/cyf$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/cyf$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 28
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 30
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 14
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
