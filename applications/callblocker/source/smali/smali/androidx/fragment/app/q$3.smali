.class Landroidx/fragment/app/q$3;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroidx/fragment/app/q;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Landroidx/fragment/app/q$3;->g:Landroidx/fragment/app/q;

    iput-object p2, p0, Landroidx/fragment/app/q$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/q$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/fragment/app/q$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/q$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/q$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/fragment/app/q$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 232
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Landroidx/fragment/app/q$3;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroidx/fragment/app/q$3;->g:Landroidx/fragment/app/q;

    iget-object v1, p0, Landroidx/fragment/app/q$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/q$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 221
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/q$3;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroidx/fragment/app/q$3;->g:Landroidx/fragment/app/q;

    iget-object v1, p0, Landroidx/fragment/app/q$3;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/q$3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/q$3;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Landroidx/fragment/app/q$3;->g:Landroidx/fragment/app/q;

    iget-object v1, p0, Landroidx/fragment/app/q$3;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/q$3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 227
    :cond_2
    return-void
.end method
