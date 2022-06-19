.class final Lcom/facebook/login/m$2;
.super Ljava/util/HashSet;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/m;->c()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 551
    const-string/jumbo v0, "ads_management"

    invoke-virtual {p0, v0}, Lcom/facebook/login/m$2;->add(Ljava/lang/Object;)Z

    .line 552
    const-string/jumbo v0, "create_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/m$2;->add(Ljava/lang/Object;)Z

    .line 553
    const-string/jumbo v0, "rsvp_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/m$2;->add(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method
