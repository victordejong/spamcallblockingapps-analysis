.class public final enum Lorg/xutils/common/task/AbsTask$State;
.super Ljava/lang/Enum;
.source "AbsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/AbsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/common/task/AbsTask$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum ERROR:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum IDLE:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum STARTED:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum SUCCESS:Lorg/xutils/common/task/AbsTask$State;

.field public static final enum WAITING:Lorg/xutils/common/task/AbsTask$State;

.field private static final synthetic d:[Lorg/xutils/common/task/AbsTask$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/xutils/common/task/AbsTask$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    new-instance v1, Lorg/xutils/common/task/AbsTask$State;

    const-string v3, "WAITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    new-instance v3, Lorg/xutils/common/task/AbsTask$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v5, Lorg/xutils/common/task/AbsTask$State;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    new-instance v7, Lorg/xutils/common/task/AbsTask$State;

    const-string v9, "CANCELLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    new-instance v9, Lorg/xutils/common/task/AbsTask$State;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lorg/xutils/common/task/AbsTask$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/xutils/common/task/AbsTask$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lorg/xutils/common/task/AbsTask$State;->d:[Lorg/xutils/common/task/AbsTask$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .line 1
    const-class v0, Lorg/xutils/common/task/AbsTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/common/task/AbsTask$State;

    return-object p0
.end method

.method public static values()[Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->d:[Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, [Lorg/xutils/common/task/AbsTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/common/task/AbsTask$State;->value:I

    return v0
.end method
