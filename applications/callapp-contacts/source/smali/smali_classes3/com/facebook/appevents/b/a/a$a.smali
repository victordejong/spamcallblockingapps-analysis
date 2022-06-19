.class public final enum Lcom/facebook/appevents/b/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/b/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/b/a/a$a;

.field public static final enum CLICK:Lcom/facebook/appevents/b/a/a$a;

.field public static final enum SELECTED:Lcom/facebook/appevents/b/a/a$a;

.field public static final enum TEXT_CHANGED:Lcom/facebook/appevents/b/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 156
    new-instance v0, Lcom/facebook/appevents/b/a/a$a;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/b/a/a$a;->CLICK:Lcom/facebook/appevents/b/a/a$a;

    .line 157
    new-instance v1, Lcom/facebook/appevents/b/a/a$a;

    const-string v3, "SELECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/b/a/a$a;->SELECTED:Lcom/facebook/appevents/b/a/a$a;

    .line 158
    new-instance v3, Lcom/facebook/appevents/b/a/a$a;

    const-string v5, "TEXT_CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/b/a/a$a;->TEXT_CHANGED:Lcom/facebook/appevents/b/a/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/appevents/b/a/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 155
    sput-object v5, Lcom/facebook/appevents/b/a/a$a;->$VALUES:[Lcom/facebook/appevents/b/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/b/a/a$a;
    .locals 1

    .line 155
    const-class v0, Lcom/facebook/appevents/b/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/b/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/b/a/a$a;
    .locals 1

    .line 155
    sget-object v0, Lcom/facebook/appevents/b/a/a$a;->$VALUES:[Lcom/facebook/appevents/b/a/a$a;

    invoke-virtual {v0}, [Lcom/facebook/appevents/b/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/b/a/a$a;

    return-object v0
.end method
