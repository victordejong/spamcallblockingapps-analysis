.class final Lio/bidmachine/nativead/NativeRequest$a;
.super Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedNativeAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">.BaseUnifiedAdRequestParams;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lio/bidmachine/nativead/NativeRequest$a;->this$0:Lio/bidmachine/nativead/NativeRequest;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;-><init>(Lio/bidmachine/AdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public final containsAssetType(Lio/bidmachine/MediaAssetType;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$a;->this$0:Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p1

    return p1
.end method
