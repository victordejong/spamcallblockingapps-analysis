.class public Ls$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls;->O()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$c;->a:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lrb;)Lrb;
    .locals 4

    invoke-virtual {p2}, Lrb;->h()I

    move-result v0

    iget-object v1, p0, Ls$c;->a:Ls;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ls;->J0(Lrb;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lrb;->f()I

    move-result v0

    invoke-virtual {p2}, Lrb;->g()I

    move-result v2

    invoke-virtual {p2}, Lrb;->e()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lrb;->n(IIII)Lrb;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Ljb;->Z(Landroid/view/View;Lrb;)Lrb;

    move-result-object p1

    return-object p1
.end method
