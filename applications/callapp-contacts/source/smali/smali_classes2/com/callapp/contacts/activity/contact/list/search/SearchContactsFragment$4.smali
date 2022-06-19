.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/LocationManager$LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$4;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/LocationManager$LocationResult;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
