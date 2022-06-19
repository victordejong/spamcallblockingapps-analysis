.class public final enum Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/TopBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TopBarIconStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

.field public static final enum BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

.field public static final enum TOGGLE_MENU:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 115
    new-instance v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    .line 116
    new-instance v1, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    const-string v3, "TOGGLE_MENU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->TOGGLE_MENU:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 114
    sput-object v3, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->$VALUES:[Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;
    .locals 1

    .line 114
    const-class v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;
    .locals 1

    .line 114
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->$VALUES:[Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object v0
.end method
