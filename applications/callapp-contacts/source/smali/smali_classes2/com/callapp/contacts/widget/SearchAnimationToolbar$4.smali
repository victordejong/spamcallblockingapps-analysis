.class Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/widget/SearchAnimationToolbar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;Z)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;->b:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    iput-boolean p2, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;->a:Z

    if-nez v0, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 203
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$4;->b:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method
