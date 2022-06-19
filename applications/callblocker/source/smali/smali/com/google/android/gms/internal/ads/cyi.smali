.class public final Lcom/google/android/gms/internal/ads/cyi;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cyi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cyi;",
        "Lcom/google/android/gms/internal/ads/cyi$a;",
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
            "Lcom/google/android/gms/internal/ads/cyi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpi:Lcom/google/android/gms/internal/ads/cyi;


# instance fields
.field private zzhlh:I

.field private zzhph:Lcom/google/android/gms/internal/ads/cyj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/cyi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyi;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/cyi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 37
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

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cyi;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cyi;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyi;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyi;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cyi;Lcom/google/android/gms/internal/ads/cyj;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyi;->a(Lcom/google/android/gms/internal/ads/cyj;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cyj;)V
    .locals 0

    .prologue
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cyi;->zzhph:Lcom/google/android/gms/internal/ads/cyj;

    .line 9
    return-void
.end method

.method private final b(I)V
    .locals 0

    .prologue
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/cyi;->zzhlh:I

    .line 5
    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/cyi$a;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cyi$a;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/cyi;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/cyi;->zzhlh:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/cyh;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cyi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cyi;-><init>()V

    .line 29
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cyi$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cyi$a;-><init>(Lcom/google/android/gms/internal/ads/cyh;)V

    goto :goto_0

    .line 15
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhph"

    aput-object v1, v0, v3

    .line 16
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cyi;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    goto :goto_0

    .line 19
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    if-nez v0, :cond_0

    .line 21
    const-class v1, Lcom/google/android/gms/internal/ads/cyi;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cyi;->zzhpi:Lcom/google/android/gms/internal/ads/cyi;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/cyi;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 26
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 12
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

.method public final b()Lcom/google/android/gms/internal/ads/cyj;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyi;->zzhph:Lcom/google/android/gms/internal/ads/cyj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cyj;->b()Lcom/google/android/gms/internal/ads/cyj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cyi;->zzhph:Lcom/google/android/gms/internal/ads/cyj;

    goto :goto_0
.end method
