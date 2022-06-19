.class final Lorg/mistergroup/shouldianswer/ui/main/c/g$1;
.super Ljava/lang/Object;
.source "LogViewNumberHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/g;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/main/c/h;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/g;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->d(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f()Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/g$1;->a:Lorg/mistergroup/shouldianswer/ui/main/c/g;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/g;)Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
