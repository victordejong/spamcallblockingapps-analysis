.class Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/StaxUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MetadataExpression"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->a:Ljava/lang/String;

    .line 250
    iput p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->b:I

    .line 251
    iput-object p3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->c:Ljava/lang/String;

    return-void
.end method
