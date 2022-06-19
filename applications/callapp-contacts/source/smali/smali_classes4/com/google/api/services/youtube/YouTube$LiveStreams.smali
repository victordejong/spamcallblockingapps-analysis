.class public final Lcom/google/api/services/youtube/YouTube$LiveStreams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveStreams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$LiveStreams$Update;,
        Lcom/google/api/services/youtube/YouTube$LiveStreams$List;,
        Lcom/google/api/services/youtube/YouTube$LiveStreams$Insert;,
        Lcom/google/api/services/youtube/YouTube$LiveStreams$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .line 8722
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveStreams;->a:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
