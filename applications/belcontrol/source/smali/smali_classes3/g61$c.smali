.class public final enum Lg61$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg61$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg61$c;

.field public static final enum b:Lg61$c;

.field public static final enum c:Lg61$c;

.field public static final enum d:Lg61$c;

.field public static final enum f:Lg61$c;

.field public static final enum g:Lg61$c;

.field public static final enum h:Lg61$c;

.field public static final enum j:Lg61$c;

.field public static final synthetic k:[Lg61$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lg61$c;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg61$c;->a:Lg61$c;

    new-instance v1, Lg61$c;

    const-string v3, "DIALING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg61$c;->b:Lg61$c;

    new-instance v3, Lg61$c;

    const-string v5, "RINGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg61$c;->c:Lg61$c;

    new-instance v5, Lg61$c;

    const-string v7, "ACTIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg61$c;->d:Lg61$c;

    new-instance v7, Lg61$c;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg61$c;->f:Lg61$c;

    new-instance v9, Lg61$c;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg61$c;->g:Lg61$c;

    new-instance v11, Lg61$c;

    const-string v13, "HOLDING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg61$c;->h:Lg61$c;

    new-instance v13, Lg61$c;

    const-string v15, "SELECTING_ACCOUNT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lg61$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg61$c;->j:Lg61$c;

    const/16 v15, 0x8

    new-array v15, v15, [Lg61$c;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lg61$c;->k:[Lg61$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg61$c;
    .locals 1

    const-class v0, Lg61$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg61$c;

    return-object p0
.end method

.method public static values()[Lg61$c;
    .locals 1

    sget-object v0, Lg61$c;->k:[Lg61$c;

    invoke-virtual {v0}, [Lg61$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg61$c;

    return-object v0
.end method
