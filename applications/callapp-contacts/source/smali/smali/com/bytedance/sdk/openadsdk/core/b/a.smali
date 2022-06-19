.class public Lcom/bytedance/sdk/openadsdk/core/b/a;
.super Lcom/bytedance/sdk/openadsdk/core/b/b;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

.field private C:I

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->A:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "splash_ad"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "draw_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const-string p1, "banner_call"

    packed-switch v2, :pswitch_data_0

    const-string p1, ""

    :pswitch_0
    return-object p1

    :pswitch_1
    const-string p1, "interaction_call"

    return-object p1

    :pswitch_2
    return-object v1

    :pswitch_3
    const-string p1, "feed_call"

    :pswitch_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x2a77c376 -> :sswitch_4
        0xa6dd8fb -> :sswitch_3
        0x6deace12 -> :sswitch_2
        0x72060cfe -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const-string v2, "ClickCreativeListener"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string p1, "NativeVideoTsView...."

    .line 166
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_cover_center_layout"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_logo_image"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_btn_ad_image_tv"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_name"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_ad_button"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_3

    .line 180
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_root_view"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    const-string v5, "tt_video_play"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 184
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 185
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 186
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const-string p1, "tt_root_view...."

    .line 181
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_7
    :goto_3
    const-string p1, "tt_video_ad_cover_center_layout...."

    .line 176
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private e()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 1

    .line 197
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    return v1

    .line 217
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->C:I

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->C:I

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "!isViewVisibility()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isAutoPlay()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",!isCoverPageVisibility()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ClickCreativeListener"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->C:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 227
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->C:I

    if-eq v0, v4, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v4
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 20

    move-object/from16 v12, p0

    const/4 v13, 0x2

    .line 57
    invoke-virtual {v12, v13}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->g()Z

    move-result v0

    const-string v1, "ClickCreativeListener"

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->A:Z

    if-nez v0, :cond_1

    const-string v0, "\u62e6\u622a\u539f\u751f\u89c6\u9891view\u8d70\u666e\u901a\u70b9\u51fb\u4e8b\u4ef6....."

    .line 62
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Landroid/view/View;IIII)V

    return-void

    :cond_1
    const-string v0, "\u8d70\u521b\u610f\u533a\u57df\u70b9\u51fb\u4e8b\u4ef6....."

    .line 66
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    .line 71
    :cond_2
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    if-nez v0, :cond_3

    return-void

    .line 74
    :cond_3
    iget-wide v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->v:J

    iget-wide v7, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->w:J

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->g:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    move-object v9, v1

    goto :goto_0

    :cond_4
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->g:Ljava/lang/ref/WeakReference;

    .line 75
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_0
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    move-object v10, v1

    goto :goto_1

    :cond_5
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->h:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->d()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 74
    invoke-virtual/range {v0 .. v11}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(IIIIJJLandroid/view/View;Landroid/view/View;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d;

    move-result-object v0

    iput-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    .line 77
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    if-eq v0, v13, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v0, -0x1

    goto/16 :goto_2

    .line 97
    :cond_6
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    invoke-direct {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 99
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    const/4 v7, 0x1

    iget-object v8, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v3, "click_call"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    .line 102
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 103
    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v7, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v9, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v4, "click"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    goto/16 :goto_2

    .line 81
    :cond_8
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_9

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_a

    .line 82
    :cond_9
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v7, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v8, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/a/a/a/a/a/c;

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/a/a/a/a/a/c;Z)Z

    move-result v18

    .line 84
    iget-boolean v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v1, :cond_e

    .line 85
    iget-object v13, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v15, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v14, "click"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_2

    .line 88
    :cond_a
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/a/a/a/a/a/c;

    if-eqz v1, :cond_e

    .line 89
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/a/a/a/a/a/c;

    invoke-interface {v1}, Lcom/a/a/a/a/a/c;->e()V

    .line 90
    iget-boolean v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v1, :cond_e

    .line 91
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v3, "click"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_2

    .line 109
    :cond_b
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_c

    iget-boolean v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z

    if-eqz v1, :cond_d

    .line 110
    :cond_c
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v3, "click_button"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    :cond_d
    const/4 v1, 0x1

    .line 113
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Z)V

    .line 114
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:I

    .line 115
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->n:Lcom/a/a/a/a/a/c;

    const/4 v9, 0x1

    .line 114
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/a/a/a/a/a/c;Z)Z

    move-result v18

    .line 116
    iget-boolean v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    if-eqz v1, :cond_e

    .line 117
    iget-object v13, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    iget-object v15, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Ljava/lang/String;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->o:Ljava/util/Map;

    const-string v14, "click"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    .line 124
    :cond_e
    :goto_2
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v1, :cond_f

    .line 125
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    move-object/from16 v2, p1

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a(Landroid/view/View;I)V

    .line 128
    :cond_f
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/a;->B:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    if-eqz v0, :cond_10

    .line 130
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;->onClick()V

    :cond_10
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->B:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Z

    return-void
.end method

.method protected a()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v0

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->c(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v1

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->A:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
