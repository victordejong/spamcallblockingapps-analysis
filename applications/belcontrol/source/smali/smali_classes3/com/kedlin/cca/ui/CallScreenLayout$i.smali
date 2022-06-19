.class public final enum Lcom/kedlin/cca/ui/CallScreenLayout$i;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kedlin/cca/ui/CallScreenLayout$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final enum b:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final enum c:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final enum d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final enum f:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final enum g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

.field public static final synthetic h:[Lcom/kedlin/cca/ui/CallScreenLayout$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->a:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v3, "ENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kedlin/cca/ui/CallScreenLayout$i;->b:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v3, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v5, "SWIPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kedlin/cca/ui/CallScreenLayout$i;->c:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v5, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v7, "BOUNCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kedlin/cca/ui/CallScreenLayout$i;->d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v7, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v9, "SETTLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kedlin/cca/ui/CallScreenLayout$i;->f:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    new-instance v9, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const-string v11, "COMPLETED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/kedlin/cca/ui/CallScreenLayout$i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/kedlin/cca/ui/CallScreenLayout$i;->g:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/kedlin/cca/ui/CallScreenLayout$i;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/kedlin/cca/ui/CallScreenLayout$i;->h:[Lcom/kedlin/cca/ui/CallScreenLayout$i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kedlin/cca/ui/CallScreenLayout$i;
    .locals 1

    const-class v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/CallScreenLayout$i;

    return-object p0
.end method

.method public static values()[Lcom/kedlin/cca/ui/CallScreenLayout$i;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->h:[Lcom/kedlin/cca/ui/CallScreenLayout$i;

    invoke-virtual {v0}, [Lcom/kedlin/cca/ui/CallScreenLayout$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/ui/CallScreenLayout$i;

    return-object v0
.end method
