.class final Landroidx/fragment/app/m$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/m;->b(Landroidx/fragment/app/o;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/c/a;Landroidx/fragment/app/m$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/o;

.field final synthetic b:Landroidx/c/a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Landroidx/fragment/app/m$a;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroidx/fragment/app/Fragment;

.field final synthetic h:Landroidx/fragment/app/Fragment;

.field final synthetic i:Z

.field final synthetic j:Ljava/util/ArrayList;

.field final synthetic k:Ljava/lang/Object;

.field final synthetic l:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/o;Landroidx/c/a;Ljava/lang/Object;Landroidx/fragment/app/m$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 736
    iput-object p1, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/o;

    iput-object p2, p0, Landroidx/fragment/app/m$4;->b:Landroidx/c/a;

    iput-object p3, p0, Landroidx/fragment/app/m$4;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/m$4;->d:Landroidx/fragment/app/m$a;

    iput-object p5, p0, Landroidx/fragment/app/m$4;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/m$4;->f:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/m$4;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/m$4;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/m$4;->i:Z

    iput-object p10, p0, Landroidx/fragment/app/m$4;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/m$4;->k:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/m$4;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/o;

    iget-object v1, p0, Landroidx/fragment/app/m$4;->b:Landroidx/c/a;

    iget-object v2, p0, Landroidx/fragment/app/m$4;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/m$4;->d:Landroidx/fragment/app/m$a;

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/o;Landroidx/c/a;Ljava/lang/Object;Landroidx/fragment/app/m$a;)Landroidx/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Landroidx/fragment/app/m$4;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/c/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 744
    iget-object v1, p0, Landroidx/fragment/app/m$4;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/m$4;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/m$4;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/m$4;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Landroidx/fragment/app/m$4;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/c/a;Z)V

    .line 749
    iget-object v1, p0, Landroidx/fragment/app/m$4;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 750
    iget-object v2, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/o;

    iget-object v3, p0, Landroidx/fragment/app/m$4;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/m$4;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/fragment/app/o;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 754
    iget-object v1, p0, Landroidx/fragment/app/m$4;->d:Landroidx/fragment/app/m$a;

    iget-object v2, p0, Landroidx/fragment/app/m$4;->k:Ljava/lang/Object;

    iget-boolean v3, p0, Landroidx/fragment/app/m$4;->i:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/fragment/app/m;->a(Landroidx/c/a;Landroidx/fragment/app/m$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v1, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/o;

    iget-object v2, p0, Landroidx/fragment/app/m$4;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/o;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
