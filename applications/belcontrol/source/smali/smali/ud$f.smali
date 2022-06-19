.class public final Lud$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud;->l(Lwd;Landroid/view/ViewGroup;Landroid/view/View;Lb4;Lud$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwd;

.field public final synthetic b:Lb4;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lud$h;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic j:Landroidx/fragment/app/Fragment;

.field public final synthetic k:Z

.field public final synthetic l:Ljava/util/ArrayList;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lwd;Lb4;Ljava/lang/Object;Lud$h;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lud$f;->a:Lwd;

    iput-object p2, p0, Lud$f;->b:Lb4;

    iput-object p3, p0, Lud$f;->c:Ljava/lang/Object;

    iput-object p4, p0, Lud$f;->d:Lud$h;

    iput-object p5, p0, Lud$f;->f:Ljava/util/ArrayList;

    iput-object p6, p0, Lud$f;->g:Landroid/view/View;

    iput-object p7, p0, Lud$f;->h:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Lud$f;->j:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Lud$f;->k:Z

    iput-object p10, p0, Lud$f;->l:Ljava/util/ArrayList;

    iput-object p11, p0, Lud$f;->m:Ljava/lang/Object;

    iput-object p12, p0, Lud$f;->n:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lud$f;->a:Lwd;

    iget-object v1, p0, Lud$f;->b:Lb4;

    iget-object v2, p0, Lud$f;->c:Ljava/lang/Object;

    iget-object v3, p0, Lud$f;->d:Lud$h;

    invoke-static {v0, v1, v2, v3}, Lud;->h(Lwd;Lb4;Ljava/lang/Object;Lud$h;)Lb4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lud$f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb4;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lud$f;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lud$f;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lud$f;->h:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lud$f;->j:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Lud$f;->k:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lud;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb4;Z)V

    iget-object v1, p0, Lud$f;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lud$f;->a:Lwd;

    iget-object v3, p0, Lud$f;->l:Ljava/util/ArrayList;

    iget-object v4, p0, Lud$f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lwd;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lud$f;->d:Lud$h;

    iget-object v2, p0, Lud$f;->m:Ljava/lang/Object;

    iget-boolean v3, p0, Lud$f;->k:Z

    invoke-static {v0, v1, v2, v3}, Lud;->t(Lb4;Lud$h;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lud$f;->a:Lwd;

    iget-object v2, p0, Lud$f;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lwd;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
