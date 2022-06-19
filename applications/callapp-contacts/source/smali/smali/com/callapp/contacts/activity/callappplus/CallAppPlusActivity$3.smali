.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener;->onPageSelected(I)V

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity$3;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;->invalidateOptionsMenu()V

    return-void
.end method
