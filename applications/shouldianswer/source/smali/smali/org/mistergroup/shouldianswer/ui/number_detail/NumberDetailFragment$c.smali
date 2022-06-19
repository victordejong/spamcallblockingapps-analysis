.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;
.super Ljava/lang/Object;
.source "NumberDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;->c:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v0, "NumberDetailActivity.onCallNumber"

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 118
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    return-void
.end method
