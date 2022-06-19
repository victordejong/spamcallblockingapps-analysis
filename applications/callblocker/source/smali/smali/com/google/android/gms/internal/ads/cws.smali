.class public final Lcom/google/android/gms/internal/ads/cws;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cws$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cws;",
        "Lcom/google/android/gms/internal/ads/cws$a;",
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
            "Lcom/google/android/gms/internal/ads/cws;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhmh:Lcom/google/android/gms/internal/ads/cws;


# instance fields
.field private zzhlh:I

.field private zzhli:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/cws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cws;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/ads/cws;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cws;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cws;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cws;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cws;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cws;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cws;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cws;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cws;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    .line 10
    return-void
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/cws;->zzhlh:I

    .line 6
    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/cws$a;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cws$a;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/cws;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cws;->zzhlh:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/cwr;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cws;-><init>()V

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cws$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cws$a;-><init>(Lcom/google/android/gms/internal/ads/cwr;)V

    goto :goto_0

    .line 16
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhli"

    aput-object v1, v0, v3

    .line 17
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cws;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    goto :goto_0

    .line 20
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 21
    if-nez v0, :cond_0

    .line 22
    const-class v1, Lcom/google/android/gms/internal/ads/cws;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cws;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 24
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cws;->zzhmh:Lcom/google/android/gms/internal/ads/cws;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/cws;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 27
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 13
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

.method public final b()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cws;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method
