.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocialDataObject"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

.field private final b:Lcom/callapp/contacts/model/contact/social/SocialData;

.field private final c:Lcom/callapp/contacts/model/contact/DataSource;

.field private final d:Lcom/callapp/contacts/model/contact/PlaceData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/contact/PlaceData;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->b:Lcom/callapp/contacts/model/contact/social/SocialData;

    .line 220
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->c:Lcom/callapp/contacts/model/contact/DataSource;

    .line 221
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->d:Lcom/callapp/contacts/model/contact/PlaceData;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/PlaceData;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->d:Lcom/callapp/contacts/model/contact/PlaceData;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->c:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;)Lcom/callapp/contacts/model/contact/social/SocialData;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialDataObject;->b:Lcom/callapp/contacts/model/contact/social/SocialData;

    return-object p0
.end method
