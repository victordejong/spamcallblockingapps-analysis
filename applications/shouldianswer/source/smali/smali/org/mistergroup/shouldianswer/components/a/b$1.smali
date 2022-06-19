.class final Lorg/mistergroup/shouldianswer/components/a/b$1;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$1;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b$1;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/components/a/b;->a(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->e()Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/components/a/a$a;->a:Lorg/mistergroup/shouldianswer/components/a/a$a;

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/b$1;->a:Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/a/b;->a()Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/a/e;->d()Lkotlin/e/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
