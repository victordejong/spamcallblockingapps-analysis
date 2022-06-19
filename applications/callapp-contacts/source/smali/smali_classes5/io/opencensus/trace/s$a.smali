.class public final enum Lio/opencensus/trace/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/trace/s$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/trace/s$a;

.field public static final enum ABORTED:Lio/opencensus/trace/s$a;

.field public static final enum ALREADY_EXISTS:Lio/opencensus/trace/s$a;

.field public static final enum CANCELLED:Lio/opencensus/trace/s$a;

.field public static final enum DATA_LOSS:Lio/opencensus/trace/s$a;

.field public static final enum DEADLINE_EXCEEDED:Lio/opencensus/trace/s$a;

.field public static final enum FAILED_PRECONDITION:Lio/opencensus/trace/s$a;

.field public static final enum INTERNAL:Lio/opencensus/trace/s$a;

.field public static final enum INVALID_ARGUMENT:Lio/opencensus/trace/s$a;

.field public static final enum NOT_FOUND:Lio/opencensus/trace/s$a;

.field public static final enum OK:Lio/opencensus/trace/s$a;

.field public static final enum OUT_OF_RANGE:Lio/opencensus/trace/s$a;

.field public static final enum PERMISSION_DENIED:Lio/opencensus/trace/s$a;

.field public static final enum RESOURCE_EXHAUSTED:Lio/opencensus/trace/s$a;

.field public static final enum UNAUTHENTICATED:Lio/opencensus/trace/s$a;

.field public static final enum UNAVAILABLE:Lio/opencensus/trace/s$a;

.field public static final enum UNIMPLEMENTED:Lio/opencensus/trace/s$a;

.field public static final enum UNKNOWN:Lio/opencensus/trace/s$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 55
    new-instance v0, Lio/opencensus/trace/s$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/trace/s$a;->OK:Lio/opencensus/trace/s$a;

    .line 62
    new-instance v1, Lio/opencensus/trace/s$a;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/trace/s$a;->CANCELLED:Lio/opencensus/trace/s$a;

    .line 72
    new-instance v3, Lio/opencensus/trace/s$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/opencensus/trace/s$a;->UNKNOWN:Lio/opencensus/trace/s$a;

    .line 81
    new-instance v5, Lio/opencensus/trace/s$a;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/opencensus/trace/s$a;->INVALID_ARGUMENT:Lio/opencensus/trace/s$a;

    .line 91
    new-instance v7, Lio/opencensus/trace/s$a;

    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/opencensus/trace/s$a;->DEADLINE_EXCEEDED:Lio/opencensus/trace/s$a;

    .line 98
    new-instance v9, Lio/opencensus/trace/s$a;

    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/opencensus/trace/s$a;->NOT_FOUND:Lio/opencensus/trace/s$a;

    .line 105
    new-instance v11, Lio/opencensus/trace/s$a;

    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/opencensus/trace/s$a;->ALREADY_EXISTS:Lio/opencensus/trace/s$a;

    .line 115
    new-instance v13, Lio/opencensus/trace/s$a;

    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/opencensus/trace/s$a;->PERMISSION_DENIED:Lio/opencensus/trace/s$a;

    .line 123
    new-instance v15, Lio/opencensus/trace/s$a;

    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/opencensus/trace/s$a;->RESOURCE_EXHAUSTED:Lio/opencensus/trace/s$a;

    .line 140
    new-instance v14, Lio/opencensus/trace/s$a;

    const-string v12, "FAILED_PRECONDITION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/opencensus/trace/s$a;->FAILED_PRECONDITION:Lio/opencensus/trace/s$a;

    .line 150
    new-instance v12, Lio/opencensus/trace/s$a;

    const-string v10, "ABORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/opencensus/trace/s$a;->ABORTED:Lio/opencensus/trace/s$a;

    .line 167
    new-instance v10, Lio/opencensus/trace/s$a;

    const-string v8, "OUT_OF_RANGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/opencensus/trace/s$a;->OUT_OF_RANGE:Lio/opencensus/trace/s$a;

    .line 174
    new-instance v8, Lio/opencensus/trace/s$a;

    const-string v6, "UNIMPLEMENTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/opencensus/trace/s$a;->UNIMPLEMENTED:Lio/opencensus/trace/s$a;

    .line 182
    new-instance v6, Lio/opencensus/trace/s$a;

    const-string v4, "INTERNAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/trace/s$a;->INTERNAL:Lio/opencensus/trace/s$a;

    .line 192
    new-instance v4, Lio/opencensus/trace/s$a;

    const-string v2, "UNAVAILABLE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/opencensus/trace/s$a;->UNAVAILABLE:Lio/opencensus/trace/s$a;

    .line 199
    new-instance v2, Lio/opencensus/trace/s$a;

    const-string v6, "DATA_LOSS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/opencensus/trace/s$a;->DATA_LOSS:Lio/opencensus/trace/s$a;

    .line 206
    new-instance v6, Lio/opencensus/trace/s$a;

    const-string v4, "UNAUTHENTICATED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lio/opencensus/trace/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/trace/s$a;->UNAUTHENTICATED:Lio/opencensus/trace/s$a;

    const/16 v4, 0x11

    new-array v4, v4, [Lio/opencensus/trace/s$a;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    .line 49
    sput-object v4, Lio/opencensus/trace/s$a;->$VALUES:[Lio/opencensus/trace/s$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lio/opencensus/trace/s$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/trace/s$a;
    .locals 1

    .line 49
    const-class v0, Lio/opencensus/trace/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/s$a;

    return-object p0
.end method

.method public static values()[Lio/opencensus/trace/s$a;
    .locals 1

    .line 49
    sget-object v0, Lio/opencensus/trace/s$a;->$VALUES:[Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, [Lio/opencensus/trace/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/trace/s$a;

    return-object v0
.end method


# virtual methods
.method public final toStatus()Lio/opencensus/trace/s;
    .locals 2

    .line 231
    invoke-static {}, Lio/opencensus/trace/s;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/opencensus/trace/s$a;->value:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/s;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .line 221
    iget v0, p0, Lio/opencensus/trace/s$a;->value:I

    return v0
.end method
