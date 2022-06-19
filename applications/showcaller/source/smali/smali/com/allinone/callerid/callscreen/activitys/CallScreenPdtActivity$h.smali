.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;
.super Lc/d/a/i;
.source "CallScreenPdtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Lc/d/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lc/d/a/a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;J)J

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "callscreen"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8017\u65f6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->j0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v4}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->l0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "callscreen_download_success"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u6210\u529f\uff1a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z

    .line 9
    invoke-static {}, Lcom/allinone/callerid/d/b/b;->b()Lcom/allinone/callerid/d/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/b/b;->c(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setPath(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;Lc/d/a/a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/e/f/b;->a(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;Lcom/allinone/callerid/d/e/f/a;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected d(Lc/d/a/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->f(Ljava/lang/String;)V

    .line 9
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Throwable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callscreen"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected f(Lc/d/a/a;II)V
    .locals 0

    return-void
.end method

.method protected g(Lc/d/a/a;II)V
    .locals 0

    return-void
.end method

.method protected h(Lc/d/a/a;II)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lc/d/a/a;->v()I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p1}, Lc/d/a/a;->f()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    const-string p3, "%"

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v1, p2, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "callscreen"

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z

    :cond_3
    return-void
.end method

.method protected k(Lc/d/a/a;)V
    .locals 0

    return-void
.end method
