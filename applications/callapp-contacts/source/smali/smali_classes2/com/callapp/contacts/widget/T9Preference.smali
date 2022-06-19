.class public Lcom/callapp/contacts/widget/T9Preference;
.super Lcom/callapp/contacts/widget/CallAppListPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CallAppListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/CallAppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/CallAppListPreference;->setValue(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a()V

    return-void
.end method
