.class Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2$1;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2$1;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2$1;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/identify/IdentifyContactsActivity$2;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fp:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
