.class final Lio/bidmachine/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/d;->initializeNetworks(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/d;


# direct methods
.method constructor <init>(Lio/bidmachine/d;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lio/bidmachine/d$7;->this$0:Lio/bidmachine/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworksInitialized()V
    .locals 1

    .line 320
    invoke-static {}, Lio/bidmachine/b;->get()Lio/bidmachine/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/b;->enable()V

    return-void
.end method
