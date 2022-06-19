.class public final enum Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/inapputil/GoogleBillingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GoogleBillingListenerTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field public static final enum c:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field public static final enum d:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field public static final enum e:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field public static final enum f:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field public static final enum g:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

.field private static final synthetic h:[Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;


# instance fields
.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v1, "QUERY"

    const/4 v2, 0x0

    const-string v3, "query"

    invoke-direct {v0, v1, v2, v3}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->b:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    new-instance v1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v3, "PURCHASE"

    const/4 v4, 0x1

    const-string v5, "purchase"

    invoke-direct {v1, v3, v4, v5}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->c:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    new-instance v3, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v5, "SETUP"

    const/4 v6, 0x2

    const-string v7, "setup"

    invoke-direct {v3, v5, v6, v7}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->d:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    new-instance v5, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v7, "COMSUME"

    const/4 v8, 0x3

    const-string v9, "comsume"

    invoke-direct {v5, v7, v8, v9}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->e:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    new-instance v7, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v9, "AcKnowledgePurchase"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->f:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    new-instance v9, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const-string v11, "HISTORY"

    const/4 v12, 0x5

    const-string v13, "history"

    invoke-direct {v9, v11, v12, v13}, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->g:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->h:[Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->tag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;
    .locals 1

    const-class v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    return-object p0
.end method

.method public static values()[Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;
    .locals 1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->h:[Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    invoke-virtual {v0}, [Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    return-object v0
.end method
