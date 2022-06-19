.class public final enum Lo6/l;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/l;",
        ">;",
        "Lcom/google/protobuf/k$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lo6/l;

.field public static final enum c:Lo6/l;

.field public static final synthetic d:[Lo6/l;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo6/l;

    const-string v1, "SESSION_VERBOSITY_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo6/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo6/l;->b:Lo6/l;

    .line 2
    new-instance v1, Lo6/l;

    const-string v3, "GAUGES_AND_SYSTEM_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lo6/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo6/l;->c:Lo6/l;

    const/4 v3, 0x2

    new-array v3, v3, [Lo6/l;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lo6/l;->d:[Lo6/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lo6/l;->a:I

    return-void
.end method

.method public static a(I)Lo6/l;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lo6/l;->c:Lo6/l;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lo6/l;->b:Lo6/l;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo6/l;
    .locals 1

    .line 1
    const-class v0, Lo6/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/l;

    return-object p0
.end method

.method public static values()[Lo6/l;
    .locals 1

    .line 1
    sget-object v0, Lo6/l;->d:[Lo6/l;

    invoke-virtual {v0}, [Lo6/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/l;

    return-object v0
.end method


# virtual methods
.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lo6/l;->a:I

    return v0
.end method
