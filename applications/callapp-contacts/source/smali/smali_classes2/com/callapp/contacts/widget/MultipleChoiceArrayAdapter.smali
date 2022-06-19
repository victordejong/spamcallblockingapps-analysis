.class public Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;,
        Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->a:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;)Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->c:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0096

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a01fc

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    const v0, 0x7f0601ec

    .line 40
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 41
    new-instance v0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;-><init>(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;Landroid/widget/CheckedTextView;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080113

    .line 55
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 60
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    .line 63
    iget-object v0, p1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-boolean p1, p1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->c:Z

    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p2
.end method
