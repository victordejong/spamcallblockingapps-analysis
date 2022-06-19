.class final Lorg/mistergroup/shouldianswer/ui/main/b/c$e;
.super Lkotlin/e/b/i;
.source "FavoritesFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/model/ac;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/b/c;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$e;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ac;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/b/c$e;->a(Lorg/mistergroup/shouldianswer/model/ac;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ac;)V
    .locals 3

    const-string v0, "phoneContact"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$e;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/b/c;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    :cond_1
    return-void
.end method
