.class final Lorg/mistergroup/shouldianswer/ui/search/g$1;
.super Ljava/lang/Object;
.source "SearchViewCreateContactHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/g;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/g;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/search/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/g;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/g$1;->a:Lorg/mistergroup/shouldianswer/ui/search/g;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/g$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/g$1;->a:Lorg/mistergroup/shouldianswer/ui/search/g;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/g;->a(Lorg/mistergroup/shouldianswer/ui/search/g;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->j()Lorg/mistergroup/shouldianswer/ui/search/d$a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/search/d$a;->c:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/g$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->e()Lkotlin/e/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
