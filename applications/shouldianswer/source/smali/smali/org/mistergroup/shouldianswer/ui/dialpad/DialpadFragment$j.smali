.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;
.super Ljava/lang/Object;
.source "DialpadFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 120
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    return-void
.end method
