.class final Lorg/mistergroup/shouldianswer/ui/main/a/a$i;
.super Ljava/lang/Object;
.source "ContactsFragment.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/a/a;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$i;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 337
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->I()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->x(Z)V

    .line 338
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$i;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/c;->invalidateOptionsMenu()V

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$i;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->I()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Z)V

    .line 340
    sget-object p1, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/g;->e()V

    return v1
.end method
