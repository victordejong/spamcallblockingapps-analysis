.class public final Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveBroadcasts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Update;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Transition;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$List;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Insert;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Delete;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Control;,
        Lcom/google/api/services/youtube/YouTube$LiveBroadcasts$Bind;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .line 5595
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveBroadcasts;->a:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
