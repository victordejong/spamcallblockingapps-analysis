.class final Lcom/facebook/share/internal/a$9;
.super Lcom/facebook/share/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Lcom/facebook/f;Landroid/os/Bundle;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    iput-object p3, p0, Lcom/facebook/share/internal/a$9;->a:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/d;-><init>(Lcom/facebook/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/internal/a;)V
    .locals 1

    .line 843
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/a$9;->a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public final a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 9

    if-eqz p2, :cond_5

    const-string v0, "object_is_liked"

    .line 783
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 788
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 791
    iget-object v1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    invoke-static {v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v1

    .line 792
    iget-object v2, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    invoke-static {v2}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "like_count_string"

    .line 793
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 794
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v2

    .line 798
    :goto_0
    iget-object v1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    invoke-static {v1}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v1

    .line 799
    iget-object v2, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    .line 800
    invoke-static {v2}, Lcom/facebook/share/internal/a;->e(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "social_sentence"

    .line 801
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 802
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v7, v6

    goto :goto_1

    :cond_2
    move-object v6, v1

    move-object v7, v2

    .line 807
    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unlike_token"

    .line 808
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    .line 809
    invoke-static {p2}, Lcom/facebook/share/internal/a;->f(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v8, p2

    .line 811
    iget-object p2, p0, Lcom/facebook/share/internal/a$9;->a:Landroid/os/Bundle;

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 812
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/internal/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "call_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    invoke-static {p1}, Lcom/facebook/share/internal/a;->g(Lcom/facebook/share/internal/a;)Lcom/facebook/appevents/m;

    move-result-object p1

    const-string v0, "fb_like_control_dialog_did_succeed"

    .line 814
    invoke-virtual {p1, v0, p2}, Lcom/facebook/appevents/m;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 816
    iget-object v2, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    invoke-static/range {v2 .. v8}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 4

    .line 827
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "Like Dialog failed with error : %s"

    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/facebook/share/internal/a$9;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 830
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/internal/a;->a()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object p1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    const-string v1, "present_dialog"

    invoke-static {p1, v1, v0}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 835
    iget-object p1, p0, Lcom/facebook/share/internal/a$9;->b:Lcom/facebook/share/internal/a;

    .line 838
    invoke-static {p2}, Lcom/facebook/internal/z;->a(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 835
    invoke-static {p1, v0, p2}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
