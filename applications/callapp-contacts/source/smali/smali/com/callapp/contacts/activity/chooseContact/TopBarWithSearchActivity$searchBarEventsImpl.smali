.class public abstract Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "searchBarEventsImpl"
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;->b:Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;->b:Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;)V
    .locals 1

    .line 153
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    if-ne p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;->b:Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->setResult(I)V

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl;->b:Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity;->finish()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
