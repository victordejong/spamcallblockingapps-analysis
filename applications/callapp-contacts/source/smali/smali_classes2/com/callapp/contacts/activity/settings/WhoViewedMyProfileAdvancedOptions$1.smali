.class Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/RadioGroup;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;Ljava/util/List;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->b:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 81
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a()V

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->dismiss()V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;)Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$1;->c:Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;->a(Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions;)Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange;->b()V

    :cond_0
    return-void
.end method
