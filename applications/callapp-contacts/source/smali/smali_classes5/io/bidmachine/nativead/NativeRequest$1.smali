.class final Lio/bidmachine/nativead/NativeRequest$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/bidmachine/MediaAssetType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/NativeRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/NativeRequest;I)V
    .locals 0

    .line 19
    iput-object p1, p0, Lio/bidmachine/nativead/NativeRequest$1;->this$0:Lio/bidmachine/nativead/NativeRequest;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    sget-object p1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$1;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
