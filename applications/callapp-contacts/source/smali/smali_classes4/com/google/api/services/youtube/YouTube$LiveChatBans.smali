.class public final Lcom/google/api/services/youtube/YouTube$LiveChatBans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveChatBans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$LiveChatBans$Insert;,
        Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .line 7576
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;->a:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
