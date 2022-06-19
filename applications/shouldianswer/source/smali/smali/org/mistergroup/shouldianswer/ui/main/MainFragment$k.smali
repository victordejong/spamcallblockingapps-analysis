.class final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;
.super Ljava/lang/Object;
.source "MainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;Lorg/mistergroup/shouldianswer/ui/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 217
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)Lorg/mistergroup/shouldianswer/a/y;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/y;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(IZ)V

    .line 218
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;->b:Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.help_url_main)"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
