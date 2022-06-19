.class Lcom/callapp/contacts/action/local/SpamAction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/SpamAction$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/SpamAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/SpamAction$1;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/action/local/SpamAction$1$1;->a:Lcom/callapp/contacts/action/local/SpamAction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    :cond_0
    return-void
.end method
