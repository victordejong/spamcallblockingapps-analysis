.class public final Lcom/google/android/gms/internal/ads/dfc;
.super Lcom/google/android/gms/internal/ads/czy;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/czy;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dfc;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/bum;->a:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/dfc;->b(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/dfc;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/dfc;
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dfc;->a(Landroid/content/Context;Z)V

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dfc;->a(Ljava/lang/String;Landroid/content/Context;ZI)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/dfc;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/dfc;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/dtg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/beb$a$b;Lcom/google/android/gms/internal/ads/azz$a;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dtg;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/beb$a$b;",
            "Lcom/google/android/gms/internal/ads/azz$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1074
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dtg;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dfc;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dtg;->c()I

    move-result v6

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/czy;->a(Lcom/google/android/gms/internal/ads/dtg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/beb$a$b;Lcom/google/android/gms/internal/ads/azz$a;)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/dua;

    const/16 v7, 0x18

    const-string v3, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W"

    const-string v4, "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dua;-><init>(Lcom/google/android/gms/internal/ads/dtg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/beb$a$b;II)V

    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/czy;->a(Lcom/google/android/gms/internal/ads/dtg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/beb$a$b;Lcom/google/android/gms/internal/ads/azz$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
