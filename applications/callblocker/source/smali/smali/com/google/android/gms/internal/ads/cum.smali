.class public final Lcom/google/android/gms/internal/ads/cum;
.super Lcom/google/android/gms/internal/ads/clf;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/clf;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/cum;
    .locals 2

    .prologue
    .line 1
    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/internal/ads/blk;->a:I

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/cum;->b(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/cum;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/cum;
    .locals 1

    .prologue
    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/cum;->a(Landroid/content/Context;Z)V

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cum;->a(Ljava/lang/String;Landroid/content/Context;ZI)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cum;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/cum;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/din;Landroid/content/Context;Lcom/google/android/gms/internal/ads/atw$a$a;Lcom/google/android/gms/internal/ads/amp$a;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/din;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/atw$a$a;",
            "Lcom/google/android/gms/internal/ads/amp$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/din;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cum;->a:Z

    if-nez v0, :cond_1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/clf;->a(Lcom/google/android/gms/internal/ads/din;Landroid/content/Context;Lcom/google/android/gms/internal/ads/atw$a$a;Lcom/google/android/gms/internal/ads/amp$a;)Ljava/util/List;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/din;->o()I

    move-result v5

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/clf;->a(Lcom/google/android/gms/internal/ads/din;Landroid/content/Context;Lcom/google/android/gms/internal/ads/atw$a$a;Lcom/google/android/gms/internal/ads/amp$a;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/dji;

    .line 16
    const-string/jumbo v2, "hYPTVQdTm2q1YMo1lUce4yXfJpjfBpohGFUC3CCt6OsJQwu7mUSAt5mBInaYKugO"

    .line 17
    const-string/jumbo v3, "pf4sJGlvLCh5M9DSeQtdmDF5FY3IMGGhi6Z7oCoKXow="

    .line 18
    const/16 v6, 0x18

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dji;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 19
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 20
    goto :goto_0
.end method
