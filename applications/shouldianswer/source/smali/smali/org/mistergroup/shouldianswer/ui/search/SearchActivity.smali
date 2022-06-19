.class public final Lorg/mistergroup/shouldianswer/ui/search/SearchActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/search/SearchActivity$a;
    }
.end annotation


# static fields
.field public static final l:Lorg/mistergroup/shouldianswer/ui/search/SearchActivity$a;


# instance fields
.field private m:Lorg/mistergroup/shouldianswer/a/cs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity;->l:Lorg/mistergroup/shouldianswer/ui/search/SearchActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 21
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    const v0, 0x7f01001e

    const v1, 0x7f01001d

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f01001c

    const v0, 0x7f01001e

    .line 16
    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity;->overridePendingTransition(II)V

    .line 17
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d0063

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026R.layout.search_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/cs;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchActivity;->m:Lorg/mistergroup/shouldianswer/a/cs;

    return-void
.end method
