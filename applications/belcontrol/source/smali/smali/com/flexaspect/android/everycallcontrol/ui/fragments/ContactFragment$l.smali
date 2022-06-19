.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-class p1, Lq71$e;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Landroid/widget/CompoundButton;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object v1, Lq71$g;->b:Lq71$g;

    goto :goto_0

    :cond_0
    sget-object v1, Lq71$g;->a:Lq71$g;

    :goto_0
    iput-object v1, v0, Lq81;->k:Lq71$g;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lq81;->h:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    iget-object p2, p2, Lq81;->k:Lq71$g;

    sget-object v0, Lq71$g;->b:Lq71$g;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;

    iget-boolean v0, p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->w:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;)Lq81;

    move-result-object p2

    iget-object p2, p2, Lq81;->k:Lq71$g;

    sget-object v0, Lq71$g;->c:Lq71$g;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment;Z)V

    return-void
.end method
