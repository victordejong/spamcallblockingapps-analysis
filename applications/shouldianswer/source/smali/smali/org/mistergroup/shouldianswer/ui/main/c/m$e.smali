.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$e;
.super Lkotlin/e/b/i;
.source "LogsFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/m;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$e;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m$e;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 3

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$e;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    return-void
.end method
