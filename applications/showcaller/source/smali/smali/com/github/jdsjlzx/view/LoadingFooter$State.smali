.class public final enum Lcom/github/jdsjlzx/view/LoadingFooter$State;
.super Ljava/lang/Enum;
.source "LoadingFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jdsjlzx/view/LoadingFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/jdsjlzx/view/LoadingFooter$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

.field public static final enum e:Lcom/github/jdsjlzx/view/LoadingFooter$State;

.field public static final enum f:Lcom/github/jdsjlzx/view/LoadingFooter$State;

.field public static final enum g:Lcom/github/jdsjlzx/view/LoadingFooter$State;

.field private static final synthetic h:[Lcom/github/jdsjlzx/view/LoadingFooter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/jdsjlzx/view/LoadingFooter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->d:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    new-instance v1, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    const-string v3, "NoMore"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/jdsjlzx/view/LoadingFooter$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/jdsjlzx/view/LoadingFooter$State;->e:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    new-instance v3, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    const-string v5, "Loading"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/jdsjlzx/view/LoadingFooter$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/jdsjlzx/view/LoadingFooter$State;->f:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    new-instance v5, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    const-string v7, "NetWorkError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/jdsjlzx/view/LoadingFooter$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/jdsjlzx/view/LoadingFooter$State;->g:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/jdsjlzx/view/LoadingFooter$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/github/jdsjlzx/view/LoadingFooter$State;->h:[Lcom/github/jdsjlzx/view/LoadingFooter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/jdsjlzx/view/LoadingFooter$State;
    .locals 1

    .line 1
    const-class v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/jdsjlzx/view/LoadingFooter$State;

    return-object p0
.end method

.method public static values()[Lcom/github/jdsjlzx/view/LoadingFooter$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/jdsjlzx/view/LoadingFooter$State;->h:[Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-virtual {v0}, [Lcom/github/jdsjlzx/view/LoadingFooter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/jdsjlzx/view/LoadingFooter$State;

    return-object v0
.end method
