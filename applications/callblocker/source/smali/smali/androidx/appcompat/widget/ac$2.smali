.class Landroidx/appcompat/widget/ac$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ac;->i()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ac;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Landroidx/appcompat/widget/ac$2;->a:Landroidx/appcompat/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1192
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1193
    iget-object v0, p0, Landroidx/appcompat/widget/ac$2;->a:Landroidx/appcompat/widget/ac;

    iget-object v0, v0, Landroidx/appcompat/widget/ac;->c:Landroidx/appcompat/widget/z;

    .line 1195
    if-eqz v0, :cond_0

    .line 1196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z;->setListSelectionHidden(Z)V

    .line 1199
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1203
    return-void
.end method
