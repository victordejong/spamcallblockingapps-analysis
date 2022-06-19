.class Landroidx/appcompat/app/o$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/core/g/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/o;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/o;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/appcompat/app/o$3;->a:Landroidx/appcompat/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p1, p0, Landroidx/appcompat/app/o$3;->a:Landroidx/appcompat/app/o;

    iget-object p1, p1, Landroidx/appcompat/app/o;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 165
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
