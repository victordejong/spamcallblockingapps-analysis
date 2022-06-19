.class public final Lcom/google/android/gms/internal/ads/dke;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dke$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dke;",
        "Lcom/google/android/gms/internal/ads/dke$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzabm:Lcom/google/android/gms/internal/ads/dke;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dke;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabj:Lcom/google/android/gms/internal/ads/dki;

.field private zzabk:Lcom/google/android/gms/internal/ads/dbi;

.field private zzabl:Lcom/google/android/gms/internal/ads/dbi;

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dke;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dke;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/dke;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabk:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabl:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dke;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dke;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/dke;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dki;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabj:Lcom/google/android/gms/internal/ads/dki;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dki;->g()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabj:Lcom/google/android/gms/internal/ads/dki;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/dkg;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dke;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dke;-><init>()V

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 11
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dke$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dke$a;-><init>(Lcom/google/android/gms/internal/ads/dkg;)V

    goto :goto_0

    .line 12
    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzabj"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzabk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzabl"

    aput-object v2, v0, v1

    .line 13
    const-string/jumbo v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\n\u0001\u0003\n\u0002"

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dke;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 15
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    goto :goto_0

    .line 16
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dke;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    if-nez v0, :cond_0

    .line 18
    const-class v1, Lcom/google/android/gms/internal/ads/dke;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dke;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dke;->zzabm:Lcom/google/android/gms/internal/ads/dke;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/ads/dke;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 25
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 26
    goto :goto_0

    .line 9
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
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabk:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dbi;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dke;->zzabl:Lcom/google/android/gms/internal/ads/dbi;

    return-object v0
.end method
