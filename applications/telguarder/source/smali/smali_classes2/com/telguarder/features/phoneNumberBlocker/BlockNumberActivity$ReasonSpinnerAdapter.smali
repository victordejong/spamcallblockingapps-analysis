.class Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;
.super Lcom/telguarder/helpers/ui/BOAdapter;
.source "BlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReasonSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/ui/BOAdapter<",
        "Lcom/telguarder/features/phoneNumberBlocker/BlockReason;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/telguarder/features/phoneNumberBlocker/BlockReason;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const/4 p1, 0x0

    const v0, 0x7f0b00b9

    .line 197
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/telguarder/helpers/ui/BOAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    const-string p1, "layout_inflater"

    .line 198
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 216
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b00b8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0800e4

    .line 218
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 219
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const v1, 0x7f050118

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setBackgroundColor(I)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->displayableNameId()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 221
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$602(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)Z

    return-object p2
.end method

.method protected getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/phoneNumberBlocker/BlockReason;I)V
    .locals 0

    const p3, 0x7f08021c

    .line 203
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 204
    iget-object p3, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$600(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)Z

    move-result p3

    if-nez p3, :cond_0

    const p2, 0x7f100186

    .line 205
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->displayableNameId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->notifyDataSetChanged()V

    .line 209
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 192
    check-cast p2, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;->getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/phoneNumberBlocker/BlockReason;I)V

    return-void
.end method
