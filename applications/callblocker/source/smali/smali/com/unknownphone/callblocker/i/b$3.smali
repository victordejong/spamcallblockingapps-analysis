.class Lcom/unknownphone/callblocker/i/b$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/b;->au()V
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
    .line 659
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/i/b$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 662
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->i(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v2}, Lcom/unknownphone/callblocker/i/b;->k(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v3}, Lcom/unknownphone/callblocker/i/b;->l(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/i/b;->e(Lcom/unknownphone/callblocker/i/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/i/b;Ljava/lang/String;Z)V

    .line 664
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/i/b;->j(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const v1, 0x7f090110

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/b$3;->b:Lcom/unknownphone/callblocker/i/b;

    invoke-static {v2}, Lcom/unknownphone/callblocker/i/b;->j(Lcom/unknownphone/callblocker/i/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v2

    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/f/a;)Lcom/unknownphone/callblocker/a/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    goto :goto_0
.end method
