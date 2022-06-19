.class Lcom/callapp/contacts/popup/contact/AdapterGridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/AdapterGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/widget/WidgetMetaData;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/AdapterGridView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/AdapterGridView;Lcom/callapp/contacts/model/widget/WidgetMetaData;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;->b:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;->a:Lcom/callapp/contacts/model/widget/WidgetMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;->b:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->a(Lcom/callapp/contacts/popup/contact/AdapterGridView;)Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;->b:Lcom/callapp/contacts/popup/contact/AdapterGridView;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/AdapterGridView;->a(Lcom/callapp/contacts/popup/contact/AdapterGridView;)Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/AdapterGridView$1;->a:Lcom/callapp/contacts/model/widget/WidgetMetaData;

    iget-object v1, v1, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/action/Action;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;->a(Lcom/callapp/contacts/action/Action;)V

    :cond_0
    return-void
.end method
