.class public abstract Lcom/callapp/contacts/widget/BasePaginationContainer;
.super Lcom/callapp/contacts/widget/RetractableFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/PaginationContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Btn:",
        "Landroid/view/View;",
        ">",
        "Lcom/callapp/contacts/widget/RetractableFrameLayout;",
        "Lcom/callapp/contacts/widget/PaginationContainer;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/RadioGroup;

.field private c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/BasePaginationContainer<",
            "TBtn;>.Attributes;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/RetractableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;-><init>(Lcom/callapp/contacts/widget/BasePaginationContainer;Lcom/callapp/contacts/widget/BasePaginationContainer$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    .line 1051
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/callapp/contacts/R$styleable;->paginatedContainer:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_6

    .line 1110
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown attribute for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "TAG"

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1116
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I

    goto :goto_1

    .line 1125
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->e(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F

    goto :goto_1

    .line 1119
    :cond_3
    invoke-static {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F

    goto :goto_1

    .line 1122
    :cond_4
    invoke-static {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->d(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;F)F

    goto :goto_1

    .line 1113
    :cond_5
    invoke-static {p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2060
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d023a

    invoke-static {p1, p2, p0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0694

    .line 2061
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    return-void
.end method

.method private a(II)V
    .locals 7

    .line 65
    iget-object p2, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 66
    iget-object p2, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {p2}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I

    move-result p2

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)I

    move-result v0

    .line 68
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getNewBtnsArray(I)[Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 73
    iget-object v5, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v2, v5}, Lcom/callapp/contacts/widget/BasePaginationContainer;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v4

    .line 74
    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 76
    iget-object v5, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 78
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    iget-object v6, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v6}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->c(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 80
    iget-object v6, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v6}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->d(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 v6, p1, -0x1

    if-ge v4, v6, :cond_0

    .line 83
    iget-object v6, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v6}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->e(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;)F

    move-result v6

    float-to-int v6, v6

    .line 84
    invoke-virtual {v5, v3, v3, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    :cond_0
    aget-object v6, v1, v4

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    if-lez p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 93
    invoke-virtual {p0, v1, v3, p2, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->a([Landroid/view/View;III)V

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 96
    invoke-virtual {p0, v1, v3, p2, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->a([Landroid/view/View;III)V

    .line 99
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/callapp/contacts/widget/BasePaginationContainer$1;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer$1;-><init>(Lcom/callapp/contacts/widget/BasePaginationContainer;[Landroid/view/View;II)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TBtn;"
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->a(II)V

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x4

    .line 152
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BasePaginationContainer;->setVisibility(I)V

    return-void
.end method

.method protected abstract a([Landroid/view/View;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TBtn;III)V"
        }
    .end annotation
.end method

.method protected abstract getNewBtnsArray(I)[Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TBtn;"
        }
    .end annotation
.end method

.method public setCheckedColor(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->a(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I

    return-void
.end method

.method public setCheckedPosition(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setUncheckedColor(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/widget/BasePaginationContainer;->c:Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;->b(Lcom/callapp/contacts/widget/BasePaginationContainer$Attributes;I)I

    return-void
.end method
