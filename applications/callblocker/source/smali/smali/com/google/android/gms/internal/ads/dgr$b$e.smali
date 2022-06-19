.class public final Lcom/google/android/gms/internal/ads/dgr$b$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$e$b;,
        Lcom/google/android/gms/internal/ads/dgr$b$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$e;",
        "Lcom/google/android/gms/internal/ads/dgr$b$e$b;",
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
            "Lcom/google/android/gms/internal/ads/dgr$b$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;


# instance fields
.field private zzdl:I

.field private zziew:B

.field private zzige:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/dgr$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private zzigf:Lcom/google/android/gms/internal/ads/dbi;

.field private zzigg:Lcom/google/android/gms/internal/ads/dbi;

.field private zzigh:I

.field private zzign:Lcom/google/android/gms/internal/ads/dgr$b$e$a;

.field private zzigo:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$e;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$e;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zziew:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$e;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzige:Lcom/google/android/gms/internal/ads/dde;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigf:Lcom/google/android/gms/internal/ads/dbi;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigg:Lcom/google/android/gms/internal/ads/dbi;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigo:Lcom/google/android/gms/internal/ads/dbi;

    .line 7
    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/dgr$b$e;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$e;-><init>()V

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$e$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$e$b;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 11
    :pswitch_2
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "zzdl"

    aput-object v3, v2, v0

    const-string/jumbo v0, "zzign"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string/jumbo v1, "zzige"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$c;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "zzigf"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "zzigg"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "zzigh"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "zzigo"

    aput-object v1, v2, v0

    .line 12
    const-string/jumbo v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\t\u0000\u0002\u041b\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004"

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$e;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 14
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;

    goto :goto_0

    .line 15
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 16
    if-nez v0, :cond_0

    .line 17
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$e;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 19
    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzigp:Lcom/google/android/gms/internal/ads/dgr$b$e;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 22
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 24
    :pswitch_5
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zziew:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_6
    if-nez p2, :cond_2

    :goto_1
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$e;->zziew:B

    move-object v0, v2

    .line 26
    goto :goto_0

    :cond_2
    move v0, v1

    .line 25
    goto :goto_1

    .line 8
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
