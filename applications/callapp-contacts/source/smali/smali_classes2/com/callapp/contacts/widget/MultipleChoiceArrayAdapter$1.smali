.class Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckedTextView;

.field final synthetic b:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;Landroid/widget/CheckedTextView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->b:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->a:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->b:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;

    invoke-static {v1}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->a(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    iput-boolean v0, p1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->c:Z

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->b:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->b(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;)Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$1;->b:Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;->b(Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter;)Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener;

    :cond_0
    return-void
.end method
