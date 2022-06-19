.class public final enum Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

.field public static final enum b:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

.field public static final synthetic c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;->a:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    new-instance v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;->b:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;->c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;
    .locals 1

    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;
    .locals 1

    sget-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;->c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$b;

    return-object v0
.end method
