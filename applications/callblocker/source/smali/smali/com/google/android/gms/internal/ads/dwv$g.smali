.class public final Lcom/google/android/gms/internal/ads/dwv$g;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwv$g$c;,
        Lcom/google/android/gms/internal/ads/dwv$g$a;,
        Lcom/google/android/gms/internal/ads/dwv$g$e;,
        Lcom/google/android/gms/internal/ads/dwv$g$d;,
        Lcom/google/android/gms/internal/ads/dwv$g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$g;",
        "Lcom/google/android/gms/internal/ads/dwv$g$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbwk:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    .line 35
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwk:Lcom/google/android/gms/internal/ads/dde;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dwv$g$c;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g$c;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dwv$g$a;)V
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwk:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwk:Lcom/google/android/gms/internal/ads/dde;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dde;)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwk:Lcom/google/android/gms/internal/ads/dde;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwk:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g;Lcom/google/android/gms/internal/ads/dwv$g$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g;->a(Lcom/google/android/gms/internal/ads/dwv$g$a;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dwv$g;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dwu;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g;-><init>()V

    .line 29
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$g$c;-><init>(Lcom/google/android/gms/internal/ads/dwu;)V

    goto :goto_0

    .line 15
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzbwk"

    aput-object v2, v0, v1

    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g$a;

    aput-object v1, v0, v3

    .line 16
    const-string/jumbo v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dwv$g;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    goto :goto_0

    .line 19
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    if-nez v0, :cond_0

    .line 21
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g;->zzbwl:Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g;->zzea:Lcom/google/android/gms/internal/ads/dep;

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
