.class Lnet/pubnative/lite/sdk/HyBid$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/HyBid$1;->onInfoLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/HyBid$1;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/HyBid$1;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/pubnative/lite/sdk/HyBid$1$1;->this$0:Lnet/pubnative/lite/sdk/HyBid$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataInitialised(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lnet/pubnative/lite/sdk/HyBid$1$1;->this$0:Lnet/pubnative/lite/sdk/HyBid$1;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/HyBid$1;->val$initialisationListener:Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/pubnative/lite/sdk/HyBid$1$1;->this$0:Lnet/pubnative/lite/sdk/HyBid$1;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/HyBid$1;->val$initialisationListener:Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;->onInitialisationFinished(Z)V

    :cond_0
    return-void
.end method
