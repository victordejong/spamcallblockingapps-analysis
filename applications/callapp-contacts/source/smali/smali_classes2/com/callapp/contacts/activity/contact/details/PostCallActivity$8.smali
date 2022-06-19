.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x1

    .line 331
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 332
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "PostCallActivity"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startFullDetailsActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Z)Z

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$000(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V

    return-void
.end method
