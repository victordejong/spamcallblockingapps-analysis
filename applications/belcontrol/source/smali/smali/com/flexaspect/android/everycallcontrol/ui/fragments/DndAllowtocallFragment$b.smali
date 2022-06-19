.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {}, Lb81;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {}, Lu71;->b()[Ljava/lang/Integer;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    invoke-static {}, Lu71;->b()[Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lb81;->a()[Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lu71;->y([Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-static {p1}, Lu71;->y([Ljava/lang/Integer;)V

    :goto_1
    invoke-static {p2}, Lu71;->A(Z)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lu71;->x(Z)V

    :goto_2
    return-void
.end method
