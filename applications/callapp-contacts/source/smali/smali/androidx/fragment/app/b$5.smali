.class final Landroidx/fragment/app/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/b$a;

.field final synthetic d:Landroidx/fragment/app/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/b$a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Landroidx/fragment/app/b$5;->d:Landroidx/fragment/app/b;

    iput-object p2, p0, Landroidx/fragment/app/b$5;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/b$5;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/b$5;->c:Landroidx/fragment/app/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 255
    iget-object p1, p0, Landroidx/fragment/app/b$5;->a:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/b$5$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/b$5$1;-><init>(Landroidx/fragment/app/b$5;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
