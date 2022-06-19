.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->x:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)Lsh0;

    move-result-object v0

    invoke-virtual {v0}, Lsh0;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lw91$a;->g0:Lw91$a;

    invoke-static {p0, v0, p1}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)Lsh0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsh0;->s(Z)V

    return-void
.end method
