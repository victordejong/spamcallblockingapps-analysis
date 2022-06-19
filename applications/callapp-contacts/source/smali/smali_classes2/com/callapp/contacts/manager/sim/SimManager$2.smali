.class final Lcom/callapp/contacts/manager/sim/SimManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogList;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$2;->a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    iput-object p2, p0, Lcom/callapp/contacts/manager/sim/SimManager$2;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$2;->a:Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;->onRowClicked(I)V

    .line 955
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$2;->b:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
