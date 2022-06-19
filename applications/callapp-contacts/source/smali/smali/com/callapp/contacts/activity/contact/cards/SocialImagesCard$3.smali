.class Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->AddPhoto(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/lang/String;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->b:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->b:I

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$3;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Z)V

    :cond_0
    return-void
.end method
