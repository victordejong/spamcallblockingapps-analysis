.class Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->clearAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->notifyDataSetChanged()V

    return-void
.end method
