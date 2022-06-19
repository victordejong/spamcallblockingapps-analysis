.class Lcom/callapp/contacts/widget/SlideMenuAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 192
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object p1

    const/4 v0, 0x1

    .line 193
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getButtonColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;->a(Z)V

    .line 196
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
