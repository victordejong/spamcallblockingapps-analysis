.class public final enum Lq71$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq71$c;

.field public static final enum b:Lq71$c;

.field public static final synthetic c:[Lq71$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq71$c;

    sget v1, Li61;->phone_filter_black:I

    const-string v2, "BLOCK_LIST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lq71$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq71$c;->a:Lq71$c;

    new-instance v1, Lq71$c;

    sget v2, Li61;->phone_filter_white:I

    const-string v4, "ALLOWED_LIST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lq71$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq71$c;->b:Lq71$c;

    const/4 v2, 0x2

    new-array v2, v2, [Lq71$c;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lq71$c;->c:[Lq71$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lq71$c;
    .locals 1

    sget-object v0, Lq71$c;->b:Lq71$c;

    return-object v0
.end method

.method public static b()Lq71$c;
    .locals 3

    sget-object v0, Lr71$a;->F:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    invoke-static {}, Lq71$c;->values()[Lq71$c;

    move-result-object v1

    if-ltz v0, :cond_1

    array-length v2, v1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v1, v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lq71$c;->a()Lq71$c;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lq71$c;)V
    .locals 1

    sget-object v0, Lr71$a;->F:Lr71$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq71$c;
    .locals 1

    const-class v0, Lq71$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$c;

    return-object p0
.end method

.method public static values()[Lq71$c;
    .locals 1

    sget-object v0, Lq71$c;->c:[Lq71$c;

    invoke-virtual {v0}, [Lq71$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$c;

    return-object v0
.end method
