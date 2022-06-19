.class public final enum Lio/opencensus/trace/Status$CanonicalCode;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CanonicalCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/trace/Status$CanonicalCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum e:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum f:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum g:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum h:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum i:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum j:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum k:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum l:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum m:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum n:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum o:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum p:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum q:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum r:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum s:Lio/opencensus/trace/Status$CanonicalCode;

.field public static final enum t:Lio/opencensus/trace/Status$CanonicalCode;

.field private static final synthetic u:[Lio/opencensus/trace/Status$CanonicalCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/trace/Status$CanonicalCode;->d:Lio/opencensus/trace/Status$CanonicalCode;

    .line 2
    new-instance v1, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/trace/Status$CanonicalCode;->e:Lio/opencensus/trace/Status$CanonicalCode;

    .line 3
    new-instance v3, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/opencensus/trace/Status$CanonicalCode;->f:Lio/opencensus/trace/Status$CanonicalCode;

    .line 4
    new-instance v5, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/opencensus/trace/Status$CanonicalCode;->g:Lio/opencensus/trace/Status$CanonicalCode;

    .line 5
    new-instance v7, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/opencensus/trace/Status$CanonicalCode;->h:Lio/opencensus/trace/Status$CanonicalCode;

    .line 6
    new-instance v9, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/opencensus/trace/Status$CanonicalCode;->i:Lio/opencensus/trace/Status$CanonicalCode;

    .line 7
    new-instance v11, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/opencensus/trace/Status$CanonicalCode;->j:Lio/opencensus/trace/Status$CanonicalCode;

    .line 8
    new-instance v13, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/opencensus/trace/Status$CanonicalCode;->k:Lio/opencensus/trace/Status$CanonicalCode;

    .line 9
    new-instance v15, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/opencensus/trace/Status$CanonicalCode;->l:Lio/opencensus/trace/Status$CanonicalCode;

    .line 10
    new-instance v14, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v12, "FAILED_PRECONDITION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/opencensus/trace/Status$CanonicalCode;->m:Lio/opencensus/trace/Status$CanonicalCode;

    .line 11
    new-instance v12, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v10, "ABORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/opencensus/trace/Status$CanonicalCode;->n:Lio/opencensus/trace/Status$CanonicalCode;

    .line 12
    new-instance v10, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v8, "OUT_OF_RANGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/opencensus/trace/Status$CanonicalCode;->o:Lio/opencensus/trace/Status$CanonicalCode;

    .line 13
    new-instance v8, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v6, "UNIMPLEMENTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/opencensus/trace/Status$CanonicalCode;->p:Lio/opencensus/trace/Status$CanonicalCode;

    .line 14
    new-instance v6, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v4, "INTERNAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/trace/Status$CanonicalCode;->q:Lio/opencensus/trace/Status$CanonicalCode;

    .line 15
    new-instance v4, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v2, "UNAVAILABLE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/opencensus/trace/Status$CanonicalCode;->r:Lio/opencensus/trace/Status$CanonicalCode;

    .line 16
    new-instance v2, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v6, "DATA_LOSS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/opencensus/trace/Status$CanonicalCode;->s:Lio/opencensus/trace/Status$CanonicalCode;

    .line 17
    new-instance v6, Lio/opencensus/trace/Status$CanonicalCode;

    const-string v4, "UNAUTHENTICATED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lio/opencensus/trace/Status$CanonicalCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/trace/Status$CanonicalCode;->t:Lio/opencensus/trace/Status$CanonicalCode;

    const/16 v4, 0x11

    new-array v4, v4, [Lio/opencensus/trace/Status$CanonicalCode;

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

    .line 18
    sput-object v4, Lio/opencensus/trace/Status$CanonicalCode;->u:[Lio/opencensus/trace/Status$CanonicalCode;

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
    iput p3, p0, Lio/opencensus/trace/Status$CanonicalCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/trace/Status$CanonicalCode;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/trace/Status$CanonicalCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/Status$CanonicalCode;

    return-object p0
.end method

.method public static values()[Lio/opencensus/trace/Status$CanonicalCode;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->u:[Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, [Lio/opencensus/trace/Status$CanonicalCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/trace/Status$CanonicalCode;

    return-object v0
.end method


# virtual methods
.method public toStatus()Lio/opencensus/trace/Status;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/trace/Status;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/opencensus/trace/Status$CanonicalCode;->value:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/opencensus/trace/Status;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lio/opencensus/trace/Status$CanonicalCode;->value:I

    return v0
.end method
