.class public Lcom/mglab/scm/visual/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/c;->m(Lcom/mglab/scm/visual/BWLItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic b:Lcom/mglab/scm/visual/c;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/c;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/c$a;->b:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lcom/mglab/scm/visual/c$a;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/c$a;->a:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/visual/c$a;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/mglab/scm/visual/c$a;->b:Lcom/mglab/scm/visual/c;

    iget-object p2, p0, Lcom/mglab/scm/visual/c$a;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    invoke-virtual {p1, p2}, Lcom/mglab/scm/visual/c;->o(Landroidx/appcompat/widget/SwitchCompat;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
