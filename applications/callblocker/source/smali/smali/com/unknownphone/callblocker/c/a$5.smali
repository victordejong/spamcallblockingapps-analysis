.class Lcom/unknownphone/callblocker/c/a$5;
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
    .line 200
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->h(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->toggle()V

    .line 205
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->b(Lcom/unknownphone/callblocker/c/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_international_calls"

    iget-object v2, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    .line 206
    invoke-static {v2}, Lcom/unknownphone/callblocker/c/a;->h(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    .line 205
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$5;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a;->h(Lcom/unknownphone/callblocker/c/a;)Lcom/unknownphone/callblocker/c/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/c/a$a;->a(Lcom/unknownphone/callblocker/c/a$a;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "\"Block international calls\" was activated by user."

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method
