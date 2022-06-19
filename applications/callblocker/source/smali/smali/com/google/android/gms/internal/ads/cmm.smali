.class public final Lcom/google/android/gms/internal/ads/cmm;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cmm$b;,
        Lcom/google/android/gms/internal/ads/cmm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cmm;",
        "Lcom/google/android/gms/internal/ads/cmm$b;",
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
            "Lcom/google/android/gms/internal/ads/cmm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhbw:Lcom/google/android/gms/internal/ads/ddc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddc",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/cmm$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhca:Lcom/google/android/gms/internal/ads/cmm;


# instance fields
.field private zzdl:I

.field private zzhbv:Lcom/google/android/gms/internal/ads/ddd;

.field private zzhbx:Ljava/lang/String;

.field private zzhby:Ljava/lang/String;

.field private zzhbz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/cmp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cmp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzhbw:Lcom/google/android/gms/internal/ads/ddc;

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/cmm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cmm;-><init>()V

    .line 44
    sput-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    .line 45
    const-class v1, Lcom/google/android/gms/internal/ads/cmm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cmm;->r()Lcom/google/android/gms/internal/ads/ddd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbv:Lcom/google/android/gms/internal/ads/ddd;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbx:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhby:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbz:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cmm$b;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cmm$b;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cmm$a;)V
    .locals 2

    .prologue
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbv:Lcom/google/android/gms/internal/ads/ddd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ddd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbv:Lcom/google/android/gms/internal/ads/ddd;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/ddd;)Lcom/google/android/gms/internal/ads/ddd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbv:Lcom/google/android/gms/internal/ads/ddd;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbv:Lcom/google/android/gms/internal/ads/ddd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cmm$a;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ddd;->d(I)V

    .line 13
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmm$a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cmm;->a(Lcom/google/android/gms/internal/ads/cmm$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cmm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cmm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cmm;->zzdl:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmm;->zzhbx:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cmm;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/cmo;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 20
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cmm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cmm;-><init>()V

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cmm$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cmm$b;-><init>(Lcom/google/android/gms/internal/ads/cmp;)V

    goto :goto_0

    .line 22
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhbv"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/cmm$a;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzhbx"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzhby"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzhbz"

    aput-object v2, v0, v1

    .line 24
    const-string/jumbo v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u0008\u0000\u0003\u0008\u0001\u0004\u0008\u0002"

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cmm;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 28
    if-nez v0, :cond_0

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/cmm;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 31
    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cmm;->zzhca:Lcom/google/android/gms/internal/ads/cmm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/cmm;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 34
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 37
    goto :goto_0

    .line 19
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
