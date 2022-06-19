.class Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->dismiss()V

    return-void
.end method
