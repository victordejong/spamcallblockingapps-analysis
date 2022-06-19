.class Lcom/callapp/contacts/activity/base/BaseCallAppAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter$1;->a:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter$1;->a:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Z)V

    .line 26
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->setLoaded(Z)V

    return-void
.end method
