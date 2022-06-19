.class public final Lcom/facebook/ads/redexgen/X/Lv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sc;->ABb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sc;)V
    .locals 0

    .line 43482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lv;->A00:Lcom/facebook/ads/redexgen/X/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43483
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43484
    return-void
.end method
