.class Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 216
    :sswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    goto :goto_0

    .line 210
    :sswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 207
    :sswitch_2
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->c:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v1, v1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->c(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 213
    :sswitch_3
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object p1, p1, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1$1;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1$1;->a:Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120063 -> :sswitch_3
        0x7f120066 -> :sswitch_2
        0x7f120067 -> :sswitch_1
        0x7f1203db -> :sswitch_0
    .end sparse-switch
.end method
