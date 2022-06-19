.class Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/WhoItWasDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/WhoItWasDialog;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;->a:Lcom/callapp/contacts/popup/contact/WhoItWasDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;->a:Lcom/callapp/contacts/popup/contact/WhoItWasDialog;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->f:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->toggle()V

    .line 30
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;->a:Lcom/callapp/contacts/popup/contact/WhoItWasDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->a(Lcom/callapp/contacts/popup/contact/WhoItWasDialog;)V

    return-void
.end method
