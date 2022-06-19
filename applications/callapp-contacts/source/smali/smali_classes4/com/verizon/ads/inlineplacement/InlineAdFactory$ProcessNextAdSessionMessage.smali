.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessNextAdSessionMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;)V
    .locals 0

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    return-void
.end method
