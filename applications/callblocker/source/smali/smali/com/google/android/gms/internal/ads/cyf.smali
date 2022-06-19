.class public final Lcom/google/android/gms/internal/ads/cyf;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cyf$a;,
        Lcom/google/android/gms/internal/ads/cyf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyf;",
        "Lcom/google/android/gms/internal/ads/cyf$a;",
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
            "Lcom/google/android/gms/internal/ads/cyf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpf:Lcom/google/android/gms/internal/ads/cyf;


# instance fields
.field private zzhox:I

.field private zzhpe:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/cyf$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyf;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/ads/cyf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyf;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhpe:Lcom/google/android/gms/internal/ads/dde;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/cyf$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cyf$a;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cyf$b;)V
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhpe:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhpe:Lcom/google/android/gms/internal/ads/dde;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dde;)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhpe:Lcom/google/android/gms/internal/ads/dde;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhpe:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyf;Lcom/google/android/gms/internal/ads/cyf$b;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyf;->a(Lcom/google/android/gms/internal/ads/cyf$b;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cyf;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    return-object v0
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/cyf;->zzhox:I

    .line 5
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
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyf;-><init>()V

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cyf$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cyf$a;-><init>(Lcom/google/android/gms/internal/ads/cyg;)V

    goto :goto_0

    .line 17
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhox"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhpe"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/gms/internal/ads/cyf$b;

    aput-object v2, v0, v1

    .line 18
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cyf;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    goto :goto_0

    .line 21
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 22
    if-nez v0, :cond_0

    .line 23
    const-class v1, Lcom/google/android/gms/internal/ads/cyf;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 25
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cyf;->zzhpf:Lcom/google/android/gms/internal/ads/cyf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/cyf;->zzea:Lcom/google/android/gms/internal/ads/dep;

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
