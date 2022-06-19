.class Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->showCorrectedInfo(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$3;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->onNegativeBtnClicked(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
