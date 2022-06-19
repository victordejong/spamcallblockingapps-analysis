.class public final enum Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;
.super Ljava/lang/Enum;
.source "WebViewPreloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/web/WebViewPreloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field public static final enum DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field public static final enum RENDER_PROC_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field public static final enum RESOURCE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field public static final enum RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field public static final enum SSL_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 41
    new-instance v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-string v1, "RESOURCE_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESOURCE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    new-instance v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-string v3, "DATA_NOT_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    new-instance v3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-string v5, "RESPONSE_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RESPONSE_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    new-instance v5, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-string v7, "SSL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->SSL_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    new-instance v7, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-string v9, "RENDER_PROC_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->RENDER_PROC_ERROR:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->$VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;
    .locals 1

    .line 41
    const-class v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;
    .locals 1

    .line 41
    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->$VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    invoke-virtual {v0}, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    return-object v0
.end method
