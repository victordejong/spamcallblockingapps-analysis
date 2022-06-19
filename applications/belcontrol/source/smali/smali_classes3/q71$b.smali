.class public final enum Lq71$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq71$b;

.field public static final enum b:Lq71$b;

.field public static final synthetic c:[Lq71$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lq71$b;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq71$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq71$b;->a:Lq71$b;

    new-instance v1, Lq71$b;

    const-string v3, "ITELEPHONY_SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq71$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq71$b;->b:Lq71$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lq71$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lq71$b;->c:[Lq71$b;

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

.method public static valueOf(Ljava/lang/String;)Lq71$b;
    .locals 1

    const-class v0, Lq71$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$b;

    return-object p0
.end method

.method public static values()[Lq71$b;
    .locals 1

    sget-object v0, Lq71$b;->c:[Lq71$b;

    invoke-virtual {v0}, [Lq71$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$b;

    return-object v0
.end method
