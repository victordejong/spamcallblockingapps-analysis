.class public Lcarbon/beta/TableLayout;
.super Lcarbon/widget/LinearLayout;
.source ""


# instance fields
.field public S:Lcarbon/widget/TableView;

.field public T:Lcarbon/widget/LinearLayout;

.field public U:Landroid/view/View;

.field public V:Lcarbon/widget/DropDown;

.field public W:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcarbon/beta/TableLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcarbon/beta/TableLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcarbon/beta/TableLayout;->s()V

    return-void
.end method


# virtual methods
.method public getFooter()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/beta/TableLayout;->U:Landroid/view/View;

    return-object v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/beta/TableLayout;->T:Lcarbon/widget/LinearLayout;

    return-object v0
.end method

.method public getTableView()Lcarbon/widget/TableView;
    .locals 1

    iget-object v0, p0, Lcarbon/beta/TableLayout;->S:Lcarbon/widget/TableView;

    return-object v0
.end method

.method public final s()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_tablelayout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Ll80;->carbon_tableHeader:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/LinearLayout;

    iput-object v0, p0, Lcarbon/beta/TableLayout;->T:Lcarbon/widget/LinearLayout;

    sget v0, Ll80;->carbon_table:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TableView;

    iput-object v0, p0, Lcarbon/beta/TableLayout;->S:Lcarbon/widget/TableView;

    sget v0, Ll80;->carbon_tableFooter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcarbon/beta/TableLayout;->U:Landroid/view/View;

    sget v0, Ll80;->carbon_tableRowNumber:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/DropDown;

    iput-object v0, p0, Lcarbon/beta/TableLayout;->V:Lcarbon/widget/DropDown;

    const-string v1, "10"

    const-string v2, "20"

    const-string v3, "50"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcarbon/widget/DropDown;->setItems([Ljava/io/Serializable;)V

    sget v0, Ll80;->carbon_tablePageNumbers:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/TextView;

    iput-object v0, p0, Lcarbon/beta/TableLayout;->W:Lcarbon/widget/TextView;

    return-void
.end method

.method public setAdapter(Lcarbon/widget/TableView$a;)V
    .locals 5

    iget-object v0, p0, Lcarbon/beta/TableLayout;->S:Lcarbon/widget/TableView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcarbon/beta/TableLayout;->T:Lcarbon/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcarbon/widget/TableView$a;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lm80;->carbon_tablelayout_header:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Ll80;->carbon_tableHeaderText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcarbon/widget/TextView;

    invoke-virtual {p1, v0}, Lcarbon/widget/TableView$a;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcarbon/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Lcarbon/widget/TableView$a;->j(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4, v3}, Lcarbon/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcarbon/beta/TableLayout;->T:Lcarbon/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/beta/TableLayout;->V:Lcarbon/widget/DropDown;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcarbon/beta/TableLayout;->W:Lcarbon/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lid0;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lid0;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
