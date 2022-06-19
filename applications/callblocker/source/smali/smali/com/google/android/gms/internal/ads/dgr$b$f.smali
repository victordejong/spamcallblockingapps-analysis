.class public final Lcom/google/android/gms/internal/ads/dgr$b$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$f$b;,
        Lcom/google/android/gms/internal/ads/dgr$b$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$f;",
        "Lcom/google/android/gms/internal/ads/dgr$b$f$b;",
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
            "Lcom/google/android/gms/internal/ads/dgr$b$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;


# instance fields
.field private zzbxl:I

.field private zzdl:I

.field private zzigt:Ljava/lang/String;

.field private zzigu:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$f;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigt:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigu:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dgr$b$f$b;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigu:Lcom/google/android/gms/internal/ads/dbi;

    .line 15
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dgr$b$f$a;)V
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgr$b$f$a;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzbxl:I

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$f;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$f;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$f;Lcom/google/android/gms/internal/ads/dgr$b$f$a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$f;->a(Lcom/google/android/gms/internal/ads/dgr$b$f$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzdl:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigt:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dgr$b$f;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 18
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$f;-><init>()V

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dgr$b$f$b;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 20
    :pswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzbxl"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$f$a;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzigt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzigu"

    aput-object v2, v0, v1

    .line 22
    const-string/jumbo v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0008\u0001\u0003\n\u0002"

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$f;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    goto :goto_0

    .line 25
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$f;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 29
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzigv:Lcom/google/android/gms/internal/ads/dgr$b$f;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 32
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 35
    goto :goto_0

    .line 17
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
