.class public final enum Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/login/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

.field public static final enum PHONE:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

.field public static final enum SOCIAL:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->PHONE:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    .line 35
    new-instance v1, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    const-string v3, "SOCIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->SOCIAL:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 33
    sput-object v3, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->$VALUES:[Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;
    .locals 1

    .line 33
    const-class v0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->$VALUES:[Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    return-object v0
.end method
