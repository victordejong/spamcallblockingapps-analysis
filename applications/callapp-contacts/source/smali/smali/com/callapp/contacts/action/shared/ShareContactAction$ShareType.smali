.class public final enum Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

.field public static final enum Address:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

.field public static final enum Email:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

.field public static final enum Phone:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 506
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    const-string v1, "Phone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Phone:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    .line 507
    new-instance v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    const-string v3, "Email"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Email:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    .line 508
    new-instance v3, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    const-string v5, "Address"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Address:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 505
    sput-object v5, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->$VALUES:[Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;
    .locals 1

    .line 505
    const-class v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;
    .locals 1

    .line 505
    sget-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->$VALUES:[Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    return-object v0
.end method
