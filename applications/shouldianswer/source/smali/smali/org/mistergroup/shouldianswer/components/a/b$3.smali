.class final Lorg/mistergroup/shouldianswer/components/a/b$3;
.super Ljava/lang/Object;
.source "ContactViewContactHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/components/a/b;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/components/a/b;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/components/a/b;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$3;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$3;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/components/a/b;->b(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/b$3;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/components/a/b;->c(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "binding.root.context"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ac;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
