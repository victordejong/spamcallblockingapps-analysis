.class public final synthetic Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;->f$0:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;->f$0:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$8$-jWbjdqUvScsWMyi8JPUI_Vs0FY;->f$1:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$8;->lambda$-jWbjdqUvScsWMyi8JPUI_Vs0FY(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V

    return-void
.end method
