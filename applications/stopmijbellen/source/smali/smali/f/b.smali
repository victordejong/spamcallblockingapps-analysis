.class public Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf/c;


# direct methods
.method public constructor <init>(Lf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b;->a:Lf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lf/b;->a:Lf/c;

    iget-boolean v0, p1, Lf/c;->e:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p1, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->h(I)I

    move-result v0

    .line 3
    iget-object v2, p1, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->q(Landroid/view/View;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 6
    iget-object p1, p1, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 7
    iget-object p1, p1, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 8
    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->s(Landroid/view/View;Z)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No drawer view found with gravity "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method
