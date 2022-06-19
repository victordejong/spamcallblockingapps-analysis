.class public final enum Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

.field public static final enum b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

.field public static final synthetic c:[Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    const-string v1, "MIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    new-instance v1, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    const-string v3, "MAX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->c:[Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;
    .locals 1

    const-class v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    return-object p0
.end method

.method public static values()[Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->c:[Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {v0}, [Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    return-object v0
.end method
