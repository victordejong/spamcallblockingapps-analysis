.class final Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:[Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/concurrent/CountDownLatch;[Z)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p2, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->c:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhotoWithoutFiringAndUpdating()V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->c:[Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    aput-boolean p2, p1, p3

    .line 191
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/cache/social/BaseSocialSyncer$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return p3
.end method
