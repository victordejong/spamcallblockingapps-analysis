.class public final enum Lcom/theartofdev/edmodo/cropper/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum BOTTOM:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum TOP:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum TOP_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

.field public static final enum TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 755
    new-instance v0, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 756
    new-instance v1, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/theartofdev/edmodo/cropper/f$a;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 757
    new-instance v3, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v5, "BOTTOM_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 758
    new-instance v5, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v7, "BOTTOM_RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 759
    new-instance v7, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v9, "LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/theartofdev/edmodo/cropper/f$a;->LEFT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 760
    new-instance v9, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v11, "TOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/theartofdev/edmodo/cropper/f$a;->TOP:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 761
    new-instance v11, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v13, "RIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/theartofdev/edmodo/cropper/f$a;->RIGHT:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 762
    new-instance v13, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v15, "BOTTOM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/theartofdev/edmodo/cropper/f$a;->BOTTOM:Lcom/theartofdev/edmodo/cropper/f$a;

    .line 763
    new-instance v15, Lcom/theartofdev/edmodo/cropper/f$a;

    const-string v14, "CENTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/theartofdev/edmodo/cropper/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/theartofdev/edmodo/cropper/f$a;->CENTER:Lcom/theartofdev/edmodo/cropper/f$a;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/theartofdev/edmodo/cropper/f$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 754
    sput-object v14, Lcom/theartofdev/edmodo/cropper/f$a;->$VALUES:[Lcom/theartofdev/edmodo/cropper/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 754
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/f$a;
    .locals 1

    .line 754
    const-class v0, Lcom/theartofdev/edmodo/cropper/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/f$a;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/f$a;
    .locals 1

    .line 754
    sget-object v0, Lcom/theartofdev/edmodo/cropper/f$a;->$VALUES:[Lcom/theartofdev/edmodo/cropper/f$a;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/f$a;

    return-object v0
.end method
