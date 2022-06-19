.class Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->getCheckedChangeListener()Landroid/widget/RadioGroup$OnCheckedChangeListener;
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

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$3;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$3;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->c(I)V

    return-void
.end method
