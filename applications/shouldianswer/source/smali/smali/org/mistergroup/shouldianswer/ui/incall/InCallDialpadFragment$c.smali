.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;
.super Ljava/lang/Object;
.source "InCallDialpadFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    .line 77
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p2, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;C)V

    return v2

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    goto :goto_2

    .line 81
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_8

    .line 82
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    invoke-interface {p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;->a()V

    if-eqz p1, :cond_7

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v1
.end method
