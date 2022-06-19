.class Landroidx/appcompat/widget/AppCompatSpinner$c$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

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

    .prologue
    .line 1061
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d()V

    .line 1073
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->h()V

    .line 1071
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$2;->a:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->a(Landroidx/appcompat/widget/AppCompatSpinner$c;)V

    goto :goto_0
.end method
