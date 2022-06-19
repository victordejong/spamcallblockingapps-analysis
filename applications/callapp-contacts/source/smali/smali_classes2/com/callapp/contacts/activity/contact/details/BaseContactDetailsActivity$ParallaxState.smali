.class final enum Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParallaxState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum cover:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum incognito:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum incomingCall:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum other:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum spammer:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public static final enum videoRingtone:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 395
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string v1, "spammer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->spammer:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 396
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string/jumbo v3, "videoRingtone"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->videoRingtone:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 397
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string v5, "cover"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->cover:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 398
    new-instance v5, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string v7, "incognito"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incognito:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 399
    new-instance v7, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string v9, "incomingCall"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incomingCall:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 400
    new-instance v9, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const-string v11, "other"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->other:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 394
    sput-object v11, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;
    .locals 1

    .line 394
    const-class v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;
    .locals 1

    .line 394
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    return-object v0
.end method
