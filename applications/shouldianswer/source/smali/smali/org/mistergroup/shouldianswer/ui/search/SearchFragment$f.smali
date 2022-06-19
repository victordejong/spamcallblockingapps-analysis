.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$f;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;)V
    .locals 0

    .line 155
    sget-object p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    if-eq p4, p1, :cond_1

    sget-object p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->d:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    const-string p4, "context!!"

    invoke-static {p3, p4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p4, 0x7f040096

    invoke-virtual {p1, p3, p4}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method
