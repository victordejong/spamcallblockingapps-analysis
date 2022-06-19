.class Lnet/pubnative/lite/sdk/models/Ad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/models/Ad;->getContentInfo(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/models/Ad;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/Ad$1;->this$0:Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 233
    check-cast p1, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->openLayout()V

    return-void
.end method
