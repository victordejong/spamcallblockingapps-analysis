.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/CompoundButton;

.field public final synthetic b:Landroid/widget/CompoundButton;

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/CompoundButton;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->a:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->b:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    new-instance p2, Lx81;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object v0

    invoke-direct {p2, v0}, Lx81;-><init>(Lx81;)V

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Lx81;)Lx81;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string p2, "BLOCKED_LIST_FULL"

    invoke-static {p1, p2}, Loe1;->p0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->l:Lq71$g;

    sget-object v0, Lq71$g;->c:Lq71$g;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->j:Ljava/util/EnumSet;

    const-class v1, Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->j:Ljava/util/EnumSet;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->j:Ljava/util/EnumSet;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object v1

    iget-object v1, v1, Lx81;->j:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lq71$g;->a:Lq71$g;

    :cond_3
    iput-object v0, p1, Lx81;->l:Lq71$g;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->b:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    return-void
.end method
