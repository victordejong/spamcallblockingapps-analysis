.class Lcom/unknownphone/callblocker/i/b$1;
.super Lcom/unknownphone/callblocker/custom/f;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/i/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/i/b;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 181
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/i/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->b(Lcom/unknownphone/callblocker/i/b;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www.listaspam.com/busca.php?Telefono="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    .line 185
    invoke-static {v4}, Lcom/unknownphone/callblocker/i/b;->c(Lcom/unknownphone/callblocker/i/b;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/i/b;->a(Landroid/content/Intent;)V

    .line 200
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->b(Lcom/unknownphone/callblocker/i/b;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unknownphone/callblocker/custom/b;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www.unknownphone.com/search.php?num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    .line 189
    invoke-static {v4}, Lcom/unknownphone/callblocker/i/b;->c(Lcom/unknownphone/callblocker/i/b;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/i/b;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    .line 192
    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->b(Lcom/unknownphone/callblocker/i/b;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ".unknownphone.com/search.php?num="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    .line 193
    invoke-static {v4}, Lcom/unknownphone/callblocker/i/b;->c(Lcom/unknownphone/callblocker/i/b;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/i/b;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 196
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/i/b;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string/jumbo v1, "show_premium_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$1;->a:Lcom/unknownphone/callblocker/i/b;

    const/16 v2, 0x3ab

    invoke-virtual {v1, v0, v2}, Lcom/unknownphone/callblocker/i/b;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
