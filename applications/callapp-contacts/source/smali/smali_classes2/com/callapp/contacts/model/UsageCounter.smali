.class public final enum Lcom/callapp/contacts/model/UsageCounter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/UsageCounter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum foursquareRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum googlePlusSearchRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum instagramRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum pinterestRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum twitterPicture:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum twitterSearchRequests:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum twitterTweets:Lcom/callapp/contacts/model/UsageCounter;

.field public static final enum twitterUser:Lcom/callapp/contacts/model/UsageCounter;


# instance fields
.field public final callType:I

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/callapp/contacts/model/UsageCounter;

    const-string v1, "facebookRequests"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 22
    new-instance v1, Lcom/callapp/contacts/model/UsageCounter;

    const-string v4, "twitterSearchRequests"

    const/4 v5, 0x4

    invoke-direct {v1, v4, v3, v5, v3}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/callapp/contacts/model/UsageCounter;->twitterSearchRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 23
    new-instance v4, Lcom/callapp/contacts/model/UsageCounter;

    const-string v6, "googlePlusSearchRequests"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v3}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/contacts/model/UsageCounter;->googlePlusSearchRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 24
    new-instance v6, Lcom/callapp/contacts/model/UsageCounter;

    const-string v9, "foursquareRequests"

    const/4 v10, 0x3

    const/4 v11, 0x6

    invoke-direct {v6, v9, v10, v11, v3}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/callapp/contacts/model/UsageCounter;->foursquareRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 25
    new-instance v9, Lcom/callapp/contacts/model/UsageCounter;

    const-string v12, "instagramRequests"

    const/4 v13, 0x7

    invoke-direct {v9, v12, v5, v13, v7}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/callapp/contacts/model/UsageCounter;->instagramRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 26
    new-instance v12, Lcom/callapp/contacts/model/UsageCounter;

    const-string v14, "twitterTweets"

    invoke-direct {v12, v14, v8, v5, v10}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/callapp/contacts/model/UsageCounter;->twitterTweets:Lcom/callapp/contacts/model/UsageCounter;

    .line 27
    new-instance v14, Lcom/callapp/contacts/model/UsageCounter;

    const-string v15, "twitterPicture"

    invoke-direct {v14, v15, v11, v5, v5}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/callapp/contacts/model/UsageCounter;->twitterPicture:Lcom/callapp/contacts/model/UsageCounter;

    .line 28
    new-instance v15, Lcom/callapp/contacts/model/UsageCounter;

    const-string v11, "twitterUser"

    invoke-direct {v15, v11, v13, v5, v8}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/callapp/contacts/model/UsageCounter;->twitterUser:Lcom/callapp/contacts/model/UsageCounter;

    .line 29
    new-instance v11, Lcom/callapp/contacts/model/UsageCounter;

    const-string v13, "pinterestRequests"

    const/16 v8, 0x8

    const/16 v5, 0x9

    invoke-direct {v11, v13, v8, v5, v3}, Lcom/callapp/contacts/model/UsageCounter;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/callapp/contacts/model/UsageCounter;->pinterestRequests:Lcom/callapp/contacts/model/UsageCounter;

    new-array v5, v5, [Lcom/callapp/contacts/model/UsageCounter;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    aput-object v6, v5, v10

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    aput-object v11, v5, v8

    .line 20
    sput-object v5, Lcom/callapp/contacts/model/UsageCounter;->$VALUES:[Lcom/callapp/contacts/model/UsageCounter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/callapp/contacts/model/UsageCounter;->id:I

    .line 36
    iput p4, p0, Lcom/callapp/contacts/model/UsageCounter;->callType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/UsageCounter;
    .locals 1

    .line 20
    const-class v0, Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/UsageCounter;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/UsageCounter;
    .locals 1

    .line 20
    sget-object v0, Lcom/callapp/contacts/model/UsageCounter;->$VALUES:[Lcom/callapp/contacts/model/UsageCounter;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/UsageCounter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/UsageCounter;

    return-object v0
.end method
