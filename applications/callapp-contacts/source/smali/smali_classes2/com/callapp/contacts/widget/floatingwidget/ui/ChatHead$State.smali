.class public final enum Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

.field public static final enum CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

.field public static final enum CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

.field public static final enum FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 333
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const-string v3, "CAPTURED_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    new-instance v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const-string v5, "CAPTURED_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 332
    sput-object v5, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->$VALUES:[Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;
    .locals 1

    .line 332
    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;
    .locals 1

    .line 332
    sget-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->$VALUES:[Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-object v0
.end method
