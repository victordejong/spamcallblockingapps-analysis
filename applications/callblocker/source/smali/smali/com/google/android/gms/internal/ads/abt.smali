.class public abstract Lcom/google/android/gms/internal/ads/abt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/g;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/aad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aad;)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abt;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abt;->a:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abt;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abt;->c:Ljava/lang/ref/WeakReference;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/abt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abt;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aad;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "internal"

    .line 24
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 32
    :goto_1
    return-object v0

    .line 24
    :sswitch_0
    const-string/jumbo v2, "contentLengthMissing"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "error"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "inProgress"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "interrupted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "noop"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "playerFailed"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "expireFailed"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "noCacheDir"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "badUrl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "downloadTimeout"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "externalAbort"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "sizeExceeded"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    .line 25
    :pswitch_0
    const-string/jumbo v0, "internal"

    goto/16 :goto_1

    .line 27
    :pswitch_1
    const-string/jumbo v0, "io"

    goto/16 :goto_1

    .line 29
    :pswitch_2
    const-string/jumbo v0, "network"

    goto/16 :goto_1

    .line 31
    :pswitch_3
    const-string/jumbo v0, "policy"

    goto/16 :goto_1

    .line 24
    :sswitch_data_0
    .sparse-switch
        -0x7416d1be -> :sswitch_3
        -0x533f68d6 -> :sswitch_8
        -0x5049c18e -> :sswitch_2
        -0x36c40c47 -> :sswitch_9
        -0x274d4859 -> :sswitch_0
        -0x26475182 -> :sswitch_5
        -0x151a598c -> :sswitch_b
        -0x1e989db -> :sswitch_a
        0x33af62 -> :sswitch_4
        0x5c4d208 -> :sswitch_1
        0x2293ea3c -> :sswitch_6
        0x2b3e368c -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/abx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/abx;-><init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .locals 15

    .prologue
    .line 14
    sget-object v13, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/aby;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/aby;-><init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 18
    sget-object v6, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/aca;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aca;-><init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJZII)V
    .locals 13

    .prologue
    .line 12
    sget-object v11, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/abv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/abv;-><init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;JJZII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 20
    sget-object v6, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/abz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/abz;-><init>(Lcom/google/android/gms/internal/ads/abt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()V
.end method

.method protected c(I)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method protected d(I)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method protected e(I)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
