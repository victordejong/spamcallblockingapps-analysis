.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$9y6rYEQhCvV4sCbh06AELiRdkCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$9y6rYEQhCvV4sCbh06AELiRdkCI;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$9y6rYEQhCvV4sCbh06AELiRdkCI;->f$0:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCloseCallScreenThemeBannerClicked()V

    return-void
.end method
