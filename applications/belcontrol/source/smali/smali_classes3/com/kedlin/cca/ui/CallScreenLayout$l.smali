.class public final enum Lcom/kedlin/cca/ui/CallScreenLayout$l;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kedlin/cca/ui/CallScreenLayout$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/kedlin/cca/ui/CallScreenLayout$l;

.field public static final enum b:Lcom/kedlin/cca/ui/CallScreenLayout$l;

.field public static final enum c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

.field public static final synthetic d:[Lcom/kedlin/cca/ui/CallScreenLayout$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kedlin/cca/ui/CallScreenLayout$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;->a:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kedlin/cca/ui/CallScreenLayout$l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$l;->b:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    new-instance v3, Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const-string v5, "SPAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kedlin/cca/ui/CallScreenLayout$l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kedlin/cca/ui/CallScreenLayout$l;->c:Lcom/kedlin/cca/ui/CallScreenLayout$l;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kedlin/cca/ui/CallScreenLayout$l;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/kedlin/cca/ui/CallScreenLayout$l;->d:[Lcom/kedlin/cca/ui/CallScreenLayout$l;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kedlin/cca/ui/CallScreenLayout$l;
    .locals 1

    const-class v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/CallScreenLayout$l;

    return-object p0
.end method

.method public static values()[Lcom/kedlin/cca/ui/CallScreenLayout$l;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$l;->d:[Lcom/kedlin/cca/ui/CallScreenLayout$l;

    invoke-virtual {v0}, [Lcom/kedlin/cca/ui/CallScreenLayout$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/ui/CallScreenLayout$l;

    return-object v0
.end method
