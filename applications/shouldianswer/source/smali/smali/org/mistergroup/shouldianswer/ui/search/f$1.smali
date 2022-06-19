.class final Lorg/mistergroup/shouldianswer/ui/search/f$1;
.super Ljava/lang/Object;
.source "SearchViewContactHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/f;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/f;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/search/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f$1;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/f$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f$1;->a:Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/f$1;->b:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/search/a;->e()Lkotlin/e/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
