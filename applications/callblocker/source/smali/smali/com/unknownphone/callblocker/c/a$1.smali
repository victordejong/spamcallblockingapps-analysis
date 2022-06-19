.class Lcom/unknownphone/callblocker/c/a$1;
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
    .line 151
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;Lcom/unknownphone/callblocker/c/a$a;Z)V

    .line 157
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->c(Lcom/unknownphone/callblocker/c/a;)V

    .line 158
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_all_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$1;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->d(Lcom/unknownphone/callblocker/c/a;)V

    goto :goto_0
.end method
