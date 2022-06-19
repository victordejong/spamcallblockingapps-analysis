.class public final synthetic Ll8/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll8/q;->a:I

    iput-object p1, p0, Ll8/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Ll8/q;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Ll8/q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentBlackList;

    .line 1
    iget-object v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/o;

    move-result-object v1

    iget-object p1, p1, Lcom/mglab/scm/visual/FragmentBlackList;->e:Lea/b;

    invoke-static {v1, v0, p1}, Lea/a;->a(Landroid/app/Activity;[Ljava/lang/String;Lea/b;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/mglab/scm/visual/c;->g(I)V

    :cond_1
    :goto_0
    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Ll8/q;->b:Ljava/lang/Object;

    check-cast p1, Lm8/d;

    sget v0, Lm8/g;->a:I

    .line 8
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/g;

    invoke-direct {v1, p1}, Lk8/g;-><init>(Lm8/d;)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_2
    iget-object p1, p0, Ll8/q;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 11
    :goto_1
    iget-object v0, p0, Ll8/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/c;

    invoke-static {v0, p1}, Lcom/mglab/scm/visual/c;->b(Lcom/mglab/scm/visual/c;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
