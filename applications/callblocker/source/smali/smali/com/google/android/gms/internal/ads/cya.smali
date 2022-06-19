.class public final Lcom/google/android/gms/internal/ads/cya;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cya$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cya;",
        "Lcom/google/android/gms/internal/ads/cya$a;",
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
            "Lcom/google/android/gms/internal/ads/cya;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhor:Lcom/google/android/gms/internal/ads/cya;


# instance fields
.field private zzhnz:Ljava/lang/String;

.field private zzhoa:Lcom/google/android/gms/internal/ads/dbi;

.field private zzhoq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/cya;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cya;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/cya;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cya;->zzhnz:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cya;->zzhoa:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/ads/cya;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/cya;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/cxz;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cya;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cya;-><init>()V

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 9
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cya$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cya$a;-><init>(Lcom/google/android/gms/internal/ads/cxz;)V

    goto :goto_0

    .line 10
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhnz"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhoa"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhoq"

    aput-object v2, v0, v1

    .line 11
    const-string/jumbo v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cya;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cya;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 15
    if-nez v0, :cond_0

    .line 16
    const-class v1, Lcom/google/android/gms/internal/ads/cya;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cya;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 18
    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cya;->zzhor:Lcom/google/android/gms/internal/ads/cya;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/cya;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 21
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 24
    goto :goto_0

    .line 7
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cya;->zzhnz:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cya;->zzhoa:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method
