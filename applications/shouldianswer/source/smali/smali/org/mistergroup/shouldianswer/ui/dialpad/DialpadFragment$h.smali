.class final Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;
.super Ljava/lang/Object;
.source "DialpadFragment.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 117
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->d(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatter!!.inputDigit(\'+\')"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;->b(Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;)V

    const/4 p1, 0x1

    return p1
.end method
