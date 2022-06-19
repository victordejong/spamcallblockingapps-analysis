.class public final Lcom/google/android/gms/internal/ads/dgr$b$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$c;",
        "Lcom/google/android/gms/internal/ads/dgr$b$c$a;",
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
            "Lcom/google/android/gms/internal/ads/dgr$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;


# instance fields
.field private zzdl:I

.field private zzhoa:Lcom/google/android/gms/internal/ads/dbi;

.field private zziew:B

.field private zzigb:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$c;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$c;

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
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zziew:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigb:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzhoa:Lcom/google/android/gms/internal/ads/dbi;

    .line 5
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dgr$b$c$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$c$a;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzdl:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigb:Lcom/google/android/gms/internal/ads/dbi;

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$c;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$c;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dgr$b$c;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzdl:I

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzhoa:Lcom/google/android/gms/internal/ads/dbi;

    .line 13
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dgr$b$c;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$c;->b(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 15
    sget-object v3, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$c;-><init>()V

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$c$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$c$a;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 18
    :pswitch_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "zzdl"

    aput-object v3, v2, v0

    const-string/jumbo v0, "zzigb"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string/jumbo v1, "zzhoa"

    aput-object v1, v2, v0

    .line 19
    const-string/jumbo v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u050a\u0000\u0002\n\u0001"

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$c;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    goto :goto_0

    .line 22
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$c;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzigc:Lcom/google/android/gms/internal/ads/dgr$b$c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 29
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31
    :pswitch_5
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zziew:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_6
    if-nez p2, :cond_2

    :goto_1
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$c;->zziew:B

    move-object v0, v2

    .line 33
    goto :goto_0

    :cond_2
    move v0, v1

    .line 32
    goto :goto_1

    .line 15
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
