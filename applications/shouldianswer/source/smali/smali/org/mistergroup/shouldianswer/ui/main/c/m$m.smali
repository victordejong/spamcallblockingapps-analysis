.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$m;
.super Ljava/lang/Object;
.source "LogsFragment.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 357
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->c(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/ui/main/c/h;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->b(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;)V

    .line 358
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/c;->invalidateOptionsMenu()V

    .line 359
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$m;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d()V

    const/4 p1, 0x1

    return p1
.end method
