.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;
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
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {p0}, Lc/d/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lc/d/a/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/b/b;->b()Lcom/allinone/callerid/d/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/b/b;->c(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setAudio_path(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/e/f/b;->a(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;Lcom/allinone/callerid/d/e/f/a;)V

    .line 5
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callscreen"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u9891\u4e0b\u8f7d\u6210\u529f\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v0

    invoke-interface {p1}, Lc/d/a/a;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setAudio_path(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->u0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->o0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_set_default_ringtone"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected d(Lc/d/a/a;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 2
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

    :cond_0
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
    .locals 0

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

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "audio_progress: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callscreen"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected k(Lc/d/a/a;)V
    .locals 0

    return-void
.end method
