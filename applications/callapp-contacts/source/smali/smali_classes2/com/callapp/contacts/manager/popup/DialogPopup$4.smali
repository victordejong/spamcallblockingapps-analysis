.class Lcom/callapp/contacts/manager/popup/DialogPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$602(Lcom/callapp/contacts/manager/popup/DialogPopup;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 141
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$600(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f0601cc

    if-eqz p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$600(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$600(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getCheckBoxText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    const v1, 0x7f0a0200

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-static {p2, v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$702(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/widget/CallAppCheckBox;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    .line 147
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$700(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 148
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$700(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/widget/CallAppCheckBox;

    move-result-object p2

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setTextColor(I)V

    .line 149
    iget-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$800(Lcom/callapp/contacts/manager/popup/DialogPopup;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomBarCheckBox(Z)V

    :cond_1
    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$4;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setDialogWindowSize(Landroid/view/Window;)V

    return-void
.end method
