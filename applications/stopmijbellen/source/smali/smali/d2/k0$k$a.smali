.class public Ld2/k0$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0$k;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/k0$k;


# direct methods
.method public constructor <init>(Ld2/k0$k;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$k$a;->b:Ld2/k0$k;

    iput-object p2, p0, Ld2/k0$k$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ld2/k0$k$a;->b:Ld2/k0$k;

    iget-object v1, v1, Ld2/k0$k;->a:Ld2/k0;

    iget-object v2, v0, Ld2/k0$k$a;->a:Ld2/t0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v3, Ld2/t;->a:Landroid/content/Context;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v4, v2, Ld2/t0;->b:Ld2/f4;

    const-string v5, "ad_session_id"

    .line 4
    invoke-virtual {v4, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v6, Ld2/j0;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v6, v3, v5}, Ld2/j0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->a:Ljava/util/HashMap;

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->b:Ljava/util/HashMap;

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->c:Ljava/util/HashMap;

    .line 9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->d:Ljava/util/HashMap;

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->e:Ljava/util/HashMap;

    .line 11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->f:Ljava/util/HashMap;

    .line 12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v6, Ld2/j0;->g:Ljava/util/HashMap;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 15
    iget-object v3, v2, Ld2/t0;->b:Ld2/f4;

    const-string v7, "transparent"

    .line 16
    invoke-static {v3, v7}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 17
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    const-string v7, "id"

    .line 18
    invoke-static {v3, v7}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Ld2/j0;->j:I

    const-string v7, "width"

    .line 19
    invoke-static {v3, v7}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Ld2/j0;->h:I

    const-string v9, "height"

    .line 20
    invoke-static {v3, v9}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Ld2/j0;->i:I

    const-string v9, "module_id"

    .line 21
    invoke-static {v3, v9}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Ld2/j0;->k:I

    const-string v9, "viewability_enabled"

    .line 22
    invoke-static {v3, v9}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v6, Ld2/j0;->n:Z

    .line 23
    iget v3, v6, Ld2/j0;->j:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v6, Ld2/j0;->u:Z

    .line 24
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    .line 25
    iget v10, v6, Ld2/j0;->h:I

    if-nez v10, :cond_4

    iget v10, v6, Ld2/j0;->i:I

    if-nez v10, :cond_4

    .line 26
    iget-boolean v10, v6, Ld2/j0;->w:Z

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ld2/f1;->m()Ld2/b2;

    move-result-object v3

    invoke-virtual {v3}, Ld2/b2;->h()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v3}, Ld2/f1;->m()Ld2/b2;

    move-result-object v3

    invoke-virtual {v3}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v3

    .line 28
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    iput v10, v6, Ld2/j0;->h:I

    .line 29
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v6, Ld2/j0;->i:I

    goto :goto_2

    .line 30
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v6, Ld2/j0;->h:I

    iget v11, v6, Ld2/j0;->i:I

    invoke-direct {v3, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    :goto_2
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/y;

    invoke-direct {v10, v6}, Ld2/y;-><init>(Ld2/j0;)V

    const-string v11, "VideoView.create"

    invoke-static {v11, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/z;

    invoke-direct {v10, v6}, Ld2/z;-><init>(Ld2/j0;)V

    const-string v12, "VideoView.destroy"

    invoke-static {v12, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/a0;

    invoke-direct {v10, v6}, Ld2/a0;-><init>(Ld2/j0;)V

    const-string v13, "WebView.create"

    invoke-static {v13, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/b0;

    invoke-direct {v10, v6}, Ld2/b0;-><init>(Ld2/j0;)V

    const-string v14, "WebView.destroy"

    invoke-static {v14, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/c0;

    invoke-direct {v10, v6}, Ld2/c0;-><init>(Ld2/j0;)V

    const-string v15, "TextView.create"

    invoke-static {v15, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/d0;

    invoke-direct {v10, v6}, Ld2/d0;-><init>(Ld2/j0;)V

    const-string v9, "TextView.destroy"

    invoke-static {v9, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/e0;

    invoke-direct {v10, v6}, Ld2/e0;-><init>(Ld2/j0;)V

    const-string v8, "ImageView.create"

    invoke-static {v8, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v3, v6, Ld2/j0;->s:Ljava/util/ArrayList;

    new-instance v10, Ld2/f0;

    invoke-direct {v10, v6}, Ld2/f0;-><init>(Ld2/j0;)V

    const-string v0, "ImageView.destroy"

    invoke-static {v0, v10}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v3, v6, Ld2/j0;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Landroid/widget/VideoView;

    iget-object v3, v6, Ld2/j0;->y:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Ld2/j0;->z:Landroid/widget/VideoView;

    const/16 v3, 0x8

    .line 48
    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 49
    iget-object v0, v6, Ld2/j0;->z:Landroid/widget/VideoView;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 51
    iget-boolean v0, v6, Ld2/j0;->n:Z

    if-eqz v0, :cond_5

    .line 52
    iget-object v0, v2, Ld2/t0;->b:Ld2/f4;

    const-string v3, "advanced_viewability"

    .line 53
    invoke-static {v0, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    .line 54
    new-instance v3, Ld2/g0;

    invoke-direct {v3, v6, v0}, Ld2/g0;-><init>(Ld2/j0;Z)V

    const-wide/16 v8, 0xc8

    invoke-static {v3, v8, v9}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    .line 55
    :cond_5
    iget-object v0, v1, Ld2/k0;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v4, v7}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 57
    iget-object v0, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    if-nez v0, :cond_6

    .line 58
    iget-object v0, v2, Ld2/t0;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v0, v5}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 60
    :cond_6
    iput-object v6, v0, Ld2/q;->c:Ld2/j0;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, v6, Ld2/j0;->u:Z

    .line 62
    :goto_3
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-string v1, "success"

    const/4 v3, 0x1

    .line 63
    invoke-static {v0, v1, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 64
    invoke-virtual {v2, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    :goto_4
    return-void
.end method
