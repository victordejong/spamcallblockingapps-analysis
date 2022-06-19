.class Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Landroid/text/SpannableString;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->a(Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;Z)Z

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object p1

    const v0, 0x7f120044

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$3;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f120246

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
