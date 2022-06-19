.class final Lcom/callapp/contacts/util/SmsUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogList;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/util/SmsUtils$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/util/SmsUtils$1;->b:Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;

    iput-object p3, p0, Lcom/callapp/contacts/util/SmsUtils$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/util/SmsUtils$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/framework/phone/Phone;

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/util/SmsUtils$1;->b:Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;->a(Lcom/callapp/framework/phone/Phone;)V

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/util/SmsUtils$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
