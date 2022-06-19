.class public final enum Lcom/daimajia/swipe/SwipeLayout$f;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/swipe/SwipeLayout$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/daimajia/swipe/SwipeLayout$f;

.field public static final enum b:Lcom/daimajia/swipe/SwipeLayout$f;

.field public static final enum c:Lcom/daimajia/swipe/SwipeLayout$f;

.field private static final synthetic d:[Lcom/daimajia/swipe/SwipeLayout$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1164
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$f;

    const-string/jumbo v1, "Middle"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    .line 1165
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$f;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    .line 1166
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$f;

    const-string/jumbo v1, "Close"

    invoke-direct {v0, v1, v4}, Lcom/daimajia/swipe/SwipeLayout$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    .line 1163
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/daimajia/swipe/SwipeLayout$f;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->d:[Lcom/daimajia/swipe/SwipeLayout$f;

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
    .line 1163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/SwipeLayout$f;
    .locals 1

    .prologue
    .line 1163
    const-class v0, Lcom/daimajia/swipe/SwipeLayout$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$f;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/SwipeLayout$f;
    .locals 1

    .prologue
    .line 1163
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->d:[Lcom/daimajia/swipe/SwipeLayout$f;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/SwipeLayout$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/SwipeLayout$f;

    return-object v0
.end method
