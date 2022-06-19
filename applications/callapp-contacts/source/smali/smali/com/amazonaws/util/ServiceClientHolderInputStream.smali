.class public Lcom/amazonaws/util/ServiceClientHolderInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"


# instance fields
.field private a:Lcom/amazonaws/AmazonWebServiceClient;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    iput-object p2, p0, Lcom/amazonaws/util/ServiceClientHolderInputStream;->a:Lcom/amazonaws/AmazonWebServiceClient;

    return-void
.end method
