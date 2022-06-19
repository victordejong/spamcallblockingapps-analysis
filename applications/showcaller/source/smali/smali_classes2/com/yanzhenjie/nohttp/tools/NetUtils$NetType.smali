.class public final enum Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;
.super Ljava/lang/Enum;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/tools/NetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Mobile2G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Mobile4G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Wifi:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

.field public static final enum Wired:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v1, "Wifi"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Wifi:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v3, "Wired"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Wired:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    .line 3
    new-instance v3, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v5, "Mobile"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    .line 4
    new-instance v5, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v7, "Mobile2G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile2G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    .line 5
    new-instance v7, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v9, "Mobile3G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    .line 6
    new-instance v9, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const-string v11, "Mobile4G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile4G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->$VALUES:[Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->$VALUES:[Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    return-object v0
.end method
