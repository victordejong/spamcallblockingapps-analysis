.class public final Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;
.super Lcom/callapp/contacts/widget/SwipeGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2",
        "Lcom/callapp/contacts/widget/SwipeGestureListener;",
        "onSwipeLeft",
        "",
        "velocityX",
        "",
        "onSwipeRight",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;",
            ")V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/widget/SwipeGestureListener;-><init>(ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getVideoRingtoneFragment()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(F)Z
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$onCreate$2;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getVideoRingtoneFragment()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b()V

    const/4 p1, 0x1

    return p1
.end method
