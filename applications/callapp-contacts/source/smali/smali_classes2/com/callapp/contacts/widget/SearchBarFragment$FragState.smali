.class final enum Lcom/callapp/contacts/widget/SearchBarFragment$FragState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/SearchBarFragment$FragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

.field public static final enum SEARCH_CLOSED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

.field public static final enum SEARCH_OPENED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    const-string v1, "SEARCH_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->SEARCH_CLOSED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    .line 38
    new-instance v1, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    const-string v3, "SEARCH_OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->SEARCH_OPENED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 36
    sput-object v3, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->$VALUES:[Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/SearchBarFragment$FragState;
    .locals 1

    .line 36
    const-class v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/SearchBarFragment$FragState;
    .locals 1

    .line 36
    sget-object v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->$VALUES:[Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    return-object v0
.end method
