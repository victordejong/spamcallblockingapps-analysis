.class final Lcom/facebook/share/internal/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 9

    if-eqz p1, :cond_6

    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    .line 1050
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1054
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    .line 1057
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    .line 1059
    invoke-static {v0}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    .line 1062
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    .line 1064
    invoke-static {v0}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    .line 1067
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    .line 1069
    invoke-static {v0}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    .line 1072
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1073
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    .line 1074
    invoke-static {v0}, Lcom/facebook/share/internal/a;->e(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v7, v0

    const-string v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    .line 1077
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1078
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    .line 1079
    invoke-static {p1}, Lcom/facebook/share/internal/a;->f(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v8, p1

    .line 1081
    iget-object v2, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/a;

    invoke-static/range {v2 .. v8}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void
.end method
