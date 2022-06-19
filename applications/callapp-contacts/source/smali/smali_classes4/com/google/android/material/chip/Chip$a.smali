.class final Lcom/google/android/material/chip/Chip$a;
.super Landroidx/customview/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    .line 999
    invoke-direct {p0, p2}, Landroidx/customview/a/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(FF)I
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroidx/core/view/a/c;)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1029
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    .line 2755
    iget-object v2, p1, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v2, :cond_0

    iget-object p1, p1, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 2936
    iget-object p1, p1, Lcom/google/android/material/chip/a;->f:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1033
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1034
    iget-object v2, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    .line 1035
    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$j;->mtrl_chip_close_icon_content_description:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, p1

    :cond_2
    aput-object v0, v1, v4

    .line 1036
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1034
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    .line 1041
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->e(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    .line 1042
    sget-object p1, Landroidx/core/view/a/c$a;->e:Landroidx/core/view/a/c$a;

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->a(Landroidx/core/view/a/c$a;)V

    .line 1043
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->i(Z)V

    return-void

    .line 1045
    :cond_3
    invoke-virtual {p2, v0}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-static {}, Lcom/google/android/material/chip/Chip;->e()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1020
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {p1, p2}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;Z)Z

    .line 1021
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/core/view/a/c;)V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->a(Z)V

    .line 1053
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->g(Z)V

    .line 1054
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.view.View"

    .line 1060
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1055
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    .line 1056
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_1

    :cond_2
    const-string v0, "android.widget.Button"

    .line 1055
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 1062
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1063
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 1064
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    return-void

    .line 1068
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1011
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->d(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1013
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    .line 1077
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->performClick()Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1079
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$a;->e:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->b()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
