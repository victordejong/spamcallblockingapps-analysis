.class public final enum Lq71$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq71$g;

.field public static final enum b:Lq71$g;

.field public static final enum c:Lq71$g;

.field public static final synthetic d:[Lq71$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lq71$g;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq71$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq71$g;->a:Lq71$g;

    new-instance v1, Lq71$g;

    const-string v3, "WHITE_LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq71$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq71$g;->b:Lq71$g;

    new-instance v3, Lq71$g;

    const-string v5, "BLACK_LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq71$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq71$g;->c:Lq71$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lq71$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lq71$g;->d:[Lq71$g;

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

.method public static valueOf(Ljava/lang/String;)Lq71$g;
    .locals 1

    const-class v0, Lq71$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$g;

    return-object p0
.end method

.method public static values()[Lq71$g;
    .locals 1

    sget-object v0, Lq71$g;->d:[Lq71$g;

    invoke-virtual {v0}, [Lq71$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$g;

    return-object v0
.end method
