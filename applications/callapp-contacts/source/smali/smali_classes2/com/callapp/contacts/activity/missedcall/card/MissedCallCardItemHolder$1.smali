.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1$1;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
