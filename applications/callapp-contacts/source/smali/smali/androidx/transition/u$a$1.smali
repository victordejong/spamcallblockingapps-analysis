.class final Landroidx/transition/u$a$1;
.super Landroidx/transition/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/u$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/b/a;

.field final synthetic b:Landroidx/transition/u$a;


# direct methods
.method constructor <init>(Landroidx/transition/u$a;Landroidx/b/a;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/transition/u$a$1;->b:Landroidx/transition/u$a;

    iput-object p2, p0, Landroidx/transition/u$a$1;->a:Landroidx/b/a;

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/transition/Transition;)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/transition/u$a$1;->a:Landroidx/b/a;

    iget-object v1, p0, Landroidx/transition/u$a$1;->b:Landroidx/transition/u$a;

    iget-object v1, v1, Landroidx/transition/u$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method
