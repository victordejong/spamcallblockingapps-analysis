.class public final enum Lcom/daimajia/swipe/SwipeLayout$b;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/swipe/SwipeLayout$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/daimajia/swipe/SwipeLayout$b;

.field public static final enum b:Lcom/daimajia/swipe/SwipeLayout$b;

.field public static final enum c:Lcom/daimajia/swipe/SwipeLayout$b;

.field public static final enum d:Lcom/daimajia/swipe/SwipeLayout$b;

.field private static final synthetic e:[Lcom/daimajia/swipe/SwipeLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$b;

    const-string/jumbo v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 64
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$b;

    const-string/jumbo v1, "Top"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 65
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$b;

    const-string/jumbo v1, "Right"

    invoke-direct {v0, v1, v4}, Lcom/daimajia/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 66
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$b;

    const-string/jumbo v1, "Bottom"

    invoke-direct {v0, v1, v5}, Lcom/daimajia/swipe/SwipeLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->e:[Lcom/daimajia/swipe/SwipeLayout$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/SwipeLayout$b;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$b;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/SwipeLayout$b;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->e:[Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/SwipeLayout$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/SwipeLayout$b;

    return-object v0
.end method
