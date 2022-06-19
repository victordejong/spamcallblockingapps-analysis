.class final Lio/bidmachine/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/d;->notifyInitializationFinished(Lio/bidmachine/InitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/d;

.field final synthetic val$callback:Lio/bidmachine/InitializationCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/d;Lio/bidmachine/InitializationCallback;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lio/bidmachine/d$6;->this$0:Lio/bidmachine/d;

    iput-object p2, p0, Lio/bidmachine/d$6;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 269
    iget-object v0, p0, Lio/bidmachine/d$6;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-interface {v0}, Lio/bidmachine/InitializationCallback;->onInitialized()V

    return-void
.end method
