.class Landroidx/appcompat/widget/z$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/z;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/z;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    .line 712
    iget-object v0, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/z;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/z;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/z$b;

    .line 707
    iget-object v0, p0, Landroidx/appcompat/widget/z$b;->a:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->drawableStateChanged()V

    .line 708
    return-void
.end method
