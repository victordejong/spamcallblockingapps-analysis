.class public final enum Lcom/facebook/appevents/b/a/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/b/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/b/a/a$b;

.field public static final enum INFERENCE:Lcom/facebook/appevents/b/a/a$b;

.field public static final enum MANUAL:Lcom/facebook/appevents/b/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Lcom/facebook/appevents/b/a/a$b;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/b/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/b/a/a$b;->MANUAL:Lcom/facebook/appevents/b/a/a$b;

    .line 152
    new-instance v1, Lcom/facebook/appevents/b/a/a$b;

    const-string v3, "INFERENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/b/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/b/a/a$b;->INFERENCE:Lcom/facebook/appevents/b/a/a$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/appevents/b/a/a$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 150
    sput-object v3, Lcom/facebook/appevents/b/a/a$b;->$VALUES:[Lcom/facebook/appevents/b/a/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/b/a/a$b;
    .locals 1

    .line 150
    const-class v0, Lcom/facebook/appevents/b/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/b/a/a$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/b/a/a$b;
    .locals 1

    .line 150
    sget-object v0, Lcom/facebook/appevents/b/a/a$b;->$VALUES:[Lcom/facebook/appevents/b/a/a$b;

    invoke-virtual {v0}, [Lcom/facebook/appevents/b/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/b/a/a$b;

    return-object v0
.end method
