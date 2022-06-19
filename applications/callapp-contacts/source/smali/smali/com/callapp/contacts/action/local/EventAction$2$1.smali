.class Lcom/callapp/contacts/action/local/EventAction$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/EventAction$2;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/EventAction$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/EventAction$2;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/action/local/EventAction$2$1;->a:Lcom/callapp/contacts/action/local/EventAction$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EventAction$2$1;->a:Lcom/callapp/contacts/action/local/EventAction$2;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/EventAction$2;->d:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    return-void
.end method
