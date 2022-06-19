.class public final Lorg/mistergroup/shouldianswer/utils/b;
.super Ljava/lang/Object;
.source "AnimationHelper.kt"


# instance fields
.field private final a:Landroid/view/animation/Animation;

.field private b:I

.field private final c:Z

.field private d:Z

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->e:Landroid/view/View;

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->c:Z

    .line 21
    iput p3, p0, Lorg/mistergroup/shouldianswer/utils/b;->b:I

    .line 22
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string p2, "AnimationUtils.loadAnima\u2026iew.context, animationId)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->a:Landroid/view/animation/Animation;

    .line 23
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->a:Landroid/view/animation/Animation;

    new-instance p2, Lorg/mistergroup/shouldianswer/utils/b$1;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/utils/b$1;-><init>(Lorg/mistergroup/shouldianswer/utils/b;)V

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/b;I)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/mistergroup/shouldianswer/utils/b;->b:I

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/b;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/utils/b;->d:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/utils/b;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/utils/b;->c:Z

    return p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/utils/b;)I
    .locals 0

    .line 13
    iget p0, p0, Lorg/mistergroup/shouldianswer/utils/b;->b:I

    return p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/utils/b;)Landroid/view/View;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/utils/b;->e:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/b;->d:Z

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/b;->e:Landroid/view/View;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/b;->d:Z

    return-void
.end method
