.class public final Lcom/google/android/gms/internal/ads/cwk;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cwk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwk;",
        "Lcom/google/android/gms/internal/ads/cwk$a;",
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
            "Lcom/google/android/gms/internal/ads/cwk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhmd:Lcom/google/android/gms/internal/ads/cwk;


# instance fields
.field private zzhlm:I

.field private zzhmb:Lcom/google/android/gms/internal/ads/cwl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/cwk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwk;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/cwk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 29
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

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwk;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwk;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/cwk;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cwl;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwk;->zzhmb:Lcom/google/android/gms/internal/ads/cwl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cwl;->b()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwk;->zzhmb:Lcom/google/android/gms/internal/ads/cwl;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/cwj;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cwk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwk;-><init>()V

    .line 23
    :cond_0
    :goto_0
    return-object v0

    .line 8
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cwk$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cwk$a;-><init>(Lcom/google/android/gms/internal/ads/cwj;)V

    goto :goto_0

    .line 9
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhmb"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhlm"

    aput-object v1, v0, v3

    .line 10
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b"

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cwk;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 14
    if-nez v0, :cond_0

    .line 15
    const-class v1, Lcom/google/android/gms/internal/ads/cwk;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cwk;->zzhmd:Lcom/google/android/gms/internal/ads/cwk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/cwk;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 22
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 6
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

.method public final b()I
    .locals 1

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cwk;->zzhlm:I

    return v0
.end method
