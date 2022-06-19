.class Lcom/unknownphone/callblocker/a/a/a/c$3;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/c;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$3;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$3;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c$3;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/c;->r()Landroidx/fragment/app/d;

    move-result-object v1

    const-class v2, Lcom/unknownphone/callblocker/activity/ReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/c$3;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v2}, Lcom/unknownphone/callblocker/a/a/a/c;->b(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/c$3;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/content/Intent;)V

    .line 126
    return-void
.end method
