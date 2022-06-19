.class Landroidx/appcompat/widget/ac$b;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ac;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Landroidx/appcompat/widget/ac$b;->a:Landroidx/appcompat/widget/ac;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1345
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Landroidx/appcompat/widget/ac$b;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Landroidx/appcompat/widget/ac$b;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->a_()V

    .line 1353
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Landroidx/appcompat/widget/ac$b;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->d()V

    .line 1358
    return-void
.end method
