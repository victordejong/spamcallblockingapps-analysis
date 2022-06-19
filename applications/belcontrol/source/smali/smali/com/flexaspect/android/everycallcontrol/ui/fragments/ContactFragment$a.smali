.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->N()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p1

    iget-object p1, p1, Lq81;->h:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    if-eqz p2, :cond_1

    sget-object p2, Lq71$e;->c:Lq71$e;

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {p2, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    sget-object v0, Lq71$g;->c:Lq71$g;

    :goto_2
    iput-object v0, p2, Lq81;->k:Lq71$g;

    goto :goto_3

    :cond_1
    sget-object p2, Lq71$e;->c:Lq71$e;

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {p2, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    sget-object v0, Lq71$g;->a:Lq71$g;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    iput-object p1, p2, Lq81;->h:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-boolean p2, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->w:Z

    if-nez p2, :cond_5

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    iget-object p2, p2, Lq81;->k:Lq71$g;

    sget-object v0, Lq71$g;->c:Lq71$g;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_4
    invoke-static {p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)V

    return-void
.end method
