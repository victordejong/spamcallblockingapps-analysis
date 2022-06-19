.class final Lio/bidmachine/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/Logger$LoggerMessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(TEST MODE) "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
