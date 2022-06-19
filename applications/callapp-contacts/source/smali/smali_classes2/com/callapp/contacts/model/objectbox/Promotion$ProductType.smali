.class public final enum Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/Promotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum BUNDLE:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum KEYPAD:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

.field public static final enum THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;


# instance fields
.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v1, 0x7f12055c

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COVER"

    const/4 v3, 0x0

    const-string v4, "cover"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 33
    new-instance v1, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v2, 0x7f12055a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BUNDLE"

    const/4 v5, 0x1

    const-string v6, "bundle"

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->BUNDLE:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 34
    new-instance v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v4, 0x7f12055b

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CALL_SCREEN"

    const/4 v7, 0x2

    const-string v8, "call_screen"

    invoke-direct {v2, v6, v7, v8, v4}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 35
    new-instance v4, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v6, 0x7f12055f

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "THEME"

    const/4 v9, 0x3

    const-string v10, "theme"

    invoke-direct {v4, v8, v9, v10, v6}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 36
    new-instance v6, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v8, 0x7f12055e

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "SUPER_SKIN"

    const/4 v11, 0x4

    const-string v12, "super_skin"

    invoke-direct {v6, v10, v11, v12, v8}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    .line 37
    new-instance v8, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const v10, 0x7f12055d

    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "KEYPAD"

    const/4 v13, 0x5

    const-string v14, "keypad"

    invoke-direct {v8, v12, v13, v14, v10}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->KEYPAD:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    .line 31
    sput-object v10, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->type:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 31
    const-class v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->type:Ljava/lang/String;

    return-object v0
.end method
