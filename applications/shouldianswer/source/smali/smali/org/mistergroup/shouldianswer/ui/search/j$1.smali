.class final Lorg/mistergroup/shouldianswer/ui/search/j$1;
.super Ljava/lang/Object;
.source "SearchViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/j;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/j;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/search/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/j;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$1;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/j$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$1;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->d(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/a;->e()Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/j$1;->a:Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
