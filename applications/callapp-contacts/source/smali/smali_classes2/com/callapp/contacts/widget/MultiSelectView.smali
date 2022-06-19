.class public Lcom/callapp/contacts/widget/MultiSelectView;
.super Lcom/callapp/contacts/widget/RetractableLinearLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/MultiSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/RetractableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/MultiSelectView;->a:Ljava/util/List;

    const-string p1, "layout_inflater"

    .line 1045
    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d0140

    const/4 p3, 0x1

    .line 1046
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0202

    .line 1048
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/MultiSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/MultiSelectView;->b:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    .line 1050
    iput-object p0, p0, Lcom/callapp/contacts/widget/MultiSelectView;->b:Landroid/view/ViewGroup;

    :cond_0
    const p1, 0x7f0a02ab

    .line 1053
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/MultiSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060088

    .line 1054
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f0a060b

    .line 1056
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f120391

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0805be

    .line 1058
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, 0x7f0a07f5

    .line 1059
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/MultiSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setCheckedState(IZ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/widget/MultiSelectView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public setChoices(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 67
    iget-object v1, p0, Lcom/callapp/contacts/widget/MultiSelectView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/widget/MultiSelectView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    new-instance v1, Lcom/callapp/contacts/widget/MultiSelectView$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/widget/MultiSelectView$1;-><init>(Lcom/callapp/contacts/widget/MultiSelectView;Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;)V

    const-string p2, "layout_inflater"

    .line 81
    invoke-static {p2}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const v5, 0x7f0d0212

    .line 83
    iget-object v6, p0, Lcom/callapp/contacts/widget/MultiSelectView;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    .line 87
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 88
    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setId(I)V

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_0

    .line 91
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    .line 92
    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    iget-object v10, v9, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-boolean v9, v9, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->c:Z

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_0
    const/4 v9, 0x4

    .line 97
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    :goto_2
    iget-object v9, p0, Lcom/callapp/contacts/widget/MultiSelectView;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/callapp/contacts/widget/MultiSelectView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 107
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/MultiSelectView;->measure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/MultiSelectView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/MultiSelectView;->setExpandMaxHeight(I)V

    return-void
.end method
