.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;
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
        "Ljava/lang/Integer;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a(I)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(I)V
    .locals 4

    .line 624
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->a:Lorg/mistergroup/shouldianswer/ui/incall/a$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/incall/a$a;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 625
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "InCallActivity Accept Call"

    invoke-static {p1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 626
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->d(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 627
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/telecom/Call;->answer(I)V

    goto :goto_0

    .line 629
    :cond_2
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/incall/a;->a:Lorg/mistergroup/shouldianswer/ui/incall/a$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/incall/a$a;->b()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 630
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "InCallActivity Reject Call"

    invoke-static {p1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 631
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {p1, v1, v3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 634
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->C(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    return-void
.end method
