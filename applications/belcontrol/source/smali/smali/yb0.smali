.class public Lyb0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lyb0;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroid/animation/ObjectAnimator;Landroid/animation/Animator;)Z
    .locals 0

    invoke-static {p0, p1}, Lyb0;->b(Landroid/animation/ObjectAnimator;Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/animation/ObjectAnimator;Landroid/animation/Animator;)Z
    .locals 6

    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_3

    array-length p0, v2

    array-length p1, v0

    if-ne p0, p1, :cond_3

    array-length p0, v2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_2

    aget-object v3, v2, p1

    aget-object v4, v0, p1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static c(Landroid/animation/ObjectAnimator;)V
    .locals 1

    new-instance v0, Lyb0$a;

    invoke-direct {v0, p0}, Lyb0$a;-><init>(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
