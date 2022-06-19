.class Lcom/google/android/material/chip/Chip$a;
.super Landroidx/d/b/a;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    .line 974
    invoke-direct {p0, p2}, Landroidx/d/b/a;-><init>(Landroid/view/View;)V

    .line 975
    return-void
.end method


# virtual methods
.method protected a(FF)I
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ILandroidx/core/h/a/c;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1003
    if-ne p1, v3, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1005
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->e(Ljava/lang/CharSequence;)V

    .line 1016
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->b(Landroid/graphics/Rect;)V

    .line 1017
    sget-object v0, Landroidx/core/h/a/c$a;->e:Landroidx/core/h/a/c$a;

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->a(Landroidx/core/h/a/c$a;)V

    .line 1018
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->h(Z)V

    .line 1023
    :goto_1
    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1009
    iget-object v1, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    .line 1010
    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->mtrl_chip_close_icon_content_description:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1013
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    aput-object v0, v3, v4

    .line 1011
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->e(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1013
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1020
    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->e(Ljava/lang/CharSequence;)V

    .line 1021
    invoke-static {}, Lcom/google/android/material/chip/Chip;->f()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->b(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method protected a(IZ)V
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p2}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;Z)Z

    .line 996
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 998
    :cond_0
    return-void
.end method

.method protected a(Landroidx/core/h/a/c;)V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->a(Z)V

    .line 1028
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->g(Z)V

    .line 1029
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    .line 1031
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.widget.CompoundButton"

    .line 1030
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/CharSequence;)V

    .line 1037
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1038
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 1039
    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->c(Ljava/lang/CharSequence;)V

    .line 1045
    :goto_2
    return-void

    .line 1031
    :cond_1
    const-string/jumbo v0, "android.widget.Button"

    goto :goto_0

    .line 1035
    :cond_2
    const-string/jumbo v0, "android.view.View"

    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1043
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/core/h/a/c;->e(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_0
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1050
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 1051
    if-nez p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->performClick()Z

    move-result v0

    .line 1057
    :goto_0
    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->c:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->b()Z

    move-result v0

    goto :goto_0

    .line 1057
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
