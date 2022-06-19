.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$n;->a:La81$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p1

    invoke-virtual {p1}, Lq81;->j0()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->z:Ljava/lang/String;

    invoke-virtual {v0}, La81$a;->a()Li91;

    move-result-object v0

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object v1

    iget-wide v1, v1, Lq81;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
