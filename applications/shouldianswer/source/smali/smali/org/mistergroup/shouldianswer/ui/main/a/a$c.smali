.class final Lorg/mistergroup/shouldianswer/ui/main/a/a$c;
.super Lkotlin/e/b/i;
.source "ContactsFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$c;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/a/a$c;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 2

    const-string v0, "contactItem"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$c;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ac;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
