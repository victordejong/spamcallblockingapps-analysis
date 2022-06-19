.class public interface abstract Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/CheckConsentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckConsentListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;)V
.end method
