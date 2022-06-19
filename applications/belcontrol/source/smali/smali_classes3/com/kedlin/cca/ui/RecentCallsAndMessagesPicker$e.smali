.class public final enum Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

.field public static final enum c:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

.field public static final enum d:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

.field public static final enum f:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

.field public static final synthetic g:[Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    const-string v1, "DIRECT_ENTRY"

    const/4 v2, 0x0

    const v3, 0x7f11046c

    invoke-direct {v0, v1, v2, v3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    new-instance v1, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    const-string v3, "WILDCARDS"

    const/4 v4, 0x1

    const v5, 0x7f11046f

    invoke-direct {v1, v3, v4, v5}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->c:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    new-instance v3, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    const-string v5, "RECENT_CALLS"

    const/4 v6, 0x2

    const v7, 0x7f11046d

    invoke-direct {v3, v5, v6, v7}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->d:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    new-instance v5, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    const-string v7, "RECENT_MESSAGES"

    const/4 v8, 0x3

    const v9, 0x7f11046e

    invoke-direct {v5, v7, v8, v9}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->f:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->g:[Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

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

    iput p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a:I

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;)I
    .locals 0

    iget p0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;
    .locals 1

    const-class v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    return-object p0
.end method

.method public static values()[Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->g:[Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    invoke-virtual {v0}, [Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    return-object v0
.end method
