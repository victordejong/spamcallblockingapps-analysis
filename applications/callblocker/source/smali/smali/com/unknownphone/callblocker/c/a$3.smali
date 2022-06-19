.class Lcom/unknownphone/callblocker/c/a$3;
.super Lcom/unknownphone/callblocker/custom/d;
.source "GlobalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/c/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 169
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->e(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v1}, Lcom/unknownphone/callblocker/c/a;->e(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 172
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_unknown_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v1}, Lcom/unknownphone/callblocker/c/a;->e(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 175
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_unknown_calls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    const-string/jumbo v0, "\"Block hidden calls\" was activated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/c/a;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string/jumbo v1, "show_premium_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$3;->a:Lcom/unknownphone/callblocker/c/a;

    const/16 v2, 0xae

    invoke-virtual {v1, v0, v2}, Lcom/unknownphone/callblocker/c/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
