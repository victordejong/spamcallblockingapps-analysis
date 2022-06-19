.class Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ChooseImageSourceDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;->a:Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;->a:Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->b(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;->a:Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->a(Lcom/callapp/contacts/popup/ChooseImageSourceDialog;)Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$1;->a:Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->dismiss()V

    return-void
.end method
