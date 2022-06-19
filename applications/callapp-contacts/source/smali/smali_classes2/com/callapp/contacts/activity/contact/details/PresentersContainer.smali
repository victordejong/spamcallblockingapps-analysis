.class public interface abstract Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end method

.method public abstract addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
.end method

.method public abstract addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addContactDetailsParallaxPositionChanged(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;)V
.end method

.method public abstract addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V
.end method

.method public abstract addPauseListener(Lcom/callapp/contacts/event/listener/PauseListener;)V
.end method

.method public abstract addResumeListener(Lcom/callapp/contacts/event/listener/ResumeListener;)V
.end method

.method public abstract addThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V
.end method

.method public abstract findFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract findViewById(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation
.end method

.method public abstract finish()V
.end method

.method public abstract getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
.end method

.method public abstract getContact()Lcom/callapp/contacts/model/contact/ContactData;
.end method

.method public abstract getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
.end method

.method public abstract getDefaultContactDrawableTintColor()Ljava/lang/Integer;
.end method

.method public abstract getDefaultContactResource()Ljava/lang/Integer;
.end method

.method public abstract getDefaultContactResourceUri()Ljava/lang/String;
.end method

.method public abstract getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
.end method

.method public abstract getFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
.end method

.method public abstract getRealContext()Landroid/content/Context;
.end method

.method public abstract hasIntentExtra(Ljava/lang/String;)Z
.end method

.method public abstract isClickValid(Landroid/view/View;)Z
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract openNotificationAccsess()V
.end method

.method public abstract removeCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
.end method

.method public abstract removeThemeChangeListener(Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;)V
.end method

.method public abstract safeRunOnUIThread(Ljava/lang/Runnable;)V
.end method

.method public abstract scrollToPosition(I)V
.end method
