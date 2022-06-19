.class Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->setItemsData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$2;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->notifyDataSetChanged()V

    return-void
.end method
