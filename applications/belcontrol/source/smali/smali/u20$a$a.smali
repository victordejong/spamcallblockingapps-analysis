.class public Lu20$a$a;
.super Lt20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu20$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb4;

.field public final synthetic b:Lu20$a;


# direct methods
.method public constructor <init>(Lu20$a;Lb4;)V
    .locals 0

    iput-object p1, p0, Lu20$a$a;->b:Lu20$a;

    iput-object p2, p0, Lu20$a$a;->a:Lb4;

    invoke-direct {p0}, Lt20;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lu20$a$a;->a:Lb4;

    iget-object v1, p0, Lu20$a$a;->b:Lu20$a;

    iget-object v1, v1, Lu20$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method
