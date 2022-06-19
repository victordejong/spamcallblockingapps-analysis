.class public Ld2/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/j$b;
    }
.end annotation


# instance fields
.field public a:Ld2/j0;

.field public b:Ld2/k;

.field public c:Ld2/h;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/ImageView;

.field public i:Ld2/t1;

.field public j:Ld2/t0;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ld2/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld2/t0;Ld2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p3, p0, Ld2/j;->b:Ld2/k;

    .line 3
    iget-object p1, p3, Ld2/k;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Ld2/j;->e:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Ld2/t0;->b:Ld2/f4;

    const-string p2, "id"

    .line 6
    invoke-virtual {p1, p2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    iput-object p2, p0, Ld2/j;->d:Ljava/lang/String;

    const-string p2, "close_button_filepath"

    .line 8
    invoke-virtual {p1, p2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, p0, Ld2/j;->f:Ljava/lang/String;

    const-string p2, "trusted_demand_source"

    .line 10
    invoke-static {p1, p2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Ld2/j;->k:Z

    const-string p2, "close_button_snap_to_webview"

    .line 11
    invoke-static {p1, p2}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Ld2/j;->o:Z

    const-string p2, "close_button_width"

    .line 12
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ld2/j;->s:I

    const-string p2, "close_button_height"

    .line 13
    invoke-static {p1, p2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ld2/j;->t:I

    .line 14
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ld2/f1;->l()Ld2/k0;

    move-result-object p1

    .line 16
    iget-object p1, p1, Ld2/k0;->b:Ljava/util/HashMap;

    .line 17
    iget-object p2, p0, Ld2/j;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/j0;

    iput-object p1, p0, Ld2/j;->a:Ld2/j0;

    .line 19
    iget-object p1, p3, Ld2/k;->b:Ld2/h;

    .line 20
    iput-object p1, p0, Ld2/j;->c:Ld2/h;

    .line 21
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Ld2/j;->a:Ld2/j0;

    .line 22
    iget p3, p2, Ld2/j0;->h:I

    .line 23
    iget p2, p2, Ld2/j0;->i:I

    .line 24
    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 27
    iget-object p1, p0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 15

    .line 1
    iget-boolean v0, p0, Ld2/j;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "success"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld2/j;->n:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/j;->j:Ld2/t0;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 4
    invoke-static {v0, v3, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 5
    iget-object v3, p0, Ld2/j;->j:Ld2/t0;

    invoke-virtual {v3, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 6
    iput-object v2, p0, Ld2/j;->j:Ld2/t0;

    :cond_0
    return v1

    .line 7
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v4

    .line 9
    iget v5, p0, Ld2/j;->q:I

    if-lez v5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 11
    :goto_0
    iget v6, p0, Ld2/j;->r:I

    if-lez v6, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 13
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 14
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    .line 15
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget-object v10, p0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {p0}, Ld2/j;->getWebView()Ld2/x3;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 18
    new-instance v10, Ld2/t0;

    const-string v11, "WebView.set_bounds"

    invoke-direct {v10, v11, v1}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v11, Ld2/f4;

    invoke-direct {v11}, Ld2/f4;-><init>()V

    const-string v12, "x"

    .line 20
    invoke-static {v11, v12, v7}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v7, "y"

    .line 21
    invoke-static {v11, v7, v8}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v8, "width"

    .line 22
    invoke-static {v11, v8, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v13, "height"

    .line 23
    invoke-static {v11, v13, v6}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 24
    iput-object v11, v10, Ld2/t0;->b:Ld2/f4;

    .line 25
    invoke-virtual {v9, v10}, Ld2/x3;->i(Ld2/t0;)V

    .line 26
    invoke-virtual {v0}, Ld2/b2;->f()F

    move-result v0

    .line 27
    new-instance v10, Ld2/f4;

    invoke-direct {v10}, Ld2/f4;-><init>()V

    .line 28
    invoke-static {}, Ld2/i3;->C()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ld2/i3;->x(Ljava/lang/String;)I

    move-result v11

    const-string v14, "app_orientation"

    invoke-static {v10, v14, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    .line 29
    invoke-static {v10, v8, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    int-to-float v5, v6

    div-float/2addr v5, v0

    float-to-int v0, v5

    .line 30
    invoke-static {v10, v13, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 31
    invoke-static {v9}, Ld2/i3;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {v10, v12, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 32
    invoke-static {v9}, Ld2/i3;->n(Landroid/view/View;)I

    move-result v0

    invoke-static {v10, v7, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 33
    iget-object v0, p0, Ld2/j;->d:Ljava/lang/String;

    const-string v5, "ad_session_id"

    invoke-static {v10, v5, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    new-instance v0, Ld2/t0;

    iget-object v5, p0, Ld2/j;->a:Ld2/j0;

    .line 35
    iget v5, v5, Ld2/j0;->k:I

    const-string v6, "MRAID.on_size_change"

    .line 36
    invoke-direct {v0, v6, v5, v10}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 37
    :cond_4
    iget-object v0, p0, Ld2/j;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 38
    iget-object v5, p0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 39
    :cond_5
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 40
    iget-boolean v5, p0, Ld2/j;->m:Z

    if-nez v5, :cond_8

    if-eqz v9, :cond_8

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result v5

    .line 42
    iget v6, p0, Ld2/j;->s:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 43
    iget v7, p0, Ld2/j;->t:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v5, v7

    .line 44
    iget-boolean v7, p0, Ld2/j;->o:Z

    if-eqz v7, :cond_6

    .line 45
    iget v4, v9, Ld2/x3;->m:I

    .line 46
    iget v7, v9, Ld2/x3;->q:I

    add-int/2addr v4, v7

    goto :goto_2

    .line 47
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 48
    :goto_2
    iget-boolean v7, p0, Ld2/j;->o:Z

    if-eqz v7, :cond_7

    .line 49
    iget v7, v9, Ld2/x3;->o:I

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 50
    :goto_3
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ld2/j;->h:Landroid/widget/ImageView;

    .line 51
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Ld2/j;->f:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 52
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sub-int/2addr v4, v6

    .line 53
    invoke-virtual {v8, v4, v7, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    iget-object v1, p0, Ld2/j;->h:Landroid/widget/ImageView;

    new-instance v4, Ld2/j$a;

    invoke-direct {v4, p0, v0}, Ld2/j$a;-><init>(Ld2/j;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Ld2/j;->a:Ld2/j0;

    iget-object v1, p0, Ld2/j;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Ld2/j;->a:Ld2/j0;

    iget-object v1, p0, Ld2/j;->h:Landroid/widget/ImageView;

    sget-object v4, La7/e;->a:La7/e;

    invoke-virtual {v0, v1, v4}, Ld2/j0;->a(Landroid/view/View;La7/e;)V

    .line 57
    :cond_8
    iget-object v0, p0, Ld2/j;->j:Ld2/t0;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 58
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 59
    invoke-static {v0, v3, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 60
    iget-object v3, p0, Ld2/j;->j:Ld2/t0;

    invoke-virtual {v3, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 61
    iput-object v2, p0, Ld2/j;->j:Ld2/t0;

    :cond_9
    return v1
.end method

.method public getAdSize()Ld2/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->c:Ld2/h;

    return-object v0
.end method

.method public getClickOverride()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Ld2/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->a:Ld2/j0;

    return-object v0
.end method

.method public getListener()Ld2/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->b:Ld2/k;

    return-object v0
.end method

.method public getOmidManager()Ld2/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->i:Ld2/t1;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Ld2/j;->p:I

    return v0
.end method

.method public getTrustedDemandSource()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/j;->k:Z

    return v0
.end method

.method public getWebView()Ld2/x3;
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/j;->a:Ld2/j0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Ld2/j0;->c:Ljava/util/HashMap;

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/x3;

    :goto_0
    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setClickOverride(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j;->g:Ljava/lang/String;

    return-void
.end method

.method public setExpandMessage(Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j;->j:Ld2/t0;

    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    invoke-virtual {v0}, Ld2/b2;->f()F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Ld2/j;->r:I

    return-void
.end method

.method public setExpandedWidth(I)V
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    invoke-virtual {v0}, Ld2/b2;->f()F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Ld2/j;->q:I

    return-void
.end method

.method public setListener(Ld2/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j;->b:Ld2/k;

    return-void
.end method

.method public setNoCloseButton(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/j;->k:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ld2/j;->m:Z

    return-void
.end method

.method public setOmidManager(Ld2/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j;->i:Ld2/t1;

    return-void
.end method

.method public setOnDestroyListenerOrCall(Ld2/j$b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld2/j;->l:Z

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ld2/l1;

    .line 3
    iget-object p1, p1, Ld2/l1;->a:Ld2/f1;

    .line 4
    iget v0, p1, Ld2/f1;->W:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ld2/f1;->W:I

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ld2/f1;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Ld2/j;->u:Ld2/j$b;

    :cond_1
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld2/j;->p:I

    return-void
.end method

.method public setUserInteraction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld2/j;->n:Z

    return-void
.end method
