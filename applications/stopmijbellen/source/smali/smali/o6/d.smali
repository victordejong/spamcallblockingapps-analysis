.class public final enum Lo6/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/d;",
        ">;",
        "Lcom/google/protobuf/k$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lo6/d;

.field public static final enum c:Lo6/d;

.field public static final enum d:Lo6/d;

.field public static final enum e:Lo6/d;

.field public static final synthetic f:[Lo6/d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lo6/d;

    const-string v1, "APPLICATION_PROCESS_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo6/d;->b:Lo6/d;

    .line 2
    new-instance v1, Lo6/d;

    const-string v3, "FOREGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lo6/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo6/d;->c:Lo6/d;

    .line 3
    new-instance v3, Lo6/d;

    const-string v5, "BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lo6/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lo6/d;->d:Lo6/d;

    .line 4
    new-instance v5, Lo6/d;

    const-string v7, "FOREGROUND_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lo6/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lo6/d;->e:Lo6/d;

    const/4 v7, 0x4

    new-array v7, v7, [Lo6/d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lo6/d;->f:[Lo6/d;

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
    iput p3, p0, Lo6/d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo6/d;
    .locals 1

    .line 1
    const-class v0, Lo6/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/d;

    return-object p0
.end method

.method public static values()[Lo6/d;
    .locals 1

    .line 1
    sget-object v0, Lo6/d;->f:[Lo6/d;

    invoke-virtual {v0}, [Lo6/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/d;

    return-object v0
.end method


# virtual methods
.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lo6/d;->a:I

    return v0
.end method
