.class public final enum Lcom/daimajia/swipe/SwipeLayout$e;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/swipe/SwipeLayout$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/daimajia/swipe/SwipeLayout$e;

.field public static final enum b:Lcom/daimajia/swipe/SwipeLayout$e;

.field private static final synthetic c:[Lcom/daimajia/swipe/SwipeLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$e;

    const-string/jumbo v1, "LayDown"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/SwipeLayout$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    .line 71
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$e;

    const-string/jumbo v1, "PullOut"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/SwipeLayout$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/daimajia/swipe/SwipeLayout$e;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$e;->c:[Lcom/daimajia/swipe/SwipeLayout$e;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/SwipeLayout$e;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$e;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/SwipeLayout$e;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$e;->c:[Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/SwipeLayout$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/SwipeLayout$e;

    return-object v0
.end method
