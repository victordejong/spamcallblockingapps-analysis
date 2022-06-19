.class public final enum Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

.field public static final enum CALLAPP_PLUS:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

.field public static final enum REGULAR:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->REGULAR:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    .line 24
    new-instance v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    const-string v3, "CALLAPP_PLUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->CALLAPP_PLUS:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 22
    sput-object v3, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->$VALUES:[Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    .locals 1

    .line 22
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    .locals 1

    .line 22
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->$VALUES:[Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-object v0
.end method
