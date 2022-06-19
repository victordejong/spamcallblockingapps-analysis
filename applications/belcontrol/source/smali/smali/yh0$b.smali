.class public final enum Lyh0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyh0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lyh0$b;

.field public static final enum b:Lyh0$b;

.field public static final synthetic c:[Lyh0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyh0$b;

    const-string v1, "Meet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyh0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyh0$b;->a:Lyh0$b;

    new-instance v1, Lyh0$b;

    const-string v3, "Slice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyh0$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyh0$b;->b:Lyh0$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lyh0$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lyh0$b;->c:[Lyh0$b;

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

.method public static valueOf(Ljava/lang/String;)Lyh0$b;
    .locals 1

    const-class v0, Lyh0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyh0$b;

    return-object p0
.end method

.method public static values()[Lyh0$b;
    .locals 1

    sget-object v0, Lyh0$b;->c:[Lyh0$b;

    invoke-virtual {v0}, [Lyh0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyh0$b;

    return-object v0
.end method
