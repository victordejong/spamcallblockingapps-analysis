.class public final Lorg/xutils/http/BaseParams$BodyItemWrapper;
.super Lorg/xutils/common/util/KeyValue;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/BaseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BodyItemWrapper"
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/http/BaseParams;

.field public final contentType:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xutils/http/BaseParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->a:Lorg/xutils/http/BaseParams;

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "application/octet-stream"

    .line 4
    iput-object p1, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p4, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 6
    :goto_0
    iput-object p5, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->fileName:Ljava/lang/String;

    return-void
.end method
