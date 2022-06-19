.class public final enum Lcom/venmo/view/ArrowAlignment;
.super Ljava/lang/Enum;
.source "ArrowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/venmo/view/ArrowAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/venmo/view/ArrowAlignment;

.field public static final enum ANCHORED_VIEW:Lcom/venmo/view/ArrowAlignment;

.field public static final enum CENTER:Lcom/venmo/view/ArrowAlignment;

.field public static final enum END:Lcom/venmo/view/ArrowAlignment;

.field public static final enum START:Lcom/venmo/view/ArrowAlignment;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/venmo/view/ArrowAlignment;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/venmo/view/ArrowAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/venmo/view/ArrowAlignment;->START:Lcom/venmo/view/ArrowAlignment;

    new-instance v1, Lcom/venmo/view/ArrowAlignment;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/venmo/view/ArrowAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/venmo/view/ArrowAlignment;->CENTER:Lcom/venmo/view/ArrowAlignment;

    new-instance v3, Lcom/venmo/view/ArrowAlignment;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/venmo/view/ArrowAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/venmo/view/ArrowAlignment;->END:Lcom/venmo/view/ArrowAlignment;

    new-instance v5, Lcom/venmo/view/ArrowAlignment;

    const-string v7, "ANCHORED_VIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/venmo/view/ArrowAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/venmo/view/ArrowAlignment;->ANCHORED_VIEW:Lcom/venmo/view/ArrowAlignment;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/venmo/view/ArrowAlignment;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/venmo/view/ArrowAlignment;->$VALUES:[Lcom/venmo/view/ArrowAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/venmo/view/ArrowAlignment;->value:I

    return-void
.end method

.method public static getAlignment(I)Lcom/venmo/view/ArrowAlignment;
    .locals 5

    .line 13
    invoke-static {}, Lcom/venmo/view/ArrowAlignment;->values()[Lcom/venmo/view/ArrowAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 14
    invoke-virtual {v3}, Lcom/venmo/view/ArrowAlignment;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching ArrowAlignment with value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/venmo/view/ArrowAlignment;
    .locals 1

    .line 3
    const-class v0, Lcom/venmo/view/ArrowAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/venmo/view/ArrowAlignment;

    return-object p0
.end method

.method public static values()[Lcom/venmo/view/ArrowAlignment;
    .locals 1

    .line 3
    sget-object v0, Lcom/venmo/view/ArrowAlignment;->$VALUES:[Lcom/venmo/view/ArrowAlignment;

    invoke-virtual {v0}, [Lcom/venmo/view/ArrowAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/venmo/view/ArrowAlignment;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/venmo/view/ArrowAlignment;->value:I

    return v0
.end method
