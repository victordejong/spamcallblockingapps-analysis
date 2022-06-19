.class public final enum Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/tooltip/ToolTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

.field public static final enum FROM_MASTER_VIEW:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

.field public static final enum FROM_TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

.field public static final enum NONE:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const-string v1, "FROM_MASTER_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_MASTER_VIEW:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    .line 25
    new-instance v1, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const-string v3, "FROM_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->FROM_TOP:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    .line 26
    new-instance v3, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->NONE:Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 23
    sput-object v5, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->$VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;
    .locals 1

    .line 23
    const-class v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->$VALUES:[Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/tooltip/ToolTip$AnimationType;

    return-object v0
.end method
