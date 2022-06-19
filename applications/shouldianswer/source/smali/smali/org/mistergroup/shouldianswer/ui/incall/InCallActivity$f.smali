.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;
.super Lkotlin/e/b/i;
.source "InCallActivity.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Lorg/mistergroup/shouldianswer/services/incall/a;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;->a(Lorg/mistergroup/shouldianswer/services/incall/a;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/services/incall/a;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/services/incall/a;)V

    .line 650
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->C(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    goto :goto_0

    .line 652
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "InCallActivity callInfo null...finish()"

    invoke-static {p1, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 653
    sget-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lkotlin/e/a/b;)V

    .line 654
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->finish()V

    :goto_0
    return-void
.end method
