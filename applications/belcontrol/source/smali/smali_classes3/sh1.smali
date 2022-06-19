.class public final enum Lsh1;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsh1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lsh1;

.field public static final enum NONE:Lsh1;

.field public static final enum PORTRAIT:Lsh1;

.field public static final synthetic b:[Lsh1;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lsh1;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lsh1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsh1;->PORTRAIT:Lsh1;

    new-instance v1, Lsh1;

    const-string v4, "LANDSCAPE"

    invoke-direct {v1, v4, v3, v2}, Lsh1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lsh1;->LANDSCAPE:Lsh1;

    new-instance v4, Lsh1;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lsh1;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsh1;->NONE:Lsh1;

    const/4 v5, 0x3

    new-array v5, v5, [Lsh1;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lsh1;->b:[Lsh1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsh1;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsh1;
    .locals 1

    const-class v0, Lsh1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsh1;

    return-object p0
.end method

.method public static values()[Lsh1;
    .locals 1

    sget-object v0, Lsh1;->b:[Lsh1;

    invoke-virtual {v0}, [Lsh1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsh1;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lsh1;->a:I

    return v0
.end method
