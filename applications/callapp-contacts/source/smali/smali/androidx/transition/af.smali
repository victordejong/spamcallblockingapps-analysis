.class Landroidx/transition/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/af$a;
    }
.end annotation


# instance fields
.field protected a:Landroidx/transition/af$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/transition/af$a;

    invoke-direct {v0, p1, p2, p3, p0}, Landroidx/transition/af$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/af;)V

    iput-object v0, p0, Landroidx/transition/af;->a:Landroidx/transition/af$a;

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Landroid/view/View;)Landroidx/transition/af;
    .locals 5

    .line 65
    invoke-static {p0}, Landroidx/transition/af;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    instance-of v4, v3, Landroidx/transition/af$a;

    if-eqz v4, :cond_0

    .line 71
    check-cast v3, Landroidx/transition/af$a;

    iget-object p0, v3, Landroidx/transition/af$a;->e:Landroidx/transition/af;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Landroidx/transition/aa;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Landroidx/transition/aa;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/transition/af;->a:Landroidx/transition/af$a;

    .line 1159
    invoke-virtual {v0}, Landroidx/transition/af$a;->a()V

    .line 1160
    iget-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    .line 1164
    :cond_0
    iget-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    iget-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/transition/af$a;->invalidate(Landroid/graphics/Rect;)V

    .line 1168
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 86
    iget-object v0, p0, Landroidx/transition/af;->a:Landroidx/transition/af$a;

    .line 1174
    iget-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, v0, Landroidx/transition/af$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1176
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/transition/af$a;->invalidate(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 1177
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1178
    invoke-virtual {v0}, Landroidx/transition/af$a;->b()V

    :cond_0
    return-void
.end method
