.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->onThemeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$16;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$16;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->finish()V

    return-void
.end method
