.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 16
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 17
    const-class p2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    const v0, 0x7f120383

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 18
    const-class p2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const p2, 0x7f120638

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
