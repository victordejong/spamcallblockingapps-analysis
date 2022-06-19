.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field b:I

.field c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 78
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a:J

    .line 79
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I

    .line 1184
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 80
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-void
.end method

.method public constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 93
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a:J

    .line 94
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I

    .line 95
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-void
.end method

.method static a()I
    .locals 1

    .line 162
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
