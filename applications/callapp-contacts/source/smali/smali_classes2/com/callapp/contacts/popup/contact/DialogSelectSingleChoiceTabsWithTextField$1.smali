.class Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->a(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->a(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
