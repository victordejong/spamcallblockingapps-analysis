.class final Landroidx/fragment/app/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroidx/fragment/app/v;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/fragment/app/Fragment;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/fragment/app/v;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 441
    iput-object p1, p0, Landroidx/fragment/app/t$4;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/t$4;->b:Landroidx/fragment/app/v;

    iput-object p3, p0, Landroidx/fragment/app/t$4;->c:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/t$4;->d:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Landroidx/fragment/app/t$4;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/t$4;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/t$4;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/t$4;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 444
    iget-object v0, p0, Landroidx/fragment/app/t$4;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Landroidx/fragment/app/t$4;->b:Landroidx/fragment/app/v;

    iget-object v2, p0, Landroidx/fragment/app/t$4;->c:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/v;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Landroidx/fragment/app/t$4;->b:Landroidx/fragment/app/v;

    iget-object v1, p0, Landroidx/fragment/app/t$4;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/t$4;->d:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Landroidx/fragment/app/t$4;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/t$4;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    iget-object v1, p0, Landroidx/fragment/app/t$4;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 452
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/t$4;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Landroidx/fragment/app/t$4;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    iget-object v1, p0, Landroidx/fragment/app/t$4;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v1, p0, Landroidx/fragment/app/t$4;->b:Landroidx/fragment/app/v;

    iget-object v2, p0, Landroidx/fragment/app/t$4;->h:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/t$4;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 459
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/t$4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Landroidx/fragment/app/t$4;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/t$4;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
