.class Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 152
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120549

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const v0, 0x7f060088

    .line 145
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 146
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
