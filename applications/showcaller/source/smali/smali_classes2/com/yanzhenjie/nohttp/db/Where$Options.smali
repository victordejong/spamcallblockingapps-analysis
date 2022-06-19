.class public final enum Lcom/yanzhenjie/nohttp/db/Where$Options;
.super Ljava/lang/Enum;
.source "Where.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/db/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/db/Where$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/db/Where$Options;

.field public static final enum EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

.field public static final enum IN:Lcom/yanzhenjie/nohttp/db/Where$Options;

.field public static final enum NO_EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

.field public static final enum THAN_SMALL:Lcom/yanzhenjie/nohttp/db/Where$Options;

.field public static final enum ThAN_LARGE:Lcom/yanzhenjie/nohttp/db/Where$Options;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/yanzhenjie/nohttp/db/Where$Options;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->IN:Lcom/yanzhenjie/nohttp/db/Where$Options;

    new-instance v1, Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-string v3, "EQUAL"

    const/4 v4, 0x1

    const-string v5, "="

    invoke-direct {v1, v3, v4, v5}, Lcom/yanzhenjie/nohttp/db/Where$Options;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    new-instance v3, Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-string v5, "NO_EQUAL"

    const/4 v6, 0x2

    const-string v7, "!="

    invoke-direct {v3, v5, v6, v7}, Lcom/yanzhenjie/nohttp/db/Where$Options;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/yanzhenjie/nohttp/db/Where$Options;->NO_EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    new-instance v5, Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-string v7, "ThAN_LARGE"

    const/4 v8, 0x3

    const-string v9, ">"

    invoke-direct {v5, v7, v8, v9}, Lcom/yanzhenjie/nohttp/db/Where$Options;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/yanzhenjie/nohttp/db/Where$Options;->ThAN_LARGE:Lcom/yanzhenjie/nohttp/db/Where$Options;

    new-instance v7, Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-string v9, "THAN_SMALL"

    const/4 v10, 0x4

    const-string v11, "<"

    invoke-direct {v7, v9, v10, v11}, Lcom/yanzhenjie/nohttp/db/Where$Options;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/yanzhenjie/nohttp/db/Where$Options;->THAN_SMALL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/yanzhenjie/nohttp/db/Where$Options;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/yanzhenjie/nohttp/db/Where$Options;->$VALUES:[Lcom/yanzhenjie/nohttp/db/Where$Options;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/db/Where$Options;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/db/Where$Options;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/db/Where$Options;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/db/Where$Options;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->$VALUES:[Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/db/Where$Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/db/Where$Options;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where$Options;->value:Ljava/lang/String;

    return-object v0
.end method
