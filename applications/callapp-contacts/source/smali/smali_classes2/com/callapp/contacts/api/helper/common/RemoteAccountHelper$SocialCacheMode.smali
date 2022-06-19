.class public final enum Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialCacheMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

.field public static final enum onlyFromCache:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

.field public static final enum standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 664
    new-instance v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    const-string v1, "standard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    .line 665
    new-instance v1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    const-string v3, "onlyFromCache"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->onlyFromCache:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 663
    sput-object v3, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->$VALUES:[Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 663
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;
    .locals 1

    .line 663
    const-class v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;
    .locals 1

    .line 663
    sget-object v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->$VALUES:[Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    invoke-virtual {v0}, [Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    return-object v0
.end method
