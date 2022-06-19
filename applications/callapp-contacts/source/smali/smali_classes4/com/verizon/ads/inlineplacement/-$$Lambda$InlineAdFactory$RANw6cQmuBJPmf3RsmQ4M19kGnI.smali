.class public final synthetic Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    invoke-static {v0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->lambda$RANw6cQmuBJPmf3RsmQ4M19kGnI(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
