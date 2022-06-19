.class public Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/PauseListener;
.implements Lcom/callapp/contacts/event/listener/ResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;",
        "Lcom/google/android/gms/maps/c;",
        ">;",
        "Lcom/callapp/contacts/event/listener/PauseListener;",
        "Lcom/callapp/contacts/event/listener/ResumeListener;"
    }
.end annotation


# instance fields
.field private addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

.field private googleMap:Lcom/google/android/gms/maps/c;

.field private googleMapsCard:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;

.field private mapView:Lcom/google/android/gms/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d007f

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 54
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addResumeListener(Lcom/callapp/contacts/event/listener/ResumeListener;)V

    .line 55
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addPauseListener(Lcom/callapp/contacts/event/listener/PauseListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/google/android/gms/maps/MapView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    return-object p0
.end method

.method public static openNavigationDirections(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.navigation:q="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://maps.google.com/maps?daddr="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static openViewLocationActivity(Landroid/content/Context;DD)V
    .locals 3

    .line 116
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v0, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public synthetic lambda$onContactChanged$0$GoogleMapsCard()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMap:Lcom/google/android/gms/maps/c;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->updateCardData(Lcom/google/android/gms/maps/c;Z)V

    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$GoogleMapsCard(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMap:Lcom/google/android/gms/maps/c;

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->updateCardData(Lcom/google/android/gms/maps/c;Z)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x0

    .line 91
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    new-instance p2, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;-><init>(DDF)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 98
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMapsCard:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;

    if-eqz p2, :cond_2

    .line 99
    invoke-interface {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;->a(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    if-eqz p2, :cond_4

    .line 103
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 104
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$GoogleMapsCard$EN53z9oAjAZZ1mD5iqLiVtO1ZRs;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$GoogleMapsCard$EN53z9oAjAZZ1mD5iqLiVtO1ZRs;-><init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMapsCard:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;

    if-eqz p1, :cond_4

    .line 110
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;->a()V

    :cond_4
    return-void

    .line 85
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMapsCard:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;

    if-eqz p1, :cond_6

    .line 86
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;->a()V

    :cond_6
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;
    .locals 2

    const v0, 0x7f0a05a4

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->a()V

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 1032
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->b()V

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$GoogleMapsCard$FZ4eoRZL6HBzNA0vSkJwdNH_7yI;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$GoogleMapsCard$FZ4eoRZL6HBzNA0vSkJwdNH_7yI;-><init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->a(Lcom/google/android/gms/maps/e;)V

    .line 147
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->f()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->b()V

    :cond_0
    return-void
.end method

.method public onThemeChangedInner()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMap:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMap:Lcom/google/android/gms/maps/c;

    .line 229
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110027

    .line 228
    invoke-static {v1, v2}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMap:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    const-string v2, "[]"

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    :cond_1
    return-void
.end method

.method public setGoogleMapsCard(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->googleMapsCard:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener;

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/google/android/gms/maps/c;Z)V
    .locals 6

    if-eqz p1, :cond_3

    .line 158
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 159
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    if-eqz v0, :cond_2

    .line 164
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    iget-wide v4, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->b()V

    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->c()V

    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/k;->a()V

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->b()V

    .line 172
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110027

    .line 173
    invoke-static {v0, v2}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    .line 176
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 177
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$a;)V

    .line 193
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->addressGeoCodeLatLng:Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    iget p2, p2, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    invoke-static {v1, p2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 194
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->mapView:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/model/LatLng;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/gms/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->hideCard()V

    :cond_3
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/gms/maps/c;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->updateCardData(Lcom/google/android/gms/maps/c;Z)V

    return-void
.end method
