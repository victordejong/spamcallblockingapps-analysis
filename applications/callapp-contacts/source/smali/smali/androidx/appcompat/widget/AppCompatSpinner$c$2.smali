.class final Landroidx/appcompat/widget/AppCompatSpinner$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$c;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1074
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2102
    invoke-static {v1}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1075
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d()V

    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->h()V

    .line 1081
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    return-void
.end method
