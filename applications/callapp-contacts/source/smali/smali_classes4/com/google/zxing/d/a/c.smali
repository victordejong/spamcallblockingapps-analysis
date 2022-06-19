.class public final enum Lcom/google/zxing/d/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/d/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/d/a/c;

.field public static final enum AUTO:Lcom/google/zxing/d/a/c;

.field public static final enum BYTE:Lcom/google/zxing/d/a/c;

.field public static final enum NUMERIC:Lcom/google/zxing/d/a/c;

.field public static final enum TEXT:Lcom/google/zxing/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/google/zxing/d/a/c;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/d/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/d/a/c;->AUTO:Lcom/google/zxing/d/a/c;

    .line 25
    new-instance v1, Lcom/google/zxing/d/a/c;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/d/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/d/a/c;->TEXT:Lcom/google/zxing/d/a/c;

    .line 26
    new-instance v3, Lcom/google/zxing/d/a/c;

    const-string v5, "BYTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/d/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/d/a/c;->BYTE:Lcom/google/zxing/d/a/c;

    .line 27
    new-instance v5, Lcom/google/zxing/d/a/c;

    const-string v7, "NUMERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/d/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/d/a/c;->NUMERIC:Lcom/google/zxing/d/a/c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/d/a/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 22
    sput-object v7, Lcom/google/zxing/d/a/c;->$VALUES:[Lcom/google/zxing/d/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/d/a/c;
    .locals 1

    .line 22
    const-class v0, Lcom/google/zxing/d/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/d/a/c;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/d/a/c;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/zxing/d/a/c;->$VALUES:[Lcom/google/zxing/d/a/c;

    invoke-virtual {v0}, [Lcom/google/zxing/d/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/d/a/c;

    return-object v0
.end method
