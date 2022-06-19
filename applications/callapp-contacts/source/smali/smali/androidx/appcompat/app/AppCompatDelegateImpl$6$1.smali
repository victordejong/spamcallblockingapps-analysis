.class final Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;
.super Landroidx/core/view/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$6;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Landroidx/core/view/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1293
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1298
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1299
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/core/view/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/y;->a(Landroidx/core/view/z;)Landroidx/core/view/y;

    .line 1300
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$6$1;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$6;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroidx/core/view/y;

    return-void
.end method
