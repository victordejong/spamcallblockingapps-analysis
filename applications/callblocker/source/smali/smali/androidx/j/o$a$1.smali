.class Landroidx/j/o$a$1;
.super Landroidx/j/n;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/b/a;

.field final synthetic b:Landroidx/j/o$a;


# direct methods
.method constructor <init>(Landroidx/j/o$a;Landroidx/b/a;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Landroidx/j/o$a$1;->b:Landroidx/j/o$a;

    iput-object p2, p0, Landroidx/j/o$a$1;->a:Landroidx/b/a;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Landroidx/j/o$a$1;->a:Landroidx/b/a;

    iget-object v1, p0, Landroidx/j/o$a$1;->b:Landroidx/j/o$a;

    iget-object v1, v1, Landroidx/j/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 293
    return-void
.end method
