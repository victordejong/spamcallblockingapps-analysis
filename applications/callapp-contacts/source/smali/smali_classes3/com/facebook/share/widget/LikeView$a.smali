.class public final enum Lcom/facebook/share/widget/LikeView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$a;

.field public static final enum BOTTOM:Lcom/facebook/share/widget/LikeView$a;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$a;

.field public static final enum INLINE:Lcom/facebook/share/widget/LikeView$a;

.field public static final enum TOP:Lcom/facebook/share/widget/LikeView$a;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 217
    new-instance v0, Lcom/facebook/share/widget/LikeView$a;

    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    const-string v3, "bottom"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/share/widget/LikeView$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$a;->BOTTOM:Lcom/facebook/share/widget/LikeView$a;

    .line 225
    new-instance v1, Lcom/facebook/share/widget/LikeView$a;

    const-string v3, "INLINE"

    const/4 v4, 0x1

    const-string v5, "inline"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/facebook/share/widget/LikeView$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/widget/LikeView$a;->INLINE:Lcom/facebook/share/widget/LikeView$a;

    .line 231
    new-instance v3, Lcom/facebook/share/widget/LikeView$a;

    const-string v5, "TOP"

    const/4 v6, 0x2

    const-string v7, "top"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/facebook/share/widget/LikeView$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/widget/LikeView$a;->TOP:Lcom/facebook/share/widget/LikeView$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/share/widget/LikeView$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 209
    sput-object v5, Lcom/facebook/share/widget/LikeView$a;->$VALUES:[Lcom/facebook/share/widget/LikeView$a;

    .line 233
    sput-object v0, Lcom/facebook/share/widget/LikeView$a;->DEFAULT:Lcom/facebook/share/widget/LikeView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$a;->stringValue:Ljava/lang/String;

    .line 250
    iput p4, p0, Lcom/facebook/share/widget/LikeView$a;->intValue:I

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/LikeView$a;)I
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$a;->getValue()I

    move-result p0

    return p0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$a;
    .locals 5

    .line 236
    invoke-static {}, Lcom/facebook/share/widget/LikeView$a;->values()[Lcom/facebook/share/widget/LikeView$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 237
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$a;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/facebook/share/widget/LikeView$a;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$a;
    .locals 1

    .line 209
    const-class v0, Lcom/facebook/share/widget/LikeView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/LikeView$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$a;
    .locals 1

    .line 209
    sget-object v0, Lcom/facebook/share/widget/LikeView$a;->$VALUES:[Lcom/facebook/share/widget/LikeView$a;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$a;->stringValue:Ljava/lang/String;

    return-object v0
.end method
