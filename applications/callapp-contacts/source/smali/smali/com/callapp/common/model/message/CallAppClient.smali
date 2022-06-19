.class public final enum Lcom/callapp/common/model/message/CallAppClient;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/common/model/message/CallAppClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/common/model/message/CallAppClient;

.field public static final enum ANDROID:Lcom/callapp/common/model/message/CallAppClient;

.field public static final enum IPHONE:Lcom/callapp/common/model/message/CallAppClient;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/callapp/common/model/message/CallAppClient;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/common/model/message/CallAppClient;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/common/model/message/CallAppClient;->ANDROID:Lcom/callapp/common/model/message/CallAppClient;

    new-instance v1, Lcom/callapp/common/model/message/CallAppClient;

    const-string v3, "IPHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/common/model/message/CallAppClient;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/common/model/message/CallAppClient;->IPHONE:Lcom/callapp/common/model/message/CallAppClient;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/common/model/message/CallAppClient;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/callapp/common/model/message/CallAppClient;->$VALUES:[Lcom/callapp/common/model/message/CallAppClient;

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

.method public static from(Ljava/lang/Integer;)Lcom/callapp/common/model/message/CallAppClient;
    .locals 3

    .line 7
    invoke-static {}, Lcom/callapp/common/model/message/CallAppClient;->values()[Lcom/callapp/common/model/message/CallAppClient;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/common/model/message/CallAppClient;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/common/model/message/CallAppClient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/message/CallAppClient;

    return-object p0
.end method

.method public static values()[Lcom/callapp/common/model/message/CallAppClient;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/common/model/message/CallAppClient;->$VALUES:[Lcom/callapp/common/model/message/CallAppClient;

    invoke-virtual {v0}, [Lcom/callapp/common/model/message/CallAppClient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/common/model/message/CallAppClient;

    return-object v0
.end method
