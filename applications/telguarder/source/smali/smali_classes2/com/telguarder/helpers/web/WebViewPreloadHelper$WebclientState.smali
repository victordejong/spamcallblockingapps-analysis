.class public final enum Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;
.super Ljava/lang/Enum;
.source "WebViewPreloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/web/WebViewPreloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebclientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

.field public static final enum FINISHED:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

.field public static final enum LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    new-instance v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->FINISHED:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->$VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;
    .locals 1

    .line 39
    const-class v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;
    .locals 1

    .line 39
    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->$VALUES:[Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    invoke-virtual {v0}, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    return-object v0
.end method
