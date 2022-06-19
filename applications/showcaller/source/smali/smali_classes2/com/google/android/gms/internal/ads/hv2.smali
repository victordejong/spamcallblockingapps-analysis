.class public final Lcom/google/android/gms/internal/ads/hv2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ku2;

.field private final b:Lcom/google/android/gms/internal/ads/gv2;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/gv2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ju2;->b:Lcom/google/android/gms/internal/ads/ju2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hv2;->b:Lcom/google/android/gms/internal/ads/gv2;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hv2;->a:Lcom/google/android/gms/internal/ads/ku2;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/hv2;)Lcom/google/android/gms/internal/ads/ku2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hv2;->a:Lcom/google/android/gms/internal/ads/ku2;

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/ku2;)Lcom/google/android/gms/internal/ads/hv2;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hv2;

    new-instance v1, Lcom/google/android/gms/internal/ads/bv2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bv2;-><init>(Lcom/google/android/gms/internal/ads/ku2;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hv2;-><init>(Lcom/google/android/gms/internal/ads/gv2;)V

    return-object v0
.end method

.method public static c(I)Lcom/google/android/gms/internal/ads/hv2;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/hv2;

    new-instance v0, Lcom/google/android/gms/internal/ads/dv2;

    const/16 v1, 0xfa0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dv2;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hv2;-><init>(Lcom/google/android/gms/internal/ads/gv2;)V

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/hv2;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hv2;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hv2;->b:Lcom/google/android/gms/internal/ads/gv2;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/gv2;->a(Lcom/google/android/gms/internal/ads/hv2;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/ev2;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ev2;-><init>(Lcom/google/android/gms/internal/ads/hv2;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hv2;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
