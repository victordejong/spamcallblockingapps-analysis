.class final Lcom/google/android/gms/internal/ads/bdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dg;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ben;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/ben;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdp;->c:Lcom/google/android/gms/internal/ads/bdo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/ben;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdp;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/ben;

    sget-object v1, Lcom/google/android/gms/internal/ads/bdm;->a:[Ljava/lang/String;

    .line 2058
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ben;->f()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2061
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 2062
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/ben;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdp;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ben;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/ben;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ben;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdp;->a:Lcom/google/android/gms/internal/ads/ben;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ben;->j()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
