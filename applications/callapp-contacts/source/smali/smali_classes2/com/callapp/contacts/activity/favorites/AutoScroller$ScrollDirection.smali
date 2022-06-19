.class final enum Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/favorites/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

.field public static final enum LEFT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

.field public static final enum RIGHT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->LEFT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    new-instance v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->RIGHT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 29
    sput-object v3, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->$VALUES:[Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;
    .locals 1

    .line 29
    const-class v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->$VALUES:[Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    return-object v0
.end method
