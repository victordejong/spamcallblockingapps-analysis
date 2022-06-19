.class Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    return-void
.end method
