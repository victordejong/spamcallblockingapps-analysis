.class public final Lcom/google/android/gms/internal/ads/cvy;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cvy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cvy;",
        "Lcom/google/android/gms/internal/ads/cvy$a;",
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
            "Lcom/google/android/gms/internal/ads/cvy;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhls:Lcom/google/android/gms/internal/ads/cvy;


# instance fields
.field private zzhlh:I

.field private zzhlq:Lcom/google/android/gms/internal/ads/cwc;

.field private zzhlr:Lcom/google/android/gms/internal/ads/cxp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/cvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvy;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/cvy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvy;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvy;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvy;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvy;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvy;Lcom/google/android/gms/internal/ads/cwc;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvy;->a(Lcom/google/android/gms/internal/ads/cwc;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvy;Lcom/google/android/gms/internal/ads/cxp;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvy;->a(Lcom/google/android/gms/internal/ads/cxp;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cwc;)V
    .locals 0

    .prologue
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlq:Lcom/google/android/gms/internal/ads/cwc;

    .line 9
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cxp;)V
    .locals 0

    .prologue
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlr:Lcom/google/android/gms/internal/ads/cxp;

    .line 13
    return-void
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlh:I

    .line 5
    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/cvy$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvy$a;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/cvy;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlh:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/cvx;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 17
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvy;-><init>()V

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cvy$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cvy$a;-><init>(Lcom/google/android/gms/internal/ads/cvx;)V

    goto :goto_0

    .line 19
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhlq"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhlr"

    aput-object v2, v0, v1

    .line 20
    const-string/jumbo v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cvy;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    goto :goto_0

    .line 23
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 24
    if-nez v0, :cond_0

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/cvy;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 27
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cvy;->zzhls:Lcom/google/android/gms/internal/ads/cvy;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/cvy;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 30
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 33
    goto :goto_0

    .line 16
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

.method public final b()Lcom/google/android/gms/internal/ads/cwc;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlq:Lcom/google/android/gms/internal/ads/cwc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cwc;->e()Lcom/google/android/gms/internal/ads/cwc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlq:Lcom/google/android/gms/internal/ads/cwc;

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxp;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlr:Lcom/google/android/gms/internal/ads/cxp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cxp;->e()Lcom/google/android/gms/internal/ads/cxp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvy;->zzhlr:Lcom/google/android/gms/internal/ads/cxp;

    goto :goto_0
.end method
