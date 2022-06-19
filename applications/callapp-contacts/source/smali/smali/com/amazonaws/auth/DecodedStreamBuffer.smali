.class Lcom/amazonaws/auth/DecodedStreamBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field b:[B

.field c:I

.field d:I

.field e:I

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 33
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    .line 34
    iput p1, p0, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    return-void
.end method
