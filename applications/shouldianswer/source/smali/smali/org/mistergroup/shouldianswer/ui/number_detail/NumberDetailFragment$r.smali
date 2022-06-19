.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;->c:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 240
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    return-void
.end method
