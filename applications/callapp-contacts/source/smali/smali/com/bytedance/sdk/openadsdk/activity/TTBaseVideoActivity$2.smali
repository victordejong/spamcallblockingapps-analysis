.class Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;
.super Lcom/bytedance/sdk/openadsdk/core/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a_(Landroid/view/View;IIII)V
    .locals 6

    .line 1420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Landroid/view/View;IIII)V

    .line 1421
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p5, "tt_video_reward_bar"

    invoke-static {p4, p5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Z)Z

    .line 1422
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->aM:Landroid/view/View;

    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p4, "tt_playable_play"

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 1424
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->x()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1426
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1427
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1428
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/o;->i()Ljava/lang/String;

    move-result-object p3

    const-string p4, "playable_url"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object p4, p3, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->a:Ljava/lang/String;

    const-string v0, "click_playable_download_button_loading"

    invoke-static {p3, p4, p5, v0, p2}, Lcom/bytedance/sdk/openadsdk/d/e;->g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1435
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->H:Lcom/a/a/a/a/a/c;

    if-nez p2, :cond_3

    .line 1436
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Landroid/view/View;)V

    return-void

    .line 1439
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p4, "tt_rb_score"

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    if-ne p2, p3, :cond_4

    .line 1440
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p2, "click_play_star_level"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 1441
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p5, "tt_comment_vertical"

    invoke-static {p3, p5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_5

    .line 1442
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p2, "click_play_star_nums"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 1443
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p5, "tt_reward_ad_appname"

    invoke-static {p3, p5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-ne p2, p3, :cond_6

    .line 1444
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p2, "click_play_source"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 1445
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p3, "tt_reward_ad_icon"

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 1446
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$2;->b:Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;

    const-string p2, "click_play_logo"

    invoke-static {p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method
