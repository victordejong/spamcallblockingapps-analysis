.class Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;Ljava/util/List;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->setData(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->d(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;->e(Lcom/callapp/contacts/activity/records/FavoritesRecordsFragment;)V

    return-void
.end method
