.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;
.super Lkotlin/e/b/i;
.source "DialpadFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Ljava/lang/Boolean;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;->a(Z)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k$1;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$k;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->c(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    :cond_0
    return-void
.end method
