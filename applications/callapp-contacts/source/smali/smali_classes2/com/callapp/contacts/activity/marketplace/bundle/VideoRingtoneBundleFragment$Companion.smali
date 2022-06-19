.class public final Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u00020\u000c2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;",
        "",
        "()V",
        "EXTRA_VIDEO_DATA",
        "",
        "selectedVideoRingtoneIndex",
        "",
        "getSelectedVideoRingtoneIndex",
        "()I",
        "setSelectedVideoRingtoneIndex",
        "(I)V",
        "newInstance",
        "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;",
        "videoBundleDataList",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;",
        "Lkotlin/collections/ArrayList;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;",
            ">;)",
            "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;"
        }
    .end annotation

    const-string/jumbo v0, "videoBundleDataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_video_data"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 33
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final getSelectedVideoRingtoneIndex()I
    .locals 1

    .line 28
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->a()I

    move-result v0

    return v0
.end method

.method public final setSelectedVideoRingtoneIndex(I)V
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;->b(I)V

    return-void
.end method
