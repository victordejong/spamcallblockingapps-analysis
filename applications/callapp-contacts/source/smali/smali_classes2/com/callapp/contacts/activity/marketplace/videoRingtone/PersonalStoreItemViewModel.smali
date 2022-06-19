.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;
.super Landroidx/lifecycle/aa;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u000bR\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "personalStoreItemLiveData",
        "Lio/objectbox/android/ObjectBoxLiveData;",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        "getPersonalStoreItemLiveData",
        "()Lio/objectbox/android/ObjectBoxLiveData;",
        "setPersonalStoreItemLiveData",
        "(Lio/objectbox/android/ObjectBoxLiveData;)V",
        "personalType",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;",
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
.field a:Lio/objectbox/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a/a<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/aa;-><init>()V

    return-void
.end method
