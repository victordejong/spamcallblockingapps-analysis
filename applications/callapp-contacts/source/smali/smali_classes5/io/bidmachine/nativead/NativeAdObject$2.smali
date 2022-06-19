.class final Lio/bidmachine/nativead/NativeAdObject$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    .line 454
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$2;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 462
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 463
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$2;->this$0:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {p1}, Lio/bidmachine/nativead/NativeAdObject;->access$100(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method
