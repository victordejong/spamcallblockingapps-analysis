.class public final enum Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/tooltip/ToolTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field public static final enum BOTTOM:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field public static final enum DEFUALT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field public static final enum LEFT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field public static final enum RIGHT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

.field public static final enum TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const-string v1, "DEFUALT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->DEFUALT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    .line 31
    new-instance v1, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    .line 32
    new-instance v3, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->BOTTOM:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    .line 33
    new-instance v5, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->LEFT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    .line 34
    new-instance v7, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const-string v9, "RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->RIGHT:Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 29
    sput-object v9, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->$VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;
    .locals 1

    .line 29
    const-class v0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->$VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/tooltip/ToolTip$Orientation;

    return-object v0
.end method
