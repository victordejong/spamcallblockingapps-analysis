.class final Landroidx/appcompat/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->d()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->d()V

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->d()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->e_()V

    .line 156
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/view/b;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->a:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->g:Landroidx/core/view/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/b;->a(Z)V

    :cond_1
    return-void
.end method
