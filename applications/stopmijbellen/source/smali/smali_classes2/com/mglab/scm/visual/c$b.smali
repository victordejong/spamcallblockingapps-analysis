.class public Lcom/mglab/scm/visual/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/c;->e(IZLjava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/mglab/scm/visual/c$b;->b:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lcom/mglab/scm/visual/c$b;->a:Landroidx/appcompat/widget/SwitchCompat;

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
    iget-object p1, p0, Lcom/mglab/scm/visual/c$b;->a:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p1, p5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/visual/c$b;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/mglab/scm/visual/c$b;->b:Lcom/mglab/scm/visual/c;

    .line 3
    iget-object p3, p3, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const-string p5, "dlgbwlsoc"

    .line 4
    invoke-static {p3, p5, p4}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/c$b;->b:Lcom/mglab/scm/visual/c;

    iget-object p2, p0, Lcom/mglab/scm/visual/c$b;->a:Landroidx/appcompat/widget/SwitchCompat;

    .line 7
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
