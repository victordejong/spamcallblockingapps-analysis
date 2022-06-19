.class public final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "NumberDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a;
    }
.end annotation


# static fields
.field public static final l:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a;


# instance fields
.field private m:Lorg/mistergroup/shouldianswer/a/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;->l:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 20
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 21
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d0048

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026t.number_detail_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/aq;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailActivity;->m:Lorg/mistergroup/shouldianswer/a/aq;

    return-void
.end method
