.class final Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    if-gez p3, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 111
    invoke-static {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    .line 2860
    iget-object v1, v0, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 1898
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_3

    if-gez p3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    goto :goto_4

    .line 118
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p2

    .line 3860
    iget-object p3, p2, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_3

    .line 2937
    :cond_4
    iget-object p1, p2, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    :goto_3
    move-object p2, p1

    .line 119
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->o()I

    move-result p3

    .line 120
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    .line 4860
    iget-object p4, p1, Landroidx/appcompat/widget/ListPopupWindow;->n:Landroid/widget/PopupWindow;

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    if-nez p4, :cond_5

    const-wide/high16 p4, -0x8000000000000000L

    goto :goto_1

    .line 3924
    :cond_5
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide p4

    goto :goto_1

    .line 122
    :goto_4
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 123
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    .line 4946
    iget-object v2, p1, Landroidx/appcompat/widget/ListPopupWindow;->e:Landroidx/appcompat/widget/DropDownListView;

    .line 122
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 126
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->a(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->d()V

    return-void
.end method
