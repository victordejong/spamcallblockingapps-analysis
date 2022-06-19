.class public final Lcom/google/api/services/youtube/YouTube$PlaylistItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$PlaylistItems$Update;,
        Lcom/google/api/services/youtube/YouTube$PlaylistItems$List;,
        Lcom/google/api/services/youtube/YouTube$PlaylistItems$Insert;,
        Lcom/google/api/services/youtube/YouTube$PlaylistItems$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .line 10148
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$PlaylistItems;->a:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
