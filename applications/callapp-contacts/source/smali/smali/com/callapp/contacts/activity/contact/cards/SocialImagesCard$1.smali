.class Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->updateCardData(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Lcom/callapp/contacts/model/UploadedPhoto;",
        "Lcom/callapp/contacts/model/contact/DataSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    .line 1070
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/UploadedPhoto;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/UploadedPhoto;->getCreatedTime()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/UploadedPhoto;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/UploadedPhoto;->getCreatedTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
