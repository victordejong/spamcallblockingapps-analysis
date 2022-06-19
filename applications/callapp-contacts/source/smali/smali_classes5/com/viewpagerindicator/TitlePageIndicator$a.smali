.class public final enum Lcom/viewpagerindicator/TitlePageIndicator$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TitlePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/viewpagerindicator/TitlePageIndicator$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$a;

.field public static final enum None:Lcom/viewpagerindicator/TitlePageIndicator$a;

.field public static final enum Triangle:Lcom/viewpagerindicator/TitlePageIndicator$a;

.field public static final enum Underline:Lcom/viewpagerindicator/TitlePageIndicator$a;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 80
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/TitlePageIndicator$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator$a;->None:Lcom/viewpagerindicator/TitlePageIndicator$a;

    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$a;

    const-string v3, "Triangle"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/viewpagerindicator/TitlePageIndicator$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/viewpagerindicator/TitlePageIndicator$a;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$a;

    new-instance v3, Lcom/viewpagerindicator/TitlePageIndicator$a;

    const-string v5, "Underline"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/viewpagerindicator/TitlePageIndicator$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/viewpagerindicator/TitlePageIndicator$a;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/viewpagerindicator/TitlePageIndicator$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 79
    sput-object v5, Lcom/viewpagerindicator/TitlePageIndicator$a;->$VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicator$a;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$a;
    .locals 5

    .line 89
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator$a;->values()[Lcom/viewpagerindicator/TitlePageIndicator$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    iget v4, v3, Lcom/viewpagerindicator/TitlePageIndicator$a;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/TitlePageIndicator$a;
    .locals 1

    .line 79
    const-class v0, Lcom/viewpagerindicator/TitlePageIndicator$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/viewpagerindicator/TitlePageIndicator$a;

    return-object p0
.end method

.method public static values()[Lcom/viewpagerindicator/TitlePageIndicator$a;
    .locals 1

    .line 79
    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator$a;->$VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$a;

    invoke-virtual {v0}, [Lcom/viewpagerindicator/TitlePageIndicator$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viewpagerindicator/TitlePageIndicator$a;

    return-object v0
.end method
