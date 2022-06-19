.class final Landroidx/appcompat/app/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/a;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/b/a/d;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/a;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/a;)V
    .locals 0

    .line 198
    iput-object p1, p0, Landroidx/appcompat/app/a$1;->a:Landroidx/appcompat/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 201
    iget-object v0, p0, Landroidx/appcompat/app/a$1;->a:Landroidx/appcompat/app/a;

    iget-boolean v0, v0, Landroidx/appcompat/app/a;->b:Z

    if-eqz v0, :cond_3

    .line 202
    iget-object p1, p0, Landroidx/appcompat/app/a$1;->a:Landroidx/appcompat/app/a;

    .line 2282
    iget-object v0, p1, Landroidx/appcompat/app/a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)I

    move-result v0

    .line 2283
    iget-object v2, p1, Landroidx/appcompat/app/a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2867
    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2869
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2285
    iget-object p1, p1, Landroidx/appcompat/app/a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a()V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 2287
    iget-object p1, p1, Landroidx/appcompat/app/a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3722
    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)V

    :cond_2
    return-void

    .line 203
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/a$1;->a:Landroidx/appcompat/app/a;

    iget-object v0, v0, Landroidx/appcompat/app/a;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Landroidx/appcompat/app/a$1;->a:Landroidx/appcompat/app/a;

    iget-object v0, v0, Landroidx/appcompat/app/a;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    return-void
.end method
