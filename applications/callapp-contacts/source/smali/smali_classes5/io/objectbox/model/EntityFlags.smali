.class public final Lio/objectbox/model/EntityFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SHARED_GLOBAL_IDS:I = 0x4

.field public static final SYNC_ENABLED:I = 0x2

.field public static final USE_NO_ARG_CONSTRUCTOR:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "USE_NO_ARG_CONSTRUCTOR"

    const-string v1, "SYNC_ENABLED"

    const-string v2, ""

    const-string v3, "SHARED_GLOBAL_IDS"

    .line 46
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/objectbox/model/EntityFlags;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lio/objectbox/model/EntityFlags;->names:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method
