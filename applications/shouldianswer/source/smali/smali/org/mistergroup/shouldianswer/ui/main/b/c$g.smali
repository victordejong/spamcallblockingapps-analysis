.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$g;
.super Ljava/lang/Object;
.source "FavoritesFragment.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/c;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$g;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 257
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$g;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->a(Lorg/mistergroup/shouldianswer/ui/main/b/c;)Lorg/mistergroup/shouldianswer/ui/main/b/b;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 259
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->J()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/ai;->y(Z)V

    .line 260
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->J()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->a(Z)V

    .line 261
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/b;->d()V

    .line 262
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$g;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/c;->invalidateOptionsMenu()V

    :cond_0
    return v0
.end method
