.class Landroidx/appcompat/app/j$c;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lb/h/l/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/j;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/j$c;->a:Landroidx/appcompat/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/j$c;->a:Landroidx/appcompat/app/j;

    iget-object p1, p1, Landroidx/appcompat/app/j;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
