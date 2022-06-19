.class public final enum Lr81$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr81$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr81$b;

.field public static final enum b:Lr81$b;

.field public static final enum c:Lr81$b;

.field public static final synthetic d:[Lr81$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr81$b;

    const-string v1, "URI_REQUEST_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr81$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr81$b;->a:Lr81$b;

    new-instance v1, Lr81$b;

    const-string v3, "URI_LOOKUP_CALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr81$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr81$b;->b:Lr81$b;

    new-instance v3, Lr81$b;

    const-string v5, "URI_LOOKUP_TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr81$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr81$b;->c:Lr81$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lr81$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr81$b;->d:[Lr81$b;

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

.method public static valueOf(Ljava/lang/String;)Lr81$b;
    .locals 1

    const-class v0, Lr81$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr81$b;

    return-object p0
.end method

.method public static values()[Lr81$b;
    .locals 1

    sget-object v0, Lr81$b;->d:[Lr81$b;

    invoke-virtual {v0}, [Lr81$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr81$b;

    return-object v0
.end method
