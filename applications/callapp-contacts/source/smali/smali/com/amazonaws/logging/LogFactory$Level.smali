.class public final enum Lcom/amazonaws/logging/LogFactory$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/logging/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/logging/LogFactory$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ALL:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ERROR:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum INFO:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum OFF:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum TRACE:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum WARN:Lcom/amazonaws/logging/LogFactory$Level;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 94
    new-instance v0, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ALL:Lcom/amazonaws/logging/LogFactory$Level;

    .line 95
    new-instance v1, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v3, "TRACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    .line 96
    new-instance v3, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v5, "DEBUG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    .line 97
    new-instance v5, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v7, "INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    .line 98
    new-instance v7, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v9, "WARN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    .line 99
    new-instance v9, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    .line 100
    new-instance v11, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v13, "OFF"

    const/4 v14, 0x6

    const v15, 0x7fffffff

    invoke-direct {v11, v13, v14, v15}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/amazonaws/logging/LogFactory$Level;->OFF:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/amazonaws/logging/LogFactory$Level;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 92
    sput-object v13, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 92
    const-class v0, Lcom/amazonaws/logging/LogFactory$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/logging/LogFactory$Level;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 92
    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v0}, [Lcom/amazonaws/logging/LogFactory$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/logging/LogFactory$Level;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    return v0
.end method
