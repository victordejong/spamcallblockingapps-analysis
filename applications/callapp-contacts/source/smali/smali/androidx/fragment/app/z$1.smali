.class final Landroidx/fragment/app/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/z$a;

.field final synthetic b:Landroidx/fragment/app/z;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z;Landroidx/fragment/app/z$a;)V
    .locals 0

    .line 204
    iput-object p1, p0, Landroidx/fragment/app/z$1;->b:Landroidx/fragment/app/z;

    iput-object p2, p0, Landroidx/fragment/app/z$1;->a:Landroidx/fragment/app/z$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 207
    iget-object v0, p0, Landroidx/fragment/app/z$1;->b:Landroidx/fragment/app/z;

    iget-object v0, v0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/z$1;->a:Landroidx/fragment/app/z$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroidx/fragment/app/z$1;->a:Landroidx/fragment/app/z$a;

    .line 1539
    iget-object v0, v0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 208
    iget-object v1, p0, Landroidx/fragment/app/z$1;->a:Landroidx/fragment/app/z$a;

    .line 1558
    iget-object v1, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 208
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/z$b$b;->applyState(Landroid/view/View;)V

    :cond_0
    return-void
.end method
