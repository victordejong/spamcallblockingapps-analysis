.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$1:Z

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$0:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$1:Z

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->lambda$setParallaxAndStatusBarColors$0$BaseContactDetailsActivity(ZZ)V

    return-void
.end method
