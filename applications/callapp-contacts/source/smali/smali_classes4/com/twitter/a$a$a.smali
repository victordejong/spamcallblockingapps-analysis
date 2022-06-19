.class public final enum Lcom/twitter/a$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twitter/a$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/a$a$a;

.field public static final enum CASHTAG:Lcom/twitter/a$a$a;

.field public static final enum HASHTAG:Lcom/twitter/a$a$a;

.field public static final enum MENTION:Lcom/twitter/a$a$a;

.field public static final enum URL:Lcom/twitter/a$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lcom/twitter/a$a$a;

    const-string v1, "URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twitter/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/a$a$a;->URL:Lcom/twitter/a$a$a;

    new-instance v1, Lcom/twitter/a$a$a;

    const-string v3, "HASHTAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twitter/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twitter/a$a$a;->HASHTAG:Lcom/twitter/a$a$a;

    new-instance v3, Lcom/twitter/a$a$a;

    const-string v5, "MENTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/twitter/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twitter/a$a$a;->MENTION:Lcom/twitter/a$a$a;

    new-instance v5, Lcom/twitter/a$a$a;

    const-string v7, "CASHTAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/twitter/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/twitter/a$a$a;->CASHTAG:Lcom/twitter/a$a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/twitter/a$a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 16
    sput-object v7, Lcom/twitter/a$a$a;->$VALUES:[Lcom/twitter/a$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/a$a$a;
    .locals 1

    .line 16
    const-class v0, Lcom/twitter/a$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/a$a$a;

    return-object p0
.end method

.method public static values()[Lcom/twitter/a$a$a;
    .locals 1

    .line 16
    sget-object v0, Lcom/twitter/a$a$a;->$VALUES:[Lcom/twitter/a$a$a;

    invoke-virtual {v0}, [Lcom/twitter/a$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/a$a$a;

    return-object v0
.end method
