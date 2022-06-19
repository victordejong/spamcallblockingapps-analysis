.class Lcom/unknownphone/callblocker/e/c$19;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$19;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$19;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 257
    array-length v0, v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$19;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x2fb

    .line 258
    invoke-static {v1, v0, v2}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 261
    :cond_0
    return-void
.end method
