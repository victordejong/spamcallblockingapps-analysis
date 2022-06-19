.class public final synthetic Lo8/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lo8/e;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lo8/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/b0;->a:Ljava/util/List;

    iput-object p2, p0, Lo8/b0;->b:Lo8/e;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object p1, p0, Lo8/b0;->a:Ljava/util/List;

    iget-object p2, p0, Lo8/b0;->b:Lo8/e;

    .line 1
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mglab/scm/visual/CallItem;

    .line 2
    iget-boolean p3, p1, Lcom/mglab/scm/visual/CallItem;->e:Z

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    .line 3
    iput-boolean p3, p1, Lcom/mglab/scm/visual/CallItem;->e:Z

    .line 4
    iget-object p5, p1, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p5, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    sget-object p3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const p5, 0x7f0901dd

    invoke-virtual {p3, p5}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/mglab/scm/visual/CallItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mglab/scm/visual/CallItem;

    .line 9
    iget-boolean v2, v2, Lcom/mglab/scm/visual/CallItem;->e:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sget-object p3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v0, Le2/b;->a:Le2/b;

    invoke-virtual {p3, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    const p3, 0x7f11018f

    if-lez v1, :cond_3

    .line 11
    iget-object p1, p1, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p3, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p3, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_3
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 15
    :goto_2
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
