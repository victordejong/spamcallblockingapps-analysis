.class Lcom/unknownphone/callblocker/h/a$10;
.super Ljava/lang/Object;
.source "ProtectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/h/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/h/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/unknownphone/callblocker/h/a$10;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$10;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_spam_calls"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$10;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "identify_spam_calls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$10;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/h/a;Landroid/content/Context;)V

    .line 191
    return-void
.end method
