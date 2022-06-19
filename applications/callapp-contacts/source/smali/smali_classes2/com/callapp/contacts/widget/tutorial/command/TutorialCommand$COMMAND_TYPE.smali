.class public final enum Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMMAND_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

.field public static final enum INFORMATIVE:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

.field public static final enum MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

.field public static final enum NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    const-string v1, "MANDATORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    .line 13
    new-instance v1, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    const-string v3, "NOT_MANDATORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    .line 14
    new-instance v3, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    const-string v5, "INFORMATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->INFORMATIVE:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 11
    sput-object v5, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->$VALUES:[Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 11
    const-class v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 11
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->$VALUES:[Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
