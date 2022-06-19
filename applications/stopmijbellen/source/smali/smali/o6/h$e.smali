.class public final enum Lo6/h$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/h$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo6/h$e;",
        ">;",
        "Lcom/google/protobuf/k$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lo6/h$e;

.field public static final enum c:Lo6/h$e;

.field public static final synthetic d:[Lo6/h$e;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo6/h$e;

    const-string v1, "NETWORK_CLIENT_ERROR_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo6/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo6/h$e;->b:Lo6/h$e;

    .line 2
    new-instance v1, Lo6/h$e;

    const-string v3, "GENERIC_CLIENT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lo6/h$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo6/h$e;->c:Lo6/h$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lo6/h$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lo6/h$e;->d:[Lo6/h$e;

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
    iput p3, p0, Lo6/h$e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo6/h$e;
    .locals 1

    .line 1
    const-class v0, Lo6/h$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo6/h$e;

    return-object p0
.end method

.method public static values()[Lo6/h$e;
    .locals 1

    .line 1
    sget-object v0, Lo6/h$e;->d:[Lo6/h$e;

    invoke-virtual {v0}, [Lo6/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo6/h$e;

    return-object v0
.end method


# virtual methods
.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lo6/h$e;->a:I

    return v0
.end method
