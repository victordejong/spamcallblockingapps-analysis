.class Lcom/callapp/contacts/popup/WhatsNewPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/WhatsNewPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/WhatsNewPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/WhatsNewPopup;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewPopup$1;->a:Lcom/callapp/contacts/popup/WhatsNewPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewPopup$1;->a:Lcom/callapp/contacts/popup/WhatsNewPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/WhatsNewPopup;->getActivity()Landroid/app/Activity;

    invoke-static {}, Lcom/callapp/contacts/popup/WhatsNewPopup;->a()V

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewPopup$1;->a:Lcom/callapp/contacts/popup/WhatsNewPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/WhatsNewPopup;->dismiss()V

    return-void
.end method
