.class Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->dismiss()V

    return-void
.end method
