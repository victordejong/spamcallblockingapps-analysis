.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1095
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "call.app.mp4"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
