.class final Landroidx/transition/Fade$1;
.super Landroidx/transition/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/transition/Fade;


# direct methods
.method constructor <init>(Landroidx/transition/Fade;Landroid/view/View;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/transition/Fade$1;->b:Landroidx/transition/Fade;

    iput-object p2, p0, Landroidx/transition/Fade$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/transition/Transition;)V
    .locals 2

    .line 139
    iget-object v0, p0, Landroidx/transition/Fade$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/ai;->a(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Landroidx/transition/Fade$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/ai;->e(Landroid/view/View;)V

    .line 141
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method
