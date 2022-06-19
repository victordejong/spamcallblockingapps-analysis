.class final Lio/bidmachine/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/d;
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

    .line 117
    iput-object p1, p0, Lio/bidmachine/d$2;->this$0:Lio/bidmachine/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 120
    iget-object v0, p0, Lio/bidmachine/d$2;->this$0:Lio/bidmachine/d;

    iget-object v1, v0, Lio/bidmachine/d;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/d$2;->this$0:Lio/bidmachine/d;

    invoke-static {v2}, Lio/bidmachine/d;->access$000(Lio/bidmachine/d;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/d;->access$100(Lio/bidmachine/d;Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method
