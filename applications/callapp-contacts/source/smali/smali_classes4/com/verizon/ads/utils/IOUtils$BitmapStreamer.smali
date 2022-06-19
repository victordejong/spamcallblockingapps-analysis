.class public Lcom/verizon/ads/utils/IOUtils$BitmapStreamer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapStreamer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamContent(Ljava/io/InputStream;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    .line 171
    invoke-static {p1}, Lcom/verizon/ads/utils/IOUtils;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
