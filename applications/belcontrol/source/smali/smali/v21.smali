.class public final enum Lv21;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv21;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lv21;

.field public static final enum d:Lv21;

.field public static final enum f:Lv21;

.field public static final synthetic g:[Lv21;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lv21;

    const-string v1, "BLUE"

    const/4 v2, 0x0

    const v3, 0x7f11015d

    const v4, 0x7f1200ed

    invoke-direct {v0, v1, v2, v3, v4}, Lv21;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lv21;->c:Lv21;

    new-instance v1, Lv21;

    const-string v3, "LIGHT"

    const/4 v4, 0x1

    const v5, 0x7f110173

    const v6, 0x7f1200ef

    invoke-direct {v1, v3, v4, v5, v6}, Lv21;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lv21;->d:Lv21;

    new-instance v3, Lv21;

    const-string v5, "DARK"

    const/4 v6, 0x2

    const v7, 0x7f110164

    const v8, 0x7f1200ee

    invoke-direct {v3, v5, v6, v7, v8}, Lv21;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lv21;->f:Lv21;

    const/4 v5, 0x3

    new-array v5, v5, [Lv21;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lv21;->g:[Lv21;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lv21;->a:I

    iput p4, p0, Lv21;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv21;
    .locals 1

    const-class v0, Lv21;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv21;

    return-object p0
.end method

.method public static values()[Lv21;
    .locals 1

    sget-object v0, Lv21;->g:[Lv21;

    invoke-virtual {v0}, [Lv21;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv21;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lv21;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lv21;->b:I

    return v0
.end method
