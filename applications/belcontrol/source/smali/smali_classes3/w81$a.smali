.class public final enum Lw81$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw81$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw81$a;

.field public static final enum b:Lw81$a;

.field public static final enum c:Lw81$a;

.field public static final synthetic d:[Lw81$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lw81$a;

    const-string v1, "COMMUNITY_ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw81$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw81$a;->a:Lw81$a;

    new-instance v1, Lw81$a;

    const-string v3, "RECENT_REPORTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw81$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw81$a;->b:Lw81$a;

    new-instance v3, Lw81$a;

    const-string v5, "USER_ACTIVITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw81$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw81$a;->c:Lw81$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lw81$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lw81$a;->d:[Lw81$a;

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

.method public static valueOf(Ljava/lang/String;)Lw81$a;
    .locals 1

    const-class v0, Lw81$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw81$a;

    return-object p0
.end method

.method public static values()[Lw81$a;
    .locals 1

    sget-object v0, Lw81$a;->d:[Lw81$a;

    invoke-virtual {v0}, [Lw81$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw81$a;

    return-object v0
.end method
