.class public final Landroidx/gridlayout/widget/GridLayout$e;
.super Landroidx/gridlayout/widget/GridLayout$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/gridlayout/widget/GridLayout;->i(Landroidx/gridlayout/widget/GridLayout$i;Landroidx/gridlayout/widget/GridLayout$i;)Landroidx/gridlayout/widget/GridLayout$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/gridlayout/widget/GridLayout$i;

.field public final synthetic b:Landroidx/gridlayout/widget/GridLayout$i;


# direct methods
.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$i;Landroidx/gridlayout/widget/GridLayout$i;)V
    .locals 0

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$e;->a:Landroidx/gridlayout/widget/GridLayout$i;

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$e;->b:Landroidx/gridlayout/widget/GridLayout$i;

    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 2

    invoke-static {p1}, Ljb;->B(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$e;->a:Landroidx/gridlayout/widget/GridLayout$i;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$e;->b:Landroidx/gridlayout/widget/GridLayout$i;

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/gridlayout/widget/GridLayout$i;->a(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWITCHING[L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$e;->a:Landroidx/gridlayout/widget/GridLayout$i;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$e;->b:Landroidx/gridlayout/widget/GridLayout$i;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;I)I
    .locals 2

    invoke-static {p1}, Ljb;->B(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$e;->a:Landroidx/gridlayout/widget/GridLayout$i;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$e;->b:Landroidx/gridlayout/widget/GridLayout$i;

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$i;->d(Landroid/view/View;I)I

    move-result p1

    return p1
.end method
