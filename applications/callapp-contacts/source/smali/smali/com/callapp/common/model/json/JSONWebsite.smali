.class public Lcom/callapp/common/model/json/JSONWebsite;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient BINGLOCAL_SITE_INNER:Ljava/lang/String; = "bing.com/local"

.field public static final transient GRAVATAR_SITE_INNER:Ljava/lang/String; = "gravatar."

.field public static final transient WEBSITE_BLOG_TYPE_ID:I = 0x2

.field public static final transient WEBSITE_CUSTOM_TYPE_ID:I = 0x0

.field public static final transient WEBSITE_FTP_TYPE_ID:I = 0x6

.field public static final transient WEBSITE_GOOGLE_PLACES_TYPE_ID:I = 0x8

.field public static final transient WEBSITE_HOMEPAGE_TYPE_ID:I = 0x1

.field public static final transient WEBSITE_HOME_TYPE_ID:I = 0x4

.field public static final transient WEBSITE_HUAWEI_PLACES_TYPE_ID:I = 0x9

.field public static final transient WEBSITE_OTHER_TYPE_ID:I = 0x7

.field public static final transient WEBSITE_PROFILE_TYPE_ID:I = 0x3

.field public static final transient WEBSITE_WORK_TYPE_ID:I = 0x5

.field public static final transient WHITEPAGES_SITE_INNER:Ljava/lang/String; = "whitepages.com"

.field public static final transient YELP_SITE_INNER:Ljava/lang/String; = "yelp."

.field public static final transient YOUTUBE_SITE_INNER:Ljava/lang/String; = "youtube."

.field private static final serialVersionUID:J = -0x54c6130782fe9526L


# instance fields
.field private type:I

.field private websiteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONWebsite;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONWebsite;->isFromUserProfile()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>(Z)V

    .line 50
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    .line 51
    iget p1, p1, Lcom/callapp/common/model/json/JSONWebsite;->type:I

    iput p1, p0, Lcom/callapp/common/model/json/JSONWebsite;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p3}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>(Z)V

    .line 44
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/callapp/common/model/json/JSONWebsite;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 86
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONWebsite;

    if-nez v2, :cond_2

    return v1

    .line 89
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONWebsite;

    .line 90
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 91
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 94
    :cond_3
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/callapp/common/model/json/JSONWebsite;->type:I

    return v0
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/callapp/common/model/json/JSONWebsite;->type:I

    return-void
.end method

.method public setWebsiteUrl(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONWebsite{websiteUrl=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONWebsite;->websiteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
