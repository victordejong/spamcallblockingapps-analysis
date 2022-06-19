.class public final enum Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/ChooseImageSourceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

.field public static final enum IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

.field public static final enum VIDEO:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    .line 27
    new-instance v1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->VIDEO:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 25
    sput-object v3, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->$VALUES:[Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;
    .locals 1

    .line 25
    const-class v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->$VALUES:[Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    return-object v0
.end method
