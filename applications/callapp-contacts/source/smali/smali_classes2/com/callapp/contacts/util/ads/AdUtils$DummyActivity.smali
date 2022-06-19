.class public Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyActivity"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 319
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
