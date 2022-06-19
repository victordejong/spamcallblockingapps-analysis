.class public Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;
.super Lcom/telguarder/helpers/ui/BOAdapter;
.source "SettingsLocationSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/ui/BOAdapter<",
        "Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f0b00b7

    .line 25
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/telguarder/helpers/ui/BOAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    const-string p2, "layout_inflater"

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 40
    iget-object p2, p0, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b00b6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0800e4

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-static {v0, p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getDisplayName(Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method protected getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;I)V
    .locals 0

    const p3, 0x7f08021c

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getDisplayName(Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;->getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;I)V

    return-void
.end method
