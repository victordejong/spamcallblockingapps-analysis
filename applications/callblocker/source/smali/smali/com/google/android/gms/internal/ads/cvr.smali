.class public final Lcom/google/android/gms/internal/ads/cvr;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cvr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cvr;",
        "Lcom/google/android/gms/internal/ads/cvr$a;",
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
            "Lcom/google/android/gms/internal/ads/cvr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhlk:Lcom/google/android/gms/internal/ads/cvr;


# instance fields
.field private zzhlh:I

.field private zzhli:Lcom/google/android/gms/internal/ads/dbi;

.field private zzhlj:Lcom/google/android/gms/internal/ads/cvv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/cvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvr;-><init>()V

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    .line 42
    const-class v1, Lcom/google/android/gms/internal/ads/cvr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvr;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvr;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvr;I)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cvr;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvr;Lcom/google/android/gms/internal/ads/cvv;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvr;->a(Lcom/google/android/gms/internal/ads/cvv;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cvr;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cvr;->a(Lcom/google/android/gms/internal/ads/dbi;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cvv;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhlj:Lcom/google/android/gms/internal/ads/cvv;

    .line 14
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    .line 10
    return-void
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhlh:I

    .line 6
    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/cvr$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvr$a;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/cvr;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhlh:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/cvs;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 18
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvr;-><init>()V

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cvr$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cvr$a;-><init>(Lcom/google/android/gms/internal/ads/cvs;)V

    goto :goto_0

    .line 20
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhli"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhlj"

    aput-object v2, v0, v1

    .line 21
    const-string/jumbo v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t"

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cvr;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    goto :goto_0

    .line 24
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 25
    if-nez v0, :cond_0

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/cvr;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 28
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cvr;->zzhlk:Lcom/google/android/gms/internal/ads/cvr;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/cvr;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 31
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 17
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhli:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cvv;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhlj:Lcom/google/android/gms/internal/ads/cvv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cvv;->b()Lcom/google/android/gms/internal/ads/cvv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvr;->zzhlj:Lcom/google/android/gms/internal/ads/cvv;

    goto :goto_0
.end method
