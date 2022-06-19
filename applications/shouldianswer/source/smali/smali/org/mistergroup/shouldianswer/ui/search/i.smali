.class public final Lorg/mistergroup/shouldianswer/ui/search/i;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.source "SearchViewInfoHolder.kt"


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/a/ac;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ac;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ac;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/i;->a:Lorg/mistergroup/shouldianswer/a/ac;

    return-void
.end method
