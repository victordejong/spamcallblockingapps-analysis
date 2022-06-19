.class public interface abstract Lio/bidmachine/nativead/NativeContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getProviderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract isViewRegistered()Z
.end method

.method public abstract registerView(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterView()V
.end method
