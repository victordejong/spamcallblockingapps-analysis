.class Lcom/unknownphone/callblocker/i/b$13;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/b;->at()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/i/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/i/b$13;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 598
    new-instance v1, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v1}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 599
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 600
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->h(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    const v2, 0x7f10020a

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/i/b;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->i(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 603
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/i/b;Ljava/lang/String;Z)V

    .line 604
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->j(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const v1, 0x7f090110

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v2}, Lcom/unknownphone/callblocker/i/b;->j(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_1
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$13;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->h(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    goto :goto_1
.end method
