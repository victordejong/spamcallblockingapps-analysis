.class Lcom/unknownphone/callblocker/a/b$5;
.super Ljava/lang/Object;
.source "BlockedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatEditText;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Landroidx/appcompat/widget/AppCompatEditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$5;->c:Lcom/unknownphone/callblocker/a/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$5;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lcom/unknownphone/callblocker/a/b$5;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$5;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/a/c;-><init>()V

    .line 376
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/c;->a(S)V

    .line 377
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$5;->c:Lcom/unknownphone/callblocker/a/b;

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/a/b;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/c;->a(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$5;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/c;->b(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/d/b;->a(Lcom/unknownphone/callblocker/a/c;)V

    .line 384
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$5;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 386
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$5;->c:Lcom/unknownphone/callblocker/a/b;

    sget-object v1, Lcom/unknownphone/callblocker/a/b$b$a;->a:Lcom/unknownphone/callblocker/a/b$b$a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$5;->a:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$5;->c:Lcom/unknownphone/callblocker/a/b;

    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/a/b;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
