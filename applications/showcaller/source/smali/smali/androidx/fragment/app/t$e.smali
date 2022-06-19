.class Landroidx/fragment/app/t$e;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/t;->m(Landroidx/fragment/app/v;Landroid/view/ViewGroup;Landroid/view/View;Lb/e/a;Landroidx/fragment/app/t$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/fragment/app/Fragment;

.field final synthetic e:Landroidx/fragment/app/Fragment;

.field final synthetic f:Z

.field final synthetic g:Lb/e/a;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroidx/fragment/app/v;

.field final synthetic j:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/e/a;Landroid/view/View;Landroidx/fragment/app/v;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/t$e;->d:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/t$e;->e:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/t$e;->f:Z

    iput-object p4, p0, Landroidx/fragment/app/t$e;->g:Lb/e/a;

    iput-object p5, p0, Landroidx/fragment/app/t$e;->h:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/t$e;->i:Landroidx/fragment/app/v;

    iput-object p7, p0, Landroidx/fragment/app/t$e;->j:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/t$e;->d:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/t$e;->e:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/t$e;->f:Z

    iget-object v3, p0, Landroidx/fragment/app/t$e;->g:Lb/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/t;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/e/a;Z)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/t$e;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/t$e;->i:Landroidx/fragment/app/v;

    iget-object v2, p0, Landroidx/fragment/app/t$e;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/v;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
