.class public final Lcom/google/android/gms/internal/ads/amp$c;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/amp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/amp$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/amp$c;",
        "Lcom/google/android/gms/internal/ads/amp$c$a;",
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
            "Lcom/google/android/gms/internal/ads/amp$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfb:Lcom/google/android/gms/internal/ads/amp$c;


# instance fields
.field private zzdl:I

.field private zzev:Ljava/lang/String;

.field private zzew:Ljava/lang/String;

.field private zzex:Ljava/lang/String;

.field private zzey:Ljava/lang/String;

.field private zzez:Ljava/lang/String;

.field private zzfa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/amp$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amp$c;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/amp$c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzev:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzew:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzex:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzey:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzez:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzfa:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/amp$c;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/amp$c;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/aor;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/amp$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amp$c;-><init>()V

    .line 27
    :cond_0
    :goto_0
    return-object v0

    .line 12
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/amp$c$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/amp$c$a;-><init>(Lcom/google/android/gms/internal/ads/aor;)V

    goto :goto_0

    .line 13
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzev"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzew"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzex"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzez"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzfa"

    aput-object v2, v0, v1

    .line 14
    const-string/jumbo v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0008\u0003\u0005\u0008\u0004\u0006\u0008\u0005"

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/amp$c;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    goto :goto_0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 18
    if-nez v0, :cond_0

    .line 19
    const-class v1, Lcom/google/android/gms/internal/ads/amp$c;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 21
    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/amp$c;->zzfb:Lcom/google/android/gms/internal/ads/amp$c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/amp$c;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 24
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 10
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
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amp$c;->zzev:Ljava/lang/String;

    return-object v0
.end method
