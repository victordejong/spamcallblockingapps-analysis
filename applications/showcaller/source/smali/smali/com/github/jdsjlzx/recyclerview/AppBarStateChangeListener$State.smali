.class public final enum Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

.field public static final enum e:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

.field public static final enum f:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

.field private static final synthetic g:[Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->d:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    .line 2
    new-instance v1, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    const-string v3, "COLLAPSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->e:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    .line 3
    new-instance v3, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    const-string v5, "IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->f:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->g:[Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;
    .locals 1

    .line 1
    const-class v0, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->g:[Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    return-object v0
.end method
