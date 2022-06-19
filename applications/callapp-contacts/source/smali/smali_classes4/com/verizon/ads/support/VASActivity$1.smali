.class Lcom/verizon/ads/support/VASActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/support/VASActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/support/VASActivity;


# direct methods
.method constructor <init>(Lcom/verizon/ads/support/VASActivity;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/verizon/ads/support/VASActivity$1;->a:Lcom/verizon/ads/support/VASActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/verizon/ads/support/VASActivity$1;->a:Lcom/verizon/ads/support/VASActivity;

    invoke-static {p1}, Lcom/verizon/ads/support/VASActivity;->a(Lcom/verizon/ads/support/VASActivity;)V

    :cond_0
    return-void
.end method
