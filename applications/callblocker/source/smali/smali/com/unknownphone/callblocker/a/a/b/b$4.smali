.class Lcom/unknownphone/callblocker/a/a/b/b$4;
.super Ljava/lang/Object;
.source "RecentCallsAltFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/b/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/b/b;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 140
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->b(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 154
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->c(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 144
    new-instance v2, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v2}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 145
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 146
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->g(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 151
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$4;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/b/b;->f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v1

    const v2, 0x7f090110

    invoke-interface {v1, v2, v0, v4}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V

    goto :goto_0
.end method
