.class public final enum Lio/objectbox/query/QueryBuilder$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/query/QueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/objectbox/query/QueryBuilder$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/objectbox/query/QueryBuilder$b;

.field public static final enum CASE_INSENSITIVE:Lio/objectbox/query/QueryBuilder$b;

.field public static final enum CASE_SENSITIVE:Lio/objectbox/query/QueryBuilder$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lio/objectbox/query/QueryBuilder$b;

    const-string v1, "CASE_INSENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/objectbox/query/QueryBuilder$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/objectbox/query/QueryBuilder$b;->CASE_INSENSITIVE:Lio/objectbox/query/QueryBuilder$b;

    .line 67
    new-instance v1, Lio/objectbox/query/QueryBuilder$b;

    const-string v3, "CASE_SENSITIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/objectbox/query/QueryBuilder$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/objectbox/query/QueryBuilder$b;->CASE_SENSITIVE:Lio/objectbox/query/QueryBuilder$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/objectbox/query/QueryBuilder$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 62
    sput-object v3, Lio/objectbox/query/QueryBuilder$b;->$VALUES:[Lio/objectbox/query/QueryBuilder$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/objectbox/query/QueryBuilder$b;
    .locals 1

    .line 62
    const-class v0, Lio/objectbox/query/QueryBuilder$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/objectbox/query/QueryBuilder$b;

    return-object p0
.end method

.method public static values()[Lio/objectbox/query/QueryBuilder$b;
    .locals 1

    .line 62
    sget-object v0, Lio/objectbox/query/QueryBuilder$b;->$VALUES:[Lio/objectbox/query/QueryBuilder$b;

    invoke-virtual {v0}, [Lio/objectbox/query/QueryBuilder$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/objectbox/query/QueryBuilder$b;

    return-object v0
.end method
