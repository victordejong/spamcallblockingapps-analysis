.class Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs$1;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->setItemAsChecked(I)V

    return-void
.end method
