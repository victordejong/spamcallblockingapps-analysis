.class final synthetic Lcom/google/android/gms/internal/ads/beg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bef;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bef;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/beg;->a:Lcom/google/android/gms/internal/ads/bef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/beg;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/beg;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/beg;->a:Lcom/google/android/gms/internal/ads/bef;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/beg;->b:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/beg;->c:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    .line 1023
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bel;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/bel;-><init>(Lcom/google/android/gms/internal/ads/bef;Ljava/util/Map;)V

    .line 1024
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    if-eqz p2, :cond_3

    .line 1028
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "validator_width"

    .line 1030
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->eH:Lcom/google/android/gms/internal/ads/af;

    .line 1032
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1033
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1034
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/bef;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "validator_height"

    .line 1036
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->eI:Lcom/google/android/gms/internal/ads/af;

    .line 1038
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 1039
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1040
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/bef;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "validator_x"

    .line 1041
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/bef;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "validator_y"

    .line 1042
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/ads/bef;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1043
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/afh;->a(II)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 1045
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v2

    .line 1046
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->eJ:Lcom/google/android/gms/internal/ads/af;

    .line 1048
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1049
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1051
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->eK:Lcom/google/android/gms/internal/ads/af;

    .line 1054
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1055
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1058
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzaaj()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1059
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1060
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1061
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-interface {v7, v2, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "orientation"

    .line 1062
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1063
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1064
    invoke-virtual {v8, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    .line 1065
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1067
    :cond_0
    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1066
    :cond_1
    :goto_1
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v2, v1

    move v6, v2

    .line 1068
    new-instance v9, Lcom/google/android/gms/internal/ads/bei;

    move-object v1, v9

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bei;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/bef;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1069
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1070
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1071
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bef;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const-string v0, "overlay_url"

    .line 1072
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1073
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1074
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/adt;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
