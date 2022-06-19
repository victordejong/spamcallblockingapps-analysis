.class public final enum Lcom/callapp/contacts/loader/api/LoaderFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/loader/api/LoaderFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum disableContactEvents:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum disableSpecificCaches:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum forceRefresh:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum ignoreQuotaException:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum inSync:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum iterativeLoad:Lcom/callapp/contacts/loader/api/LoaderFlags;

.field public static final enum loadOnlyFromCache:Lcom/callapp/contacts/loader/api/LoaderFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v1, "loadOnlyFromCache"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/loader/api/LoaderFlags;->loadOnlyFromCache:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 5
    new-instance v1, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v3, "forceRefresh"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->forceRefresh:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 6
    new-instance v3, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v5, "iterativeLoad"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/loader/api/LoaderFlags;->iterativeLoad:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 7
    new-instance v5, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v7, "disableContactEvents"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableContactEvents:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 8
    new-instance v7, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v9, "ignoreQuotaException"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/loader/api/LoaderFlags;->ignoreQuotaException:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 9
    new-instance v9, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v11, "disableSpecificCaches"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableSpecificCaches:Lcom/callapp/contacts/loader/api/LoaderFlags;

    .line 10
    new-instance v11, Lcom/callapp/contacts/loader/api/LoaderFlags;

    const-string v13, "inSync"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/loader/api/LoaderFlags;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/loader/api/LoaderFlags;->inSync:Lcom/callapp/contacts/loader/api/LoaderFlags;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/callapp/contacts/loader/api/LoaderFlags;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 3
    sput-object v13, Lcom/callapp/contacts/loader/api/LoaderFlags;->$VALUES:[Lcom/callapp/contacts/loader/api/LoaderFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/loader/api/LoaderFlags;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/loader/api/LoaderFlags;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/loader/api/LoaderFlags;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/contacts/loader/api/LoaderFlags;->$VALUES:[Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-virtual {v0}, [Lcom/callapp/contacts/loader/api/LoaderFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/loader/api/LoaderFlags;

    return-object v0
.end method
