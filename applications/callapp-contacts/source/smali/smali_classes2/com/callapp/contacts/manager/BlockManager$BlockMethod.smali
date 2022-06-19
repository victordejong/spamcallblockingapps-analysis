.class public final enum Lcom/callapp/contacts/manager/BlockManager$BlockMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/BlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/BlockManager$BlockMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

.field public static final enum HANG_UP:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

.field public static final enum SILENT:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;


# instance fields
.field private final titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    const-string v1, "SILENT"

    const/4 v2, 0x0

    const v3, 0x7f120091

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->SILENT:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    .line 54
    new-instance v1, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    const-string v3, "HANG_UP"

    const/4 v4, 0x1

    const v5, 0x7f12008f

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->HANG_UP:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 52
    sput-object v3, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->$VALUES:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/BlockManager$BlockMethod;
    .locals 1

    .line 52
    const-class v0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;
    .locals 1

    .line 52
    sget-object v0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->$VALUES:[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget v0, p0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->titleResId:I

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
