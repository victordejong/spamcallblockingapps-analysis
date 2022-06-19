.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->updatePhonesText(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$4;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
