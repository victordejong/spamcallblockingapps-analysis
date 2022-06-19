.class Lcom/callapp/contacts/manager/popup/DialogPopup$5;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomBarCheckBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field final synthetic b:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/widget/CallAppCheckBox;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$5;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iput-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$5;->a:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$5;->a:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->toggle()V

    return-void
.end method
