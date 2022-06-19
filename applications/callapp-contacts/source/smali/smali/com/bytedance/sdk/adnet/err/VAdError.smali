.class public Lcom/bytedance/sdk/adnet/err/VAdError;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CACHE_DISPATCH_FAIL_CODE:I = 0x25f

.field public static final CONNECT_FAIL_CODE:I = 0x259

.field public static final CONNECT_TIMEOUT_CODE:I = 0x25a

.field public static final DOWNLOAD_FILE_CANCEL_FAIL_CODE:I = 0x263

.field public static final DOWNLOAD_FILE_INVALID_FAIL_CODE:I = 0x262

.field public static final IMAGE_OOM_FAIL_CODE:I = 0x264

.field public static final NETWORK_DISPATCH_FAIL_CODE:I = 0x260

.field public static final NETWORK_FAIL_CODE:I = 0x25b

.field public static final PARSE_RESPONSE_CONTENT_FAIL_CODE:I = 0x25e

.field public static final PARSE_RESPONSE_FAIL_CODE:I = 0x25d

.field public static final RENAME_DOWNLOAD_FILE_FAIL_CODE:I = 0x261

.field public static final UNSUPPORT_ENCODE_FAIL_CODE:I = 0x25c


# instance fields
.field protected a:I

.field private b:J

.field public final networkResponse:Lcom/bytedance/sdk/adnet/core/i;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    .line 61
    iput p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/i;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    .line 67
    iput p2, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    .line 73
    iput p3, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    .line 79
    iput p2, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return v0
.end method

.method public getNetworkTimeMs()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->b:J

    return-wide v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->a:I

    return-void
.end method

.method public setNetworkTimeMs(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/err/VAdError;->b:J

    return-void
.end method
