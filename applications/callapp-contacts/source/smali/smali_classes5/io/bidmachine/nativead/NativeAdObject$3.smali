.class final Lio/bidmachine/nativead/NativeAdObject$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/NativeAdObject;->showProgressDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeAdObject;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$3;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 472
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$3;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeAdObject;->access$100(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method
