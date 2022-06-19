.class Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/blocked/BlockedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockedHeaderViewHolder"
.end annotation


# instance fields
.field final synthetic s:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V
    .locals 4

    .line 131
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;->s:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    .line 132
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f060088

    .line 133
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f060026

    .line 134
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a07e3

    .line 136
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0a058a

    .line 138
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f12010c

    .line 140
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0333

    .line 141
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a078b

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a078a

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/SettingsRowSwitch;

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f120113

    .line 147
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f120112

    .line 148
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setSubTitle(Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setChecked(Z)V

    .line 150
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$1;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0791

    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0790

    .line 161
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/SettingsRowSwitch;

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f120114

    .line 163
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setTitle(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setChecked(Z)V

    .line 165
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$2;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0783

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0782

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/SettingsRowNext;

    .line 176
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f120110

    .line 177
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/widget/SettingsRowNext;->setTitle(Ljava/lang/String;)V

    .line 178
    new-instance p2, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$3;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$3;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/widget/SettingsRowNext;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
